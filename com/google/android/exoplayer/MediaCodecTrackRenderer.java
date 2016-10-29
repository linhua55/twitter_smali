package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodec.CodecException;
import android.media.MediaCodec.CryptoException;
import android.media.MediaCodec.CryptoInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.TraceUtil;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

@TargetApi(16)
/* compiled from: Twttr */
public abstract class MediaCodecTrackRenderer extends SampleSourceTrackRenderer {
    private static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    protected static final int SOURCE_STATE_NOT_READY = 0;
    protected static final int SOURCE_STATE_READY = 1;
    protected static final int SOURCE_STATE_READY_READ_MAY_FAIL = 2;
    private MediaCodec codec;
    public final CodecCounters codecCounters;
    private long codecHotswapTimeMs;
    private boolean codecIsAdaptive;
    private boolean codecNeedsDiscardToSpsWorkaround;
    private boolean codecNeedsEosFlushWorkaround;
    private boolean codecNeedsEosPropagationWorkaround;
    private boolean codecNeedsFlushWorkaround;
    private boolean codecNeedsMonoChannelCountWorkaround;
    private boolean codecReceivedBuffers;
    private boolean codecReceivedEos;
    private int codecReconfigurationState;
    private boolean codecReconfigured;
    private int codecReinitializationState;
    private final List<Long> decodeOnlyPresentationTimestamps;
    private final boolean deviceNeedsAutoFrcWorkaround;
    private DrmInitData drmInitData;
    private final DrmSessionManager drmSessionManager;
    protected final Handler eventHandler;
    private final EventListener eventListener;
    private MediaFormat format;
    private final MediaFormatHolder formatHolder;
    private ByteBuffer[] inputBuffers;
    private int inputIndex;
    private boolean inputStreamEnded;
    private final MediaCodecSelector mediaCodecSelector;
    private boolean openedDrmSession;
    private final BufferInfo outputBufferInfo;
    private ByteBuffer[] outputBuffers;
    private int outputIndex;
    private boolean outputStreamEnded;
    private final boolean playClearSamplesWithoutKeys;
    private final SampleHolder sampleHolder;
    private int sourceState;
    private boolean waitingForFirstSyncFrame;
    private boolean waitingForKeys;

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.MediaCodecTrackRenderer.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ DecoderInitializationException val$e;

        AnonymousClass1(DecoderInitializationException decoderInitializationException) {
            this.val$e = decoderInitializationException;
        }

