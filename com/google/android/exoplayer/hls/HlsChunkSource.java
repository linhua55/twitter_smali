package com.google.android.exoplayer.hls;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer.BehindLiveWindowException;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.DataChunk;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.Format.DecreasingBandwidthComparator;
import com.google.android.exoplayer.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer.extractor.ts.AdtsExtractor;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.extractor.ts.TsExtractor;
import com.google.android.exoplayer.hls.HlsMediaPlaylist.Segment;
import com.google.android.exoplayer.hls.HlsTrackSelector.Output;
import com.google.android.exoplayer.upstream.BandwidthMeter;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.upstream.HttpDataSource.InvalidResponseCodeException;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.UriUtil;
import com.google.android.exoplayer.util.Util;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* compiled from: Twttr */
public class HlsChunkSource implements Output {
    private static final String AAC_FILE_EXTENSION = ".aac";
    public static final int ADAPTIVE_MODE_ABRUPT = 3;
    public static final int ADAPTIVE_MODE_NONE = 0;
    public static final int ADAPTIVE_MODE_SPLICE = 1;
    private static final float BANDWIDTH_FRACTION = 0.8f;
    public static final long DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS = 20000;
    public static final long DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS = 5000;
    public static final long DEFAULT_PLAYLIST_BLACKLIST_MS = 60000;
    private static final String MP3_FILE_EXTENSION = ".mp3";
    private static final String TAG = "HlsChunkSource";
    private static final String VTT_FILE_EXTENSION = ".vtt";
    private static final String WEBVTT_FILE_EXTENSION = ".webvtt";
    private final int adaptiveMode;
    private final BandwidthMeter bandwidthMeter;
    private final String baseUri;
    private final DataSource dataSource;
    private long durationUs;
    private byte[] encryptionIv;
    private String encryptionIvString;
    private byte[] encryptionKey;
    private Uri encryptionKeyUri;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private IOException fatalError;
    private final boolean isMaster;
    private boolean live;
    private final HlsMasterPlaylist masterPlaylist;
    private final long maxBufferDurationToSwitchDownUs;
    private final long minBufferDurationToSwitchUpUs;
    private final HlsPlaylistParser playlistParser;
    private boolean prepareCalled;
    private byte[] scratchSpace;
    private int selectedTrackIndex;
    private int selectedVariantIndex;
    private final PtsTimestampAdjusterProvider timestampAdjusterProvider;
    private final HlsTrackSelector trackSelector;
    private final ArrayList<ExposedTrack> tracks;
    private long[] variantBlacklistTimes;
    private long[] variantLastPlaylistLoadTimesMs;
    private HlsMediaPlaylist[] variantPlaylists;
    private Variant[] variants;

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.hls.HlsChunkSource.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ byte[] val$rawResponse;

        AnonymousClass1(byte[] bArr) {
            this.val$rawResponse = bArr;
        }