        public void run() {
            MediaCodecTrackRenderer.this.eventListener.onDecoderInitializationError(this.val$e);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.MediaCodecTrackRenderer.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ CryptoException val$e;

        AnonymousClass2(CryptoException cryptoException) {
            this.val$e = cryptoException;
        }

        public void run() {
            MediaCodecTrackRenderer.this.eventListener.onCryptoError(this.val$e);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.MediaCodecTrackRenderer.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ String val$decoderName;
        final /* synthetic */ long val$initializationDuration;
        final /* synthetic */ long val$initializedTimestamp;

        AnonymousClass3(String str, long j, long j2) {
            this.val$decoderName = str;
            this.val$initializedTimestamp = j;
            this.val$initializationDuration = j2;
        }

        public void run() {
            MediaCodecTrackRenderer.this.eventListener.onDecoderInitialized(this.val$decoderName, this.val$initializedTimestamp, this.val$initializationDuration);
        }
    }

    /* compiled from: Twttr */
    public class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final String decoderName;
        public final String diagnosticInfo;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable th, boolean z, int i) {
            super("Decoder init failed: [" + i + "], " + mediaFormat, th);
            this.mimeType = mediaFormat.mimeType;
            this.secureDecoderRequired = z;
            this.decoderName = null;
            this.diagnosticInfo = buildCustomDiagnosticInfo(i);
        }

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable th, boolean z, String str) {
            super("Decoder init failed: " + str + ", " + mediaFormat, th);
            this.mimeType = mediaFormat.mimeType;
            this.secureDecoderRequired = z;
            this.decoderName = str;
            this.diagnosticInfo = Util.SDK_INT >= 21 ? getDiagnosticInfoV21(th) : null;
        }

        @TargetApi(21)
        private static String getDiagnosticInfoV21(Throwable th) {
            if (th instanceof CodecException) {
                return ((CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        private static String buildCustomDiagnosticInfo(int i) {
            return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + (i < 0 ? "neg_" : TtmlNode.ANONYMOUS_REGION_ID) + Math.abs(i);
        }
    }

    protected abstract void configureCodec(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaCrypto mediaCrypto);

    protected abstract boolean handlesTrack(MediaCodecSelector mediaCodecSelector, MediaFormat mediaFormat) throws MediaCodecUtil$DecoderQueryException;

    protected abstract boolean processOutputBuffer(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, BufferInfo bufferInfo, int i, boolean z) throws ExoPlaybackException;

    public MediaCodecTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener) {
        SampleSource[] sampleSourceArr = new SampleSource[SOURCE_STATE_READY];
        sampleSourceArr[SOURCE_STATE_NOT_READY] = sampleSource;
        this(sampleSourceArr, mediaCodecSelector, drmSessionManager, z, handler, eventListener);
    }

    public MediaCodecTrackRenderer(SampleSource[] sampleSourceArr, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener) {
        super(sampleSourceArr);
        Assertions.checkState(Util.SDK_INT >= 16);
        this.mediaCodecSelector = (MediaCodecSelector) Assertions.checkNotNull(mediaCodecSelector);
        this.drmSessionManager = drmSessionManager;
        this.playClearSamplesWithoutKeys = z;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.deviceNeedsAutoFrcWorkaround = deviceNeedsAutoFrcWorkaround();
        this.codecCounters = new CodecCounters();
        this.sampleHolder = new SampleHolder(SOURCE_STATE_NOT_READY);
        this.formatHolder = new MediaFormatHolder();
        this.decodeOnlyPresentationTimestamps = new ArrayList();
        this.outputBufferInfo = new BufferInfo();
        this.codecReconfigurationState = SOURCE_STATE_NOT_READY;
        this.codecReinitializationState = SOURCE_STATE_NOT_READY;
    }

    protected final boolean handlesTrack(MediaFormat mediaFormat) throws MediaCodecUtil$DecoderQueryException {
        return handlesTrack(this.mediaCodecSelector, mediaFormat);
    }

    protected DecoderInfo getDecoderInfo(MediaCodecSelector mediaCodecSelector, String str, boolean z) throws MediaCodecUtil$DecoderQueryException {
        return mediaCodecSelector.getDecoderInfo(str, z);
    }

    protected final void maybeInitCodec() throws ExoPlaybackException {
        if (shouldInitCodec()) {
            boolean z;
            MediaCrypto mediaCrypto;
            DecoderInfo decoderInfo;
            String str = this.format.mimeType;
            if (this.drmInitData == null) {
                z = false;
                mediaCrypto = null;
            } else if (this.drmSessionManager == null) {
                throw new ExoPlaybackException("Media requires a DrmSessionManager");
            } else {
                if (!this.openedDrmSession) {
                    this.drmSessionManager.open(this.drmInitData);
                    this.openedDrmSession = true;
                }
                int state = this.drmSessionManager.getState();
                if (state == 0) {
                    throw new ExoPlaybackException(this.drmSessionManager.getError());
                } else if (state == 3 || state == 4) {
                    MediaCrypto mediaCrypto2 = this.drmSessionManager.getMediaCrypto();
                    z = this.drmSessionManager.requiresSecureDecoderComponent(str);
                    mediaCrypto = mediaCrypto2;
                } else {
                    return;
                }
            }
            try {
                decoderInfo = getDecoderInfo(this.mediaCodecSelector, str, z);
            } catch (Throwable e) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, e, z, -49998));
                decoderInfo = null;
            }
            if (decoderInfo == null) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, null, z, -49999));
            }
            String str2 = decoderInfo.name;
            this.codecIsAdaptive = decoderInfo.adaptive;
            this.codecNeedsDiscardToSpsWorkaround = codecNeedsDiscardToSpsWorkaround(str2, this.format);
            this.codecNeedsFlushWorkaround = codecNeedsFlushWorkaround(str2);
            this.codecNeedsEosPropagationWorkaround = codecNeedsEosPropagationWorkaround(str2);
            this.codecNeedsEosFlushWorkaround = codecNeedsEosFlushWorkaround(str2);
            this.codecNeedsMonoChannelCountWorkaround = codecNeedsMonoChannelCountWorkaround(str2, this.format);
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                TraceUtil.beginSection("createByCodecName(" + str2 + ")");
                this.codec = MediaCodec.createByCodecName(str2);
                TraceUtil.endSection();
                TraceUtil.beginSection("configureCodec");
                configureCodec(this.codec, decoderInfo.adaptive, getFrameworkMediaFormat(this.format), mediaCrypto);
                TraceUtil.endSection();
                TraceUtil.beginSection("codec.start()");
                this.codec.start();
                TraceUtil.endSection();
                long elapsedRealtime2 = SystemClock.elapsedRealtime();
                notifyDecoderInitialized(str2, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                this.inputBuffers = this.codec.getInputBuffers();
                this.outputBuffers = this.codec.getOutputBuffers();
            } catch (Throwable e2) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, e2, z, str2));
            }
            this.codecHotswapTimeMs = getState() == 3 ? SystemClock.elapsedRealtime() : -1;
            this.inputIndex = -1;
            this.outputIndex = -1;
            this.waitingForFirstSyncFrame = true;
            CodecCounters codecCounters = this.codecCounters;
            codecCounters.codecInitCount += SOURCE_STATE_READY;
        }
    }

    private void notifyAndThrowDecoderInitError(DecoderInitializationException decoderInitializationException) throws ExoPlaybackException {
        notifyDecoderInitializationError(decoderInitializationException);
        throw new ExoPlaybackException((Throwable) decoderInitializationException);
    }

    protected boolean shouldInitCodec() {
        return this.codec == null && this.format != null;
    }

    protected final boolean codecInitialized() {
        return this.codec != null;
    }

    protected final boolean haveFormat() {
        return this.format != null;
    }

    protected void onDisabled() throws ExoPlaybackException {
        this.format = null;
        this.drmInitData = null;
        try {
            releaseCodec();
            try {
                if (this.openedDrmSession) {
                    this.drmSessionManager.close();
                    this.openedDrmSession = false;
                }
                super.onDisabled();
            } catch (Throwable th) {
                super.onDisabled();
            }
        } catch (Throwable th2) {
            super.onDisabled();
        }
    }

    protected void releaseCodec() {
        if (this.codec != null) {
            this.codecHotswapTimeMs = -1;
            this.inputIndex = -1;
            this.outputIndex = -1;
            this.waitingForKeys = false;
            this.decodeOnlyPresentationTimestamps.clear();
            this.inputBuffers = null;
            this.outputBuffers = null;
            this.codecReconfigured = false;
            this.codecReceivedBuffers = false;
            this.codecIsAdaptive = false;
            this.codecNeedsDiscardToSpsWorkaround = false;
            this.codecNeedsFlushWorkaround = false;
            this.codecNeedsEosPropagationWorkaround = false;
            this.codecNeedsEosFlushWorkaround = false;
            this.codecNeedsMonoChannelCountWorkaround = false;
            this.codecReceivedEos = false;
            this.codecReconfigurationState = SOURCE_STATE_NOT_READY;
            this.codecReinitializationState = SOURCE_STATE_NOT_READY;
            CodecCounters codecCounters = this.codecCounters;
            codecCounters.codecReleaseCount += SOURCE_STATE_READY;
            try {
                this.codec.stop();
                try {
                    this.codec.release();
                } finally {
                    this.codec = null;
                }
            } catch (Throwable th) {
                this.codec.release();
            } finally {
                this.codec = null;
            }
        }
    }

    protected void onDiscontinuity(long j) throws ExoPlaybackException {
        this.sourceState = SOURCE_STATE_NOT_READY;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        if (this.codec != null) {
            flushCodec();
        }
    }

    protected void onStarted() {
    }

    protected void onStopped() {
    }

    protected void doSomeWork(long j, long j2, boolean z) throws ExoPlaybackException {
        int i = z ? this.sourceState == 0 ? SOURCE_STATE_READY : this.sourceState : SOURCE_STATE_NOT_READY;
        this.sourceState = i;
        if (this.format == null) {
            readFormat(j);
        }
        maybeInitCodec();
        if (this.codec != null) {
            TraceUtil.beginSection("drainAndFeed");
            do {
            } while (drainOutputBuffer(j, j2));
            if (feedInputBuffer(j, true)) {
                do {
                } while (feedInputBuffer(j, false));
            }
            TraceUtil.endSection();
        }
        this.codecCounters.ensureUpdated();
    }

    private void readFormat(long j) throws ExoPlaybackException {
        if (readSource(j, this.formatHolder, null) == -4) {
            onInputFormatChanged(this.formatHolder);
        }
    }

    protected void flushCodec() throws ExoPlaybackException {
        this.codecHotswapTimeMs = -1;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.waitingForFirstSyncFrame = true;
        this.waitingForKeys = false;
        this.decodeOnlyPresentationTimestamps.clear();
        if (this.codecNeedsFlushWorkaround || (this.codecNeedsEosFlushWorkaround && this.codecReceivedEos)) {
            releaseCodec();
            maybeInitCodec();
        } else if (this.codecReinitializationState != 0) {
            releaseCodec();
            maybeInitCodec();
        } else {
            this.codec.flush();
            this.codecReceivedBuffers = false;
        }
        if (this.codecReconfigured && this.format != null) {
            this.codecReconfigurationState = SOURCE_STATE_READY;
        }
    }

    private boolean feedInputBuffer(long j, boolean z) throws ExoPlaybackException {
        if (this.inputStreamEnded || this.codecReinitializationState == SOURCE_STATE_READY_READ_MAY_FAIL) {
            return false;
        }
        if (this.inputIndex < 0) {
            this.inputIndex = this.codec.dequeueInputBuffer(0);
            if (this.inputIndex < 0) {
                return false;
            }
            this.sampleHolder.data = this.inputBuffers[this.inputIndex];
            this.sampleHolder.clearData();
        }
        if (this.codecReinitializationState == SOURCE_STATE_READY) {
            if (!this.codecNeedsEosPropagationWorkaround) {
                this.codecReceivedEos = true;
                this.codec.queueInputBuffer(this.inputIndex, SOURCE_STATE_NOT_READY, SOURCE_STATE_NOT_READY, 0, 4);
                this.inputIndex = -1;
            }
            this.codecReinitializationState = SOURCE_STATE_READY_READ_MAY_FAIL;
            return false;
        }
        int i;
        if (this.waitingForKeys) {
            i = -3;
        } else {
            if (this.codecReconfigurationState == SOURCE_STATE_READY) {
                for (int i2 = SOURCE_STATE_NOT_READY; i2 < this.format.initializationData.size(); i2 += SOURCE_STATE_READY) {
                    this.sampleHolder.data.put((byte[]) this.format.initializationData.get(i2));
                }
                this.codecReconfigurationState = SOURCE_STATE_READY_READ_MAY_FAIL;
            }
            i = readSource(j, this.formatHolder, this.sampleHolder);
            if (z && this.sourceState == SOURCE_STATE_READY && i == -2) {
                this.sourceState = SOURCE_STATE_READY_READ_MAY_FAIL;
            }
        }
        if (i == -2) {
            return false;
        }
        if (i == -4) {
            if (this.codecReconfigurationState == SOURCE_STATE_READY_READ_MAY_FAIL) {
                this.sampleHolder.clearData();
                this.codecReconfigurationState = SOURCE_STATE_READY;
            }
            onInputFormatChanged(this.formatHolder);
            return true;
        } else if (i == -1) {
            if (this.codecReconfigurationState == SOURCE_STATE_READY_READ_MAY_FAIL) {
                this.sampleHolder.clearData();
                this.codecReconfigurationState = SOURCE_STATE_READY;
            }
            this.inputStreamEnded = true;
            if (this.codecReceivedBuffers) {
                try {
                    if (!this.codecNeedsEosPropagationWorkaround) {
                        this.codecReceivedEos = true;
                        this.codec.queueInputBuffer(this.inputIndex, SOURCE_STATE_NOT_READY, SOURCE_STATE_NOT_READY, 0, 4);
                        this.inputIndex = -1;
                    }
                    return false;
                } catch (Throwable e) {
                    notifyCryptoError(e);
                    throw new ExoPlaybackException(e);
                }
            }
            processEndOfStream();
            return false;
        } else {
            if (this.waitingForFirstSyncFrame) {
                if (this.sampleHolder.isSyncFrame()) {
                    this.waitingForFirstSyncFrame = false;
                } else {
                    this.sampleHolder.clearData();
                    if (this.codecReconfigurationState == SOURCE_STATE_READY_READ_MAY_FAIL) {
                        this.codecReconfigurationState = SOURCE_STATE_READY;
                    }
                    return true;
                }
            }
            boolean isEncrypted = this.sampleHolder.isEncrypted();
            this.waitingForKeys = shouldWaitForKeys(isEncrypted);
            if (this.waitingForKeys) {
                return false;
            }
            if (this.codecNeedsDiscardToSpsWorkaround && !isEncrypted) {
                NalUnitUtil.discardToSps(this.sampleHolder.data);
                if (this.sampleHolder.data.position() == 0) {
                    return true;
                }
                this.codecNeedsDiscardToSpsWorkaround = false;
            }
            try {
                int position = this.sampleHolder.data.position();
                i = position - this.sampleHolder.size;
                long j2 = this.sampleHolder.timeUs;
                if (this.sampleHolder.isDecodeOnly()) {
                    this.decodeOnlyPresentationTimestamps.add(Long.valueOf(j2));
                }
                onQueuedInputBuffer(j2, this.sampleHolder.data, position, isEncrypted);
                if (isEncrypted) {
                    this.codec.queueSecureInputBuffer(this.inputIndex, SOURCE_STATE_NOT_READY, getFrameworkCryptoInfo(this.sampleHolder, i), j2, SOURCE_STATE_NOT_READY);
                } else {
                    this.codec.queueInputBuffer(this.inputIndex, SOURCE_STATE_NOT_READY, position, j2, SOURCE_STATE_NOT_READY);
                }
                this.inputIndex = -1;
                this.codecReceivedBuffers = true;
                this.codecReconfigurationState = SOURCE_STATE_NOT_READY;
                CodecCounters codecCounters = this.codecCounters;
                codecCounters.inputBufferCount += SOURCE_STATE_READY;
                return true;
            } catch (Throwable e2) {
                notifyCryptoError(e2);
                throw new ExoPlaybackException(e2);
            }
        }
    }

    private static CryptoInfo getFrameworkCryptoInfo(SampleHolder sampleHolder, int i) {
        CryptoInfo frameworkCryptoInfoV16 = sampleHolder.cryptoInfo.getFrameworkCryptoInfoV16();
        if (i != 0) {
            if (frameworkCryptoInfoV16.numBytesOfClearData == null) {
                frameworkCryptoInfoV16.numBytesOfClearData = new int[SOURCE_STATE_READY];
            }
            int[] iArr = frameworkCryptoInfoV16.numBytesOfClearData;
            iArr[SOURCE_STATE_NOT_READY] = iArr[SOURCE_STATE_NOT_READY] + i;
        }
        return frameworkCryptoInfoV16;
    }

    private MediaFormat getFrameworkMediaFormat(MediaFormat mediaFormat) {
        MediaFormat frameworkMediaFormatV16 = mediaFormat.getFrameworkMediaFormatV16();
        if (this.deviceNeedsAutoFrcWorkaround) {
            frameworkMediaFormatV16.setInteger("auto-frc", SOURCE_STATE_NOT_READY);
        }
        return frameworkMediaFormatV16;
    }

    private boolean shouldWaitForKeys(boolean z) throws ExoPlaybackException {
        if (!this.openedDrmSession) {
            return false;
        }
        int state = this.drmSessionManager.getState();
        if (state == 0) {
            throw new ExoPlaybackException(this.drmSessionManager.getError());
        } else if (state == 4) {
            return false;
        } else {
            if (z || !this.playClearSamplesWithoutKeys) {
                return true;
            }
            return false;
        }
    }

    protected void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) throws ExoPlaybackException {
        MediaFormat mediaFormat = this.format;
        this.format = mediaFormatHolder.format;
        this.drmInitData = mediaFormatHolder.drmInitData;
        if (this.codec != null && canReconfigureCodec(this.codec, this.codecIsAdaptive, mediaFormat, this.format)) {
            this.codecReconfigured = true;
            this.codecReconfigurationState = SOURCE_STATE_READY;
        } else if (this.codecReceivedBuffers) {
            this.codecReinitializationState = SOURCE_STATE_READY;
        } else {
            releaseCodec();
            maybeInitCodec();
        }
    }

    protected void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) throws ExoPlaybackException {
    }

    protected void onOutputStreamEnded() {
    }

    protected void onQueuedInputBuffer(long j, ByteBuffer byteBuffer, int i, boolean z) {
    }

    protected void onProcessedOutputBuffer(long j) {
    }

    protected boolean canReconfigureCodec(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        return false;
    }

    protected boolean isEnded() {
        return this.outputStreamEnded;
    }

    protected boolean isReady() {
        return (this.format == null || this.waitingForKeys || (this.sourceState == 0 && this.outputIndex < 0 && !isWithinHotswapPeriod())) ? false : true;
    }

    protected final int getSourceState() {
        return this.sourceState;
    }

    private boolean isWithinHotswapPeriod() {
        return SystemClock.elapsedRealtime() < this.codecHotswapTimeMs + MAX_CODEC_HOTSWAP_TIME_MS;
    }

    protected long getDequeueOutputBufferTimeoutUs() {
        return 0;
    }

    private boolean drainOutputBuffer(long j, long j2) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return false;
        }
        if (this.outputIndex < 0) {
            this.outputIndex = this.codec.dequeueOutputBuffer(this.outputBufferInfo, getDequeueOutputBufferTimeoutUs());
        }
        if (this.outputIndex == -2) {
            processOutputFormat();
            return true;
        } else if (this.outputIndex == -3) {
            this.outputBuffers = this.codec.getOutputBuffers();
            CodecCounters codecCounters = this.codecCounters;
            codecCounters.outputBuffersChangedCount += SOURCE_STATE_READY;
            return true;
        } else if (this.outputIndex < 0) {
            if (!this.codecNeedsEosPropagationWorkaround || (!this.inputStreamEnded && this.codecReinitializationState != SOURCE_STATE_READY_READ_MAY_FAIL)) {
                return false;
            }
            processEndOfStream();
            return true;
        } else if ((this.outputBufferInfo.flags & 4) != 0) {
            processEndOfStream();
            return false;
        } else {
            int decodeOnlyIndex = getDecodeOnlyIndex(this.outputBufferInfo.presentationTimeUs);
            if (!processOutputBuffer(j, j2, this.codec, this.outputBuffers[this.outputIndex], this.outputBufferInfo, this.outputIndex, decodeOnlyIndex != -1)) {
                return false;
            }
            onProcessedOutputBuffer(this.outputBufferInfo.presentationTimeUs);
            if (decodeOnlyIndex != -1) {
                this.decodeOnlyPresentationTimestamps.remove(decodeOnlyIndex);
            }
            this.outputIndex = -1;
            return true;
        }
    }

    private void processOutputFormat() throws ExoPlaybackException {
        MediaFormat outputFormat = this.codec.getOutputFormat();
        if (this.codecNeedsMonoChannelCountWorkaround) {
            outputFormat.setInteger("channel-count", SOURCE_STATE_READY);
        }
        onOutputFormatChanged(this.codec, outputFormat);
        CodecCounters codecCounters = this.codecCounters;
        codecCounters.outputFormatChangedCount += SOURCE_STATE_READY;
    }

    private void processEndOfStream() throws ExoPlaybackException {
        if (this.codecReinitializationState == SOURCE_STATE_READY_READ_MAY_FAIL) {
            releaseCodec();
            maybeInitCodec();
            return;
        }
        this.outputStreamEnded = true;
        onOutputStreamEnded();
    }

    private void notifyDecoderInitializationError(DecoderInitializationException decoderInitializationException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass1(decoderInitializationException));
        }
    }

    private void notifyCryptoError(CryptoException cryptoException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass2(cryptoException));
        }
    }

    private void notifyDecoderInitialized(String str, long j, long j2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass3(str, j, j2));
        }
    }

    private int getDecodeOnlyIndex(long j) {
        int size = this.decodeOnlyPresentationTimestamps.size();
        for (int i = SOURCE_STATE_NOT_READY; i < size; i += SOURCE_STATE_READY) {
            if (((Long) this.decodeOnlyPresentationTimestamps.get(i)).longValue() == j) {
                return i;
            }
        }
        return -1;
    }

    private static boolean codecNeedsFlushWorkaround(String str) {
        return Util.SDK_INT < 18 || ((Util.SDK_INT == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (Util.SDK_INT == 19 && Util.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str))));
    }

    private static boolean codecNeedsDiscardToSpsWorkaround(String str, MediaFormat mediaFormat) {
        return Util.SDK_INT < 21 && mediaFormat.initializationData.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private static boolean codecNeedsEosPropagationWorkaround(String str) {
        return Util.SDK_INT <= 17 && ("OMX.rk.video_decoder.avc".equals(str) || "OMX.allwinner.video.decoder.avc".equals(str));
    }

    private static boolean codecNeedsEosFlushWorkaround(String str) {
        return Util.SDK_INT <= 23 && "OMX.google.vorbis.decoder".equals(str);
    }

    private static boolean codecNeedsMonoChannelCountWorkaround(String str, MediaFormat mediaFormat) {
        return Util.SDK_INT <= 18 && mediaFormat.channelCount == SOURCE_STATE_READY && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private static boolean deviceNeedsAutoFrcWorkaround() {
        return Util.SDK_INT <= 22 && "foster".equals(Util.DEVICE) && "NVIDIA".equals(Util.MANUFACTURER);
    }
}