        public void run() {
            HlsChunkSource.this.eventListener.onMediaPlaylistLoadCompleted(this.val$rawResponse);
        }
    }

    /* compiled from: Twttr */
    final class EncryptionKeyChunk extends DataChunk {
        public final String iv;
        private byte[] result;
        public final int variantIndex;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, byte[] bArr, String str, int i) {
            super(dataSource, dataSpec, HlsChunkSource.ADAPTIVE_MODE_ABRUPT, HlsChunkSource.ADAPTIVE_MODE_NONE, null, -1, bArr);
            this.iv = str;
            this.variantIndex = i;
        }

        protected void consume(byte[] bArr, int i) throws IOException {
            this.result = Arrays.copyOf(bArr, i);
        }

        public byte[] getResult() {
            return this.result;
        }
    }

    /* compiled from: Twttr */
    public interface EventListener {
        void onMediaPlaylistLoadCompleted(byte[] bArr);
    }

    /* compiled from: Twttr */
    final class ExposedTrack {
        private final int adaptiveMaxHeight;
        private final int adaptiveMaxWidth;
        private final int defaultVariantIndex;
        private final Variant[] variants;

        public ExposedTrack(Variant variant) {
            Variant[] variantArr = new Variant[HlsChunkSource.ADAPTIVE_MODE_SPLICE];
            variantArr[HlsChunkSource.ADAPTIVE_MODE_NONE] = variant;
            this.variants = variantArr;
            this.defaultVariantIndex = HlsChunkSource.ADAPTIVE_MODE_NONE;
            this.adaptiveMaxWidth = -1;
            this.adaptiveMaxHeight = -1;
        }

        public ExposedTrack(Variant[] variantArr, int i, int i2, int i3) {
            this.variants = variantArr;
            this.defaultVariantIndex = i;
            this.adaptiveMaxWidth = i2;
            this.adaptiveMaxHeight = i3;
        }
    }

    /* compiled from: Twttr */
    final class MediaPlaylistChunk extends DataChunk {
        private final HlsPlaylistParser playlistParser;
        private final String playlistUrl;
        private byte[] rawResponse;
        private HlsMediaPlaylist result;
        public final int variantIndex;

        public MediaPlaylistChunk(DataSource dataSource, DataSpec dataSpec, byte[] bArr, HlsPlaylistParser hlsPlaylistParser, int i, String str) {
            super(dataSource, dataSpec, 4, HlsChunkSource.ADAPTIVE_MODE_NONE, null, -1, bArr);
            this.variantIndex = i;
            this.playlistParser = hlsPlaylistParser;
            this.playlistUrl = str;
        }

        protected void consume(byte[] bArr, int i) throws IOException {
            this.rawResponse = Arrays.copyOf(bArr, i);
            this.result = (HlsMediaPlaylist) this.playlistParser.parse(this.playlistUrl, new ByteArrayInputStream(this.rawResponse));
        }

        public byte[] getRawResponse() {
            return this.rawResponse;
        }

        public HlsMediaPlaylist getResult() {
            return this.result;
        }
    }

    public HlsChunkSource(boolean z, DataSource dataSource, HlsPlaylist hlsPlaylist, HlsTrackSelector hlsTrackSelector, BandwidthMeter bandwidthMeter, PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider, int i) {
        this(z, dataSource, hlsPlaylist, hlsTrackSelector, bandwidthMeter, ptsTimestampAdjusterProvider, i, DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS, DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS, null, null);
    }

    public HlsChunkSource(boolean z, DataSource dataSource, HlsPlaylist hlsPlaylist, HlsTrackSelector hlsTrackSelector, BandwidthMeter bandwidthMeter, PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider, int i, long j, long j2) {
        this(z, dataSource, hlsPlaylist, hlsTrackSelector, bandwidthMeter, ptsTimestampAdjusterProvider, i, j, j2, null, null);
    }

    public HlsChunkSource(boolean z, DataSource dataSource, HlsPlaylist hlsPlaylist, HlsTrackSelector hlsTrackSelector, BandwidthMeter bandwidthMeter, PtsTimestampAdjusterProvider ptsTimestampAdjusterProvider, int i, long j, long j2, Handler handler, EventListener eventListener) {
        this.isMaster = z;
        this.dataSource = dataSource;
        this.trackSelector = hlsTrackSelector;
        this.bandwidthMeter = bandwidthMeter;
        this.timestampAdjusterProvider = ptsTimestampAdjusterProvider;
        this.adaptiveMode = i;
        this.eventListener = eventListener;
        this.eventHandler = handler;
        this.minBufferDurationToSwitchUpUs = 1000 * j;
        this.maxBufferDurationToSwitchDownUs = 1000 * j2;
        this.baseUri = hlsPlaylist.baseUri;
        this.playlistParser = new HlsPlaylistParser();
        this.tracks = new ArrayList();
        if (hlsPlaylist.type == 0) {
            this.masterPlaylist = (HlsMasterPlaylist) hlsPlaylist;
            return;
        }
        Format format = new Format("0", MimeTypes.APPLICATION_M3U8, -1, -1, -1.0f, -1, -1, -1, null, null);
        List arrayList = new ArrayList();
        arrayList.add(new Variant(this.baseUri, format));
        this.masterPlaylist = new HlsMasterPlaylist(this.baseUri, arrayList, Collections.emptyList(), Collections.emptyList(), null, null);
    }

    public void maybeThrowError() throws IOException {
        if (this.fatalError != null) {
            throw this.fatalError;
        }
    }

    public boolean prepare() {
        if (!this.prepareCalled) {
            this.prepareCalled = true;
            try {
                this.trackSelector.selectTracks(this.masterPlaylist, this);
                selectTrack(ADAPTIVE_MODE_NONE);
            } catch (IOException e) {
                this.fatalError = e;
            }
        }
        if (this.fatalError == null) {
            return true;
        }
        return false;
    }

    public boolean isLive() {
        return this.live;
    }

    public long getDurationUs() {
        return this.durationUs;
    }

    public int getTrackCount() {
        return this.tracks.size();
    }

    public Variant getFixedTrackVariant(int i) {
        Variant[] access$000 = ((ExposedTrack) this.tracks.get(i)).variants;
        return access$000.length == ADAPTIVE_MODE_SPLICE ? access$000[ADAPTIVE_MODE_NONE] : null;
    }

    public String getMuxedAudioLanguage() {
        return this.masterPlaylist.muxedAudioLanguage;
    }

    public String getMuxedCaptionLanguage() {
        return this.masterPlaylist.muxedCaptionLanguage;
    }

    public int getSelectedTrackIndex() {
        return this.selectedTrackIndex;
    }

    public void selectTrack(int i) {
        this.selectedTrackIndex = i;
        ExposedTrack exposedTrack = (ExposedTrack) this.tracks.get(this.selectedTrackIndex);
        this.selectedVariantIndex = exposedTrack.defaultVariantIndex;
        this.variants = exposedTrack.variants;
        this.variantPlaylists = new HlsMediaPlaylist[this.variants.length];
        this.variantLastPlaylistLoadTimesMs = new long[this.variants.length];
        this.variantBlacklistTimes = new long[this.variants.length];
    }

    public void seek() {
        if (this.isMaster) {
            this.timestampAdjusterProvider.reset();
        }
    }

    public void reset() {
        this.fatalError = null;
    }

    public void getChunkOperation(TsChunk tsChunk, long j, ChunkOperationHolder chunkOperationHolder) {
        int i;
        boolean z;
        if (this.adaptiveMode == 0) {
            i = this.selectedVariantIndex;
            z = false;
        } else {
            int nextVariantIndex = getNextVariantIndex(tsChunk, j);
            boolean z2 = (tsChunk == null || this.variants[nextVariantIndex].format.equals(tsChunk.format) || this.adaptiveMode != ADAPTIVE_MODE_SPLICE) ? false : true;
            z = z2;
            i = nextVariantIndex;
        }
        HlsMediaPlaylist hlsMediaPlaylist = this.variantPlaylists[i];
        if (hlsMediaPlaylist == null) {
            chunkOperationHolder.chunk = newMediaPlaylistChunk(i);
            return;
        }
        int liveStartChunkMediaSequence;
        this.selectedVariantIndex = i;
        if (this.live) {
            if (tsChunk == null) {
                liveStartChunkMediaSequence = getLiveStartChunkMediaSequence(i);
            } else {
                nextVariantIndex = z ? tsChunk.chunkIndex : tsChunk.chunkIndex + ADAPTIVE_MODE_SPLICE;
                if (nextVariantIndex < hlsMediaPlaylist.mediaSequence) {
                    this.fatalError = new BehindLiveWindowException();
                    return;
                }
                liveStartChunkMediaSequence = nextVariantIndex;
            }
        } else if (tsChunk == null) {
            liveStartChunkMediaSequence = Util.binarySearchFloor(hlsMediaPlaylist.segments, Long.valueOf(j), true, true) + hlsMediaPlaylist.mediaSequence;
        } else {
            liveStartChunkMediaSequence = z ? tsChunk.chunkIndex : tsChunk.chunkIndex + ADAPTIVE_MODE_SPLICE;
        }
        nextVariantIndex = liveStartChunkMediaSequence - hlsMediaPlaylist.mediaSequence;
        if (nextVariantIndex < hlsMediaPlaylist.segments.size()) {
            long j2;
            HlsExtractorWrapper hlsExtractorWrapper;
            Segment segment = (Segment) hlsMediaPlaylist.segments.get(nextVariantIndex);
            Uri resolveToUri = UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segment.url);
            if (segment.isEncrypted) {
                Uri resolveToUri2 = UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segment.encryptionKeyUri);
                if (!resolveToUri2.equals(this.encryptionKeyUri)) {
                    chunkOperationHolder.chunk = newEncryptionKeyChunk(resolveToUri2, segment.encryptionIV, this.selectedVariantIndex);
                    return;
                } else if (!Util.areEqual(segment.encryptionIV, this.encryptionIvString)) {
                    setEncryptionData(resolveToUri2, segment.encryptionIV, this.encryptionKey);
                }
            } else {
                clearEncryptionData();
            }
            DataSpec dataSpec = new DataSpec(resolveToUri, segment.byterangeOffset, segment.byterangeLength, null);
            if (!this.live) {
                j2 = segment.startTimeUs;
            } else if (tsChunk == null) {
                j2 = 0;
            } else if (z) {
                j2 = tsChunk.startTimeUs;
            } else {
                j2 = tsChunk.endTimeUs;
            }
            long j3 = j2 + ((long) (segment.durationSecs * 1000000.0d));
            Format format = this.variants[this.selectedVariantIndex].format;
            String lastPathSegment = resolveToUri.getLastPathSegment();
            if (lastPathSegment.endsWith(AAC_FILE_EXTENSION)) {
                hlsExtractorWrapper = new HlsExtractorWrapper(ADAPTIVE_MODE_NONE, format, j2, new AdtsExtractor(j2), z, -1, -1);
            } else if (lastPathSegment.endsWith(MP3_FILE_EXTENSION)) {
                hlsExtractorWrapper = new HlsExtractorWrapper(ADAPTIVE_MODE_NONE, format, j2, new Mp3Extractor(j2), z, -1, -1);
            } else if (lastPathSegment.endsWith(WEBVTT_FILE_EXTENSION) || lastPathSegment.endsWith(VTT_FILE_EXTENSION)) {
                PtsTimestampAdjuster adjuster = this.timestampAdjusterProvider.getAdjuster(this.isMaster, segment.discontinuitySequenceNumber, j2);
                if (adjuster != null) {
                    hlsExtractorWrapper = new HlsExtractorWrapper(ADAPTIVE_MODE_NONE, format, j2, new WebvttExtractor(adjuster), z, -1, -1);
                } else {
                    return;
                }
            } else if (tsChunk != null && tsChunk.discontinuitySequenceNumber == segment.discontinuitySequenceNumber && format.equals(tsChunk.format)) {
                hlsExtractorWrapper = tsChunk.extractorWrapper;
            } else {
                PtsTimestampAdjuster adjuster2 = this.timestampAdjusterProvider.getAdjuster(this.isMaster, segment.discontinuitySequenceNumber, j2);
                if (adjuster2 != null) {
                    nextVariantIndex = ADAPTIVE_MODE_NONE;
                    String str = format.codecs;
                    if (!TextUtils.isEmpty(str)) {
                        if (MimeTypes.getAudioMediaMimeType(str) != MimeTypes.AUDIO_AAC) {
                            nextVariantIndex = 2;
                        }
                        if (MimeTypes.getVideoMediaMimeType(str) != MimeTypes.VIDEO_H264) {
                            nextVariantIndex |= 4;
                        }
                    }
                    ExposedTrack exposedTrack = (ExposedTrack) this.tracks.get(this.selectedTrackIndex);
                    hlsExtractorWrapper = new HlsExtractorWrapper(ADAPTIVE_MODE_NONE, format, j2, new TsExtractor(adjuster2, nextVariantIndex), z, exposedTrack.adaptiveMaxWidth, exposedTrack.adaptiveMaxHeight);
                } else {
                    return;
                }
            }
            chunkOperationHolder.chunk = new TsChunk(this.dataSource, dataSpec, ADAPTIVE_MODE_NONE, format, j2, j3, liveStartChunkMediaSequence, segment.discontinuitySequenceNumber, hlsExtractorWrapper, this.encryptionKey, this.encryptionIv);
        } else if (!hlsMediaPlaylist.live) {
            chunkOperationHolder.endOfStream = true;
        } else if (shouldRerequestLiveMediaPlaylist(i)) {
            chunkOperationHolder.chunk = newMediaPlaylistChunk(i);
        }
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof MediaPlaylistChunk) {
            MediaPlaylistChunk mediaPlaylistChunk = (MediaPlaylistChunk) chunk;
            this.scratchSpace = mediaPlaylistChunk.getDataHolder();
            setMediaPlaylist(mediaPlaylistChunk.variantIndex, mediaPlaylistChunk.getResult());
            if (this.eventHandler != null && this.eventListener != null) {
                this.eventHandler.post(new AnonymousClass1(mediaPlaylistChunk.getRawResponse()));
            }
        } else if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            setEncryptionData(encryptionKeyChunk.dataSpec.uri, encryptionKeyChunk.iv, encryptionKeyChunk.getResult());
        }
    }

    public boolean onChunkLoadError(Chunk chunk, IOException iOException) {
        if (chunk.bytesLoaded() != 0) {
            return false;
        }
        if ((!(chunk instanceof TsChunk) && !(chunk instanceof MediaPlaylistChunk) && !(chunk instanceof EncryptionKeyChunk)) || !(iOException instanceof InvalidResponseCodeException)) {
            return false;
        }
        int i = ((InvalidResponseCodeException) iOException).responseCode;
        if (i != 404 && i != 410) {
            return false;
        }
        int variantIndex;
        boolean z;
        if (chunk instanceof TsChunk) {
            variantIndex = getVariantIndex(((TsChunk) chunk).format);
        } else if (chunk instanceof MediaPlaylistChunk) {
            variantIndex = ((MediaPlaylistChunk) chunk).variantIndex;
        } else {
            variantIndex = ((EncryptionKeyChunk) chunk).variantIndex;
        }
        if (this.variantBlacklistTimes[variantIndex] != 0) {
            z = ADAPTIVE_MODE_SPLICE;
        } else {
            z = false;
        }
        this.variantBlacklistTimes[variantIndex] = SystemClock.elapsedRealtime();
        if (z) {
            Log.w(TAG, "Already blacklisted variant (" + i + "): " + chunk.dataSpec.uri);
            return false;
        } else if (allVariantsBlacklisted()) {
            Log.w(TAG, "Final variant not blacklisted (" + i + "): " + chunk.dataSpec.uri);
            this.variantBlacklistTimes[variantIndex] = 0;
            return false;
        } else {
            Log.w(TAG, "Blacklisted variant (" + i + "): " + chunk.dataSpec.uri);
            return true;
        }
    }

    public void adaptiveTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant[] variantArr) {
        int i = -1;
        Arrays.sort(variantArr, new Comparator<Variant>() {
            private final Comparator<Format> formatComparator;

            {
                this.formatComparator = new DecreasingBandwidthComparator();
            }

            public int compare(Variant variant, Variant variant2) {
                return this.formatComparator.compare(variant.format, variant2.format);
            }
        });
        int computeDefaultVariantIndex = computeDefaultVariantIndex(hlsMasterPlaylist, variantArr, this.bandwidthMeter);
        int i2 = -1;
        for (int i3 = ADAPTIVE_MODE_NONE; i3 < variantArr.length; i3 += ADAPTIVE_MODE_SPLICE) {
            Format format = variantArr[i3].format;
            i2 = Math.max(format.width, i2);
            i = Math.max(format.height, i);
        }
        if (i2 <= 0) {
            i2 = 1920;
        }
        if (i <= 0) {
            i = 1080;
        }
        this.tracks.add(new ExposedTrack(variantArr, computeDefaultVariantIndex, i2, i));
    }

    public void fixedTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant variant) {
        this.tracks.add(new ExposedTrack(variant));
    }

    protected int computeDefaultVariantIndex(HlsMasterPlaylist hlsMasterPlaylist, Variant[] variantArr, BandwidthMeter bandwidthMeter) {
        int i = ADAPTIVE_MODE_NONE;
        int i2 = Integer.MAX_VALUE;
        int i3 = ADAPTIVE_MODE_NONE;
        while (i < variantArr.length) {
            int indexOf = hlsMasterPlaylist.variants.indexOf(variantArr[i]);
            if (indexOf < i2) {
                i2 = indexOf;
                i3 = i;
            }
            i += ADAPTIVE_MODE_SPLICE;
        }
        return i3;
    }

    private int getNextVariantIndex(TsChunk tsChunk, long j) {
        clearStaleBlacklistedVariants();
        long bitrateEstimate = this.bandwidthMeter.getBitrateEstimate();
        if (this.variantBlacklistTimes[this.selectedVariantIndex] != 0) {
            return getVariantIndexForBandwidth(bitrateEstimate);
        }
        if (tsChunk == null) {
            return this.selectedVariantIndex;
        }
        if (bitrateEstimate == -1) {
            return this.selectedVariantIndex;
        }
        int variantIndexForBandwidth = getVariantIndexForBandwidth(bitrateEstimate);
        if (variantIndexForBandwidth == this.selectedVariantIndex) {
            return this.selectedVariantIndex;
        }
        bitrateEstimate = (this.adaptiveMode == ADAPTIVE_MODE_SPLICE ? tsChunk.startTimeUs : tsChunk.endTimeUs) - j;
        if (this.variantBlacklistTimes[this.selectedVariantIndex] != 0 || ((variantIndexForBandwidth > this.selectedVariantIndex && bitrateEstimate < this.maxBufferDurationToSwitchDownUs) || (variantIndexForBandwidth < this.selectedVariantIndex && bitrateEstimate > this.minBufferDurationToSwitchUpUs))) {
            return variantIndexForBandwidth;
        }
        return this.selectedVariantIndex;
    }

    private int getVariantIndexForBandwidth(long j) {
        boolean z = false;
        if (j == -1) {
            j = 0;
        }
        int i = (int) (((float) j) * BANDWIDTH_FRACTION);
        int i2 = -1;
        for (int i3 = ADAPTIVE_MODE_NONE; i3 < this.variants.length; i3 += ADAPTIVE_MODE_SPLICE) {
            if (this.variantBlacklistTimes[i3] == 0) {
                if (this.variants[i3].format.bitrate <= i) {
                    return i3;
                }
                i2 = i3;
            }
        }
        if (i2 != -1) {
            z = true;
        }
        Assertions.checkState(z);
        return i2;
    }

    private boolean shouldRerequestLiveMediaPlaylist(int i) {
        return SystemClock.elapsedRealtime() - this.variantLastPlaylistLoadTimesMs[i] >= ((long) ((this.variantPlaylists[i].targetDurationSecs * ExoPlayerImplInternal.MSG_SEEK_COMPLETE) / 2));
    }

    private int getLiveStartChunkMediaSequence(int i) {
        HlsMediaPlaylist hlsMediaPlaylist = this.variantPlaylists[i];
        return (hlsMediaPlaylist.segments.size() > ADAPTIVE_MODE_ABRUPT ? hlsMediaPlaylist.segments.size() - 3 : ADAPTIVE_MODE_NONE) + hlsMediaPlaylist.mediaSequence;
    }

    private MediaPlaylistChunk newMediaPlaylistChunk(int i) {
        Uri resolveToUri = UriUtil.resolveToUri(this.baseUri, this.variants[i].url);
        return new MediaPlaylistChunk(this.dataSource, new DataSpec(resolveToUri, 0, -1, null, ADAPTIVE_MODE_SPLICE), this.scratchSpace, this.playlistParser, i, resolveToUri.toString());
    }

    private EncryptionKeyChunk newEncryptionKeyChunk(Uri uri, String str, int i) {
        return new EncryptionKeyChunk(this.dataSource, new DataSpec(uri, 0, -1, null, ADAPTIVE_MODE_SPLICE), this.scratchSpace, str, i);
    }

    private void setEncryptionData(Uri uri, String str, byte[] bArr) {
        String substring;
        if (str.toLowerCase(Locale.getDefault()).startsWith("0x")) {
            substring = str.substring(2);
        } else {
            substring = str;
        }
        Object toByteArray = new BigInteger(substring, 16).toByteArray();
        Object obj = new byte[16];
        int length = toByteArray.length > 16 ? toByteArray.length - 16 : ADAPTIVE_MODE_NONE;
        System.arraycopy(toByteArray, length, obj, (obj.length - toByteArray.length) + length, toByteArray.length - length);
        this.encryptionKeyUri = uri;
        this.encryptionKey = bArr;
        this.encryptionIvString = str;
        this.encryptionIv = obj;
    }

    private void clearEncryptionData() {
        this.encryptionKeyUri = null;
        this.encryptionKey = null;
        this.encryptionIvString = null;
        this.encryptionIv = null;
    }

    private void setMediaPlaylist(int i, HlsMediaPlaylist hlsMediaPlaylist) {
        this.variantLastPlaylistLoadTimesMs[i] = SystemClock.elapsedRealtime();
        this.variantPlaylists[i] = hlsMediaPlaylist;
        this.live |= hlsMediaPlaylist.live;
        this.durationUs = this.live ? -1 : hlsMediaPlaylist.durationUs;
    }

    private boolean allVariantsBlacklisted() {
        for (int i = ADAPTIVE_MODE_NONE; i < this.variantBlacklistTimes.length; i += ADAPTIVE_MODE_SPLICE) {
            if (this.variantBlacklistTimes[i] == 0) {
                return false;
            }
        }
        return true;
    }

    private void clearStaleBlacklistedVariants() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = ADAPTIVE_MODE_NONE;
        while (i < this.variantBlacklistTimes.length) {
            if (this.variantBlacklistTimes[i] != 0 && elapsedRealtime - this.variantBlacklistTimes[i] > DEFAULT_PLAYLIST_BLACKLIST_MS) {
                this.variantBlacklistTimes[i] = 0;
            }
            i += ADAPTIVE_MODE_SPLICE;
        }
    }

    private int getVariantIndex(Format format) {
        for (int i = ADAPTIVE_MODE_NONE; i < this.variants.length; i += ADAPTIVE_MODE_SPLICE) {
            if (this.variants[i].format.equals(format)) {
                return i;
            }
        }
        throw new IllegalStateException("Invalid format: " + format);
    }
}
