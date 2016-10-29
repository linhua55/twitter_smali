package com.google.android.exoplayer.dash;

import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.exoplayer.BehindLiveWindowException;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.TimeRange;
import com.google.android.exoplayer.TimeRange.DynamicTimeRange;
import com.google.android.exoplayer.TimeRange.StaticTimeRange;
import com.google.android.exoplayer.chunk.Chunk;
import com.google.android.exoplayer.chunk.ChunkExtractorWrapper;
import com.google.android.exoplayer.chunk.ChunkOperationHolder;
import com.google.android.exoplayer.chunk.ChunkSource;
import com.google.android.exoplayer.chunk.ContainerMediaChunk;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.chunk.Format.DecreasingBandwidthComparator;
import com.google.android.exoplayer.chunk.FormatEvaluator;
import com.google.android.exoplayer.chunk.FormatEvaluator.Evaluation;
import com.google.android.exoplayer.chunk.InitializationChunk;
import com.google.android.exoplayer.chunk.MediaChunk;
import com.google.android.exoplayer.chunk.SingleSampleMediaChunk;
import com.google.android.exoplayer.dash.DashTrackSelector.Output;
import com.google.android.exoplayer.dash.mpd.AdaptationSet;
import com.google.android.exoplayer.dash.mpd.ContentProtection;
import com.google.android.exoplayer.dash.mpd.MediaPresentationDescription;
import com.google.android.exoplayer.dash.mpd.Period;
import com.google.android.exoplayer.dash.mpd.RangedUri;
import com.google.android.exoplayer.dash.mpd.Representation;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.drm.DrmInitData.Mapped;
import com.google.android.exoplayer.extractor.ChunkIndex;
import com.google.android.exoplayer.extractor.mp4.FragmentedMp4Extractor;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.google.android.exoplayer.extractor.webm.WebmExtractor;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.upstream.DataSource;
import com.google.android.exoplayer.upstream.DataSpec;
import com.google.android.exoplayer.util.Clock;
import com.google.android.exoplayer.util.ManifestFetcher;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.SystemClock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* compiled from: Twttr */
public class DashChunkSource implements ChunkSource, Output {
    private static final String TAG = "DashChunkSource";
    private final FormatEvaluator adaptiveFormatEvaluator;
    private TimeRange availableRange;
    private final long[] availableRangeValues;
    private MediaPresentationDescription currentManifest;
    private final DataSource dataSource;
    private final long elapsedRealtimeOffsetUs;
    private ExposedTrack enabledTrack;
    private final Evaluation evaluation;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private IOException fatalError;
    private boolean lastChunkWasInitialization;
    private final boolean live;
    private final long liveEdgeLatencyUs;
    private final ManifestFetcher<MediaPresentationDescription> manifestFetcher;
    private int nextPeriodHolderIndex;
    private final SparseArray<PeriodHolder> periodHolders;
    private boolean prepareCalled;
    private MediaPresentationDescription processedManifest;
    private boolean startAtLiveEdge;
    private final Clock systemClock;
    private final DashTrackSelector trackSelector;
    private final ArrayList<ExposedTrack> tracks;

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.dash.DashChunkSource.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ TimeRange val$seekRange;

        AnonymousClass1(TimeRange timeRange) {
            this.val$seekRange = timeRange;
        }

        public void run() {
            DashChunkSource.this.eventListener.onAvailableRangeChanged(DashChunkSource.this.eventSourceId, this.val$seekRange);
        }
    }

    /* compiled from: Twttr */
    public interface EventListener {
        void onAvailableRangeChanged(int i, TimeRange timeRange);
    }

    /* compiled from: Twttr */
    public final class ExposedTrack {
        private final int adaptationSetIndex;
        private final Format[] adaptiveFormats;
        public final int adaptiveMaxHeight;
        public final int adaptiveMaxWidth;
        private final Format fixedFormat;
        public final MediaFormat trackFormat;

        public ExposedTrack(MediaFormat mediaFormat, int i, Format format) {
            this.trackFormat = mediaFormat;
            this.adaptationSetIndex = i;
            this.fixedFormat = format;
            this.adaptiveFormats = null;
            this.adaptiveMaxWidth = -1;
            this.adaptiveMaxHeight = -1;
        }

        public ExposedTrack(MediaFormat mediaFormat, int i, Format[] formatArr, int i2, int i3) {
            this.trackFormat = mediaFormat;
            this.adaptationSetIndex = i;
            this.adaptiveFormats = formatArr;
            this.adaptiveMaxWidth = i2;
            this.adaptiveMaxHeight = i3;
            this.fixedFormat = null;
        }

        public boolean isAdaptive() {
            return this.adaptiveFormats != null;
        }
    }

    /* compiled from: Twttr */
    public class NoAdaptationSetException extends IOException {
        public NoAdaptationSetException(String str) {
            super(str);
        }
    }

    /* compiled from: Twttr */
    public final class PeriodHolder {
        private long availableEndTimeUs;
        private long availableStartTimeUs;
        private DrmInitData drmInitData;
        private boolean indexIsExplicit;
        private boolean indexIsUnbounded;
        public final int localIndex;
        public final HashMap<String, RepresentationHolder> representationHolders;
        private final int[] representationIndices;
        public final long startTimeUs;

        public PeriodHolder(int i, MediaPresentationDescription mediaPresentationDescription, int i2, ExposedTrack exposedTrack) {
            int i3;
            this.localIndex = i;
            Period period = mediaPresentationDescription.getPeriod(i2);
            long periodDurationUs = getPeriodDurationUs(mediaPresentationDescription, i2);
            AdaptationSet adaptationSet = (AdaptationSet) period.adaptationSets.get(exposedTrack.adaptationSetIndex);
            List list = adaptationSet.representations;
            this.startTimeUs = period.startMs * 1000;
            this.drmInitData = getDrmInitData(adaptationSet);
            if (exposedTrack.isAdaptive()) {
                this.representationIndices = new int[exposedTrack.adaptiveFormats.length];
                for (i3 = 0; i3 < exposedTrack.adaptiveFormats.length; i3++) {
                    this.representationIndices[i3] = getRepresentationIndex(list, exposedTrack.adaptiveFormats[i3].id);
                }
            } else {
                this.representationIndices = new int[]{getRepresentationIndex(list, exposedTrack.fixedFormat.id)};
            }
            this.representationHolders = new HashMap();
            for (int i4 : this.representationIndices) {
                Representation representation = (Representation) list.get(i4);
                this.representationHolders.put(representation.format.id, new RepresentationHolder(this.startTimeUs, periodDurationUs, representation));
            }
            updateRepresentationIndependentProperties(periodDurationUs, (Representation) list.get(this.representationIndices[0]));
        }

        public void updatePeriod(MediaPresentationDescription mediaPresentationDescription, int i, ExposedTrack exposedTrack) throws BehindLiveWindowException {
            Period period = mediaPresentationDescription.getPeriod(i);
            long periodDurationUs = getPeriodDurationUs(mediaPresentationDescription, i);
            List list = ((AdaptationSet) period.adaptationSets.get(exposedTrack.adaptationSetIndex)).representations;
            for (int i2 : this.representationIndices) {
                Representation representation = (Representation) list.get(i2);
                ((RepresentationHolder) this.representationHolders.get(representation.format.id)).updateRepresentation(periodDurationUs, representation);
            }
            updateRepresentationIndependentProperties(periodDurationUs, (Representation) list.get(this.representationIndices[0]));
        }

        public long getAvailableStartTimeUs() {
            return this.availableStartTimeUs;
        }

        public long getAvailableEndTimeUs() {
            if (!isIndexUnbounded()) {
                return this.availableEndTimeUs;
            }
            throw new IllegalStateException("Period has unbounded index");
        }

        public boolean isIndexUnbounded() {
            return this.indexIsUnbounded;
        }

        public boolean isIndexExplicit() {
            return this.indexIsExplicit;
        }

        public DrmInitData getDrmInitData() {
            return this.drmInitData;
        }

        private void updateRepresentationIndependentProperties(long j, Representation representation) {
            boolean z = true;
            DashSegmentIndex index = representation.getIndex();
            if (index != null) {
                int firstSegmentNum = index.getFirstSegmentNum();
                int lastSegmentNum = index.getLastSegmentNum(j);
                if (lastSegmentNum != -1) {
                    z = false;
                }
                this.indexIsUnbounded = z;
                this.indexIsExplicit = index.isExplicit();
                this.availableStartTimeUs = this.startTimeUs + index.getTimeUs(firstSegmentNum);
                if (!this.indexIsUnbounded) {
                    this.availableEndTimeUs = (this.startTimeUs + index.getTimeUs(lastSegmentNum)) + index.getDurationUs(lastSegmentNum, j);
                    return;
                }
                return;
            }
            this.indexIsUnbounded = false;
            this.indexIsExplicit = true;
            this.availableStartTimeUs = this.startTimeUs;
            this.availableEndTimeUs = this.startTimeUs + j;
        }

        private static int getRepresentationIndex(List<Representation> list, String str) {
            for (int i = 0; i < list.size(); i++) {
                if (str.equals(((Representation) list.get(i)).format.id)) {
                    return i;
                }
            }
            throw new IllegalStateException("Missing format id: " + str);
        }

        private static DrmInitData getDrmInitData(AdaptationSet adaptationSet) {
            DrmInitData drmInitData = null;
            if (!adaptationSet.contentProtections.isEmpty()) {
                for (int i = 0; i < adaptationSet.contentProtections.size(); i++) {
                    ContentProtection contentProtection = (ContentProtection) adaptationSet.contentProtections.get(i);
                    if (!(contentProtection.uuid == null || contentProtection.data == null)) {
                        if (drmInitData == null) {
                            drmInitData = new Mapped();
                        }
                        drmInitData.put(contentProtection.uuid, contentProtection.data);
                    }
                }
            }
            return drmInitData;
        }

        private static long getPeriodDurationUs(MediaPresentationDescription mediaPresentationDescription, int i) {
            long periodDuration = mediaPresentationDescription.getPeriodDuration(i);
            if (periodDuration == -1) {
                return -1;
            }
            return 1000 * periodDuration;
        }
    }

    /* compiled from: Twttr */
    public final class RepresentationHolder {
        public final ChunkExtractorWrapper extractorWrapper;
        public MediaFormat mediaFormat;
        public final boolean mimeTypeIsRawText;
        private long periodDurationUs;
        private final long periodStartTimeUs;
        public Representation representation;
        public DashSegmentIndex segmentIndex;
        private int segmentNumShift;

        public RepresentationHolder(long j, long j2, Representation representation) {
            ChunkExtractorWrapper chunkExtractorWrapper;
            this.periodStartTimeUs = j;
            this.periodDurationUs = j2;
            this.representation = representation;
            String str = representation.format.mimeType;
            this.mimeTypeIsRawText = DashChunkSource.mimeTypeIsRawText(str);
            if (this.mimeTypeIsRawText) {
                chunkExtractorWrapper = null;
            } else {
                chunkExtractorWrapper = new ChunkExtractorWrapper(DashChunkSource.mimeTypeIsWebm(str) ? new WebmExtractor() : new FragmentedMp4Extractor());
            }
            this.extractorWrapper = chunkExtractorWrapper;
            this.segmentIndex = representation.getIndex();
        }

        public void updateRepresentation(long j, Representation representation) throws BehindLiveWindowException {
            DashSegmentIndex index = this.representation.getIndex();
            DashSegmentIndex index2 = representation.getIndex();
            this.periodDurationUs = j;
            this.representation = representation;
            if (index != null) {
                this.segmentIndex = index2;
                if (index.isExplicit()) {
                    int lastSegmentNum = index.getLastSegmentNum(this.periodDurationUs);
                    long durationUs = index.getDurationUs(lastSegmentNum, this.periodDurationUs) + index.getTimeUs(lastSegmentNum);
                    int firstSegmentNum = index2.getFirstSegmentNum();
                    long timeUs = index2.getTimeUs(firstSegmentNum);
                    if (durationUs == timeUs) {
                        this.segmentNumShift = ((index.getLastSegmentNum(this.periodDurationUs) + 1) - firstSegmentNum) + this.segmentNumShift;
                    } else if (durationUs < timeUs) {
                        throw new BehindLiveWindowException();
                    } else {
                        this.segmentNumShift = (index.getSegmentNum(timeUs, this.periodDurationUs) - firstSegmentNum) + this.segmentNumShift;
                    }
                }
            }
        }

        public int getSegmentNum(long j) {
            return this.segmentIndex.getSegmentNum(j - this.periodStartTimeUs, this.periodDurationUs) + this.segmentNumShift;
        }

        public long getSegmentStartTimeUs(int i) {
            return this.segmentIndex.getTimeUs(i - this.segmentNumShift) + this.periodStartTimeUs;
        }

        public long getSegmentEndTimeUs(int i) {
            return getSegmentStartTimeUs(i) + this.segmentIndex.getDurationUs(i - this.segmentNumShift, this.periodDurationUs);
        }

        public int getLastSegmentNum() {
            return this.segmentIndex.getLastSegmentNum(this.periodDurationUs);
        }

        public boolean isBeyondLastSegment(int i) {
            int lastSegmentNum = getLastSegmentNum();
            if (lastSegmentNum != -1 && i > lastSegmentNum + this.segmentNumShift) {
                return true;
            }
            return false;
        }

        public int getFirstAvailableSegmentNum() {
            return this.segmentIndex.getFirstSegmentNum() + this.segmentNumShift;
        }

        public RangedUri getSegmentUrl(int i) {
            return this.segmentIndex.getSegmentUrl(i - this.segmentNumShift);
        }
    }

    public DashChunkSource(DashTrackSelector dashTrackSelector, DataSource dataSource, FormatEvaluator formatEvaluator, long j, int i, Representation... representationArr) {
        this(dashTrackSelector, dataSource, formatEvaluator, j, i, Arrays.asList(representationArr));
    }

    public DashChunkSource(DashTrackSelector dashTrackSelector, DataSource dataSource, FormatEvaluator formatEvaluator, long j, int i, List<Representation> list) {
        this(buildManifest(j, i, list), dashTrackSelector, dataSource, formatEvaluator);
    }

    public DashChunkSource(MediaPresentationDescription mediaPresentationDescription, DashTrackSelector dashTrackSelector, DataSource dataSource, FormatEvaluator formatEvaluator) {
        this(null, mediaPresentationDescription, dashTrackSelector, dataSource, formatEvaluator, new SystemClock(), 0, 0, false, null, null, 0);
    }

    public DashChunkSource(ManifestFetcher<MediaPresentationDescription> manifestFetcher, DashTrackSelector dashTrackSelector, DataSource dataSource, FormatEvaluator formatEvaluator, long j, long j2, Handler handler, EventListener eventListener, int i) {
        this(manifestFetcher, (MediaPresentationDescription) manifestFetcher.getManifest(), dashTrackSelector, dataSource, formatEvaluator, new SystemClock(), j * 1000, j2 * 1000, true, handler, eventListener, i);
    }

    public DashChunkSource(ManifestFetcher<MediaPresentationDescription> manifestFetcher, DashTrackSelector dashTrackSelector, DataSource dataSource, FormatEvaluator formatEvaluator, long j, long j2, boolean z, Handler handler, EventListener eventListener, int i) {
        this(manifestFetcher, (MediaPresentationDescription) manifestFetcher.getManifest(), dashTrackSelector, dataSource, formatEvaluator, new SystemClock(), j * 1000, j2 * 1000, z, handler, eventListener, i);
    }

    DashChunkSource(ManifestFetcher<MediaPresentationDescription> manifestFetcher, MediaPresentationDescription mediaPresentationDescription, DashTrackSelector dashTrackSelector, DataSource dataSource, FormatEvaluator formatEvaluator, Clock clock, long j, long j2, boolean z, Handler handler, EventListener eventListener, int i) {
        this.manifestFetcher = manifestFetcher;
        this.currentManifest = mediaPresentationDescription;
        this.trackSelector = dashTrackSelector;
        this.dataSource = dataSource;
        this.adaptiveFormatEvaluator = formatEvaluator;
        this.systemClock = clock;
        this.liveEdgeLatencyUs = j;
        this.elapsedRealtimeOffsetUs = j2;
        this.startAtLiveEdge = z;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.eventSourceId = i;
        this.evaluation = new Evaluation();
        this.availableRangeValues = new long[2];
        this.periodHolders = new SparseArray();
        this.tracks = new ArrayList();
        this.live = mediaPresentationDescription.dynamic;
    }

    public void maybeThrowError() throws IOException {
        if (this.fatalError != null) {
            throw this.fatalError;
        } else if (this.manifestFetcher != null) {
            this.manifestFetcher.maybeThrowError();
        }
    }

    public boolean prepare() {
        if (!this.prepareCalled) {
            this.prepareCalled = true;
            try {
                this.trackSelector.selectTracks(this.currentManifest, 0, this);
            } catch (IOException e) {
                this.fatalError = e;
            }
        }
        if (this.fatalError == null) {
            return true;
        }
        return false;
    }

    public int getTrackCount() {
        return this.tracks.size();
    }

    public final MediaFormat getFormat(int i) {
        return ((ExposedTrack) this.tracks.get(i)).trackFormat;
    }

    public void enable(int i) {
        this.enabledTrack = (ExposedTrack) this.tracks.get(i);
        if (this.enabledTrack.isAdaptive()) {
            this.adaptiveFormatEvaluator.enable();
        }
        if (this.manifestFetcher != null) {
            this.manifestFetcher.enable();
            processManifest((MediaPresentationDescription) this.manifestFetcher.getManifest());
            return;
        }
        processManifest(this.currentManifest);
    }

    public void continueBuffering(long j) {
        if (this.manifestFetcher != null && this.currentManifest.dynamic && this.fatalError == null) {
            MediaPresentationDescription mediaPresentationDescription = (MediaPresentationDescription) this.manifestFetcher.getManifest();
            if (!(mediaPresentationDescription == null || mediaPresentationDescription == this.processedManifest)) {
                processManifest(mediaPresentationDescription);
                this.processedManifest = mediaPresentationDescription;
            }
            long j2 = this.currentManifest.minUpdatePeriod;
            if (j2 == 0) {
                j2 = HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS;
            }
            if (android.os.SystemClock.elapsedRealtime() > j2 + this.manifestFetcher.getManifestLoadStartTimestamp()) {
                this.manifestFetcher.requestRefresh();
            }
        }
    }

    public final void getChunkOperation(List<? extends MediaChunk> list, long j, ChunkOperationHolder chunkOperationHolder) {
        if (this.fatalError != null) {
            chunkOperationHolder.chunk = null;
            return;
        }
        this.evaluation.queueSize = list.size();
        if (this.evaluation.format == null || !this.lastChunkWasInitialization) {
            if (this.enabledTrack.isAdaptive()) {
                this.adaptiveFormatEvaluator.evaluate(list, j, this.enabledTrack.adaptiveFormats, this.evaluation);
            } else {
                this.evaluation.format = this.enabledTrack.fixedFormat;
                this.evaluation.trigger = 2;
            }
        }
        Format format = this.evaluation.format;
        chunkOperationHolder.queueSize = this.evaluation.queueSize;
        if (format == null) {
            chunkOperationHolder.chunk = null;
        } else if (chunkOperationHolder.queueSize != list.size() || chunkOperationHolder.chunk == null || !chunkOperationHolder.chunk.format.equals(format)) {
            PeriodHolder findPeriodHolder;
            Object obj;
            chunkOperationHolder.chunk = null;
            this.availableRange.getCurrentBoundsUs(this.availableRangeValues);
            if (list.isEmpty()) {
                if (this.live) {
                    if (this.startAtLiveEdge) {
                        j = Math.max(this.availableRangeValues[0], this.availableRangeValues[1] - this.liveEdgeLatencyUs);
                    } else {
                        j = Math.max(Math.min(j, this.availableRangeValues[1] - 1), this.availableRangeValues[0]);
                    }
                }
                findPeriodHolder = findPeriodHolder(j);
                obj = 1;
            } else {
                if (this.startAtLiveEdge) {
                    this.startAtLiveEdge = false;
                }
                MediaChunk mediaChunk = (MediaChunk) list.get(chunkOperationHolder.queueSize - 1);
                long j2 = mediaChunk.endTimeUs;
                if (this.live && j2 < this.availableRangeValues[0]) {
                    this.fatalError = new BehindLiveWindowException();
                    return;
                } else if (!this.currentManifest.dynamic || j2 < this.availableRangeValues[1]) {
                    PeriodHolder periodHolder = (PeriodHolder) this.periodHolders.valueAt(this.periodHolders.size() - 1);
                    if (mediaChunk.parentId != periodHolder.localIndex || !((RepresentationHolder) periodHolder.representationHolders.get(mediaChunk.format.id)).isBeyondLastSegment(mediaChunk.getNextChunkIndex())) {
                        periodHolder = (PeriodHolder) this.periodHolders.get(mediaChunk.parentId);
                        int i;
                        if (periodHolder == null) {
                            findPeriodHolder = (PeriodHolder) this.periodHolders.valueAt(0);
                            i = 1;
                        } else if (periodHolder.isIndexUnbounded() || !((RepresentationHolder) periodHolder.representationHolders.get(mediaChunk.format.id)).isBeyondLastSegment(mediaChunk.getNextChunkIndex())) {
                            findPeriodHolder = periodHolder;
                            obj = null;
                        } else {
                            findPeriodHolder = (PeriodHolder) this.periodHolders.get(mediaChunk.parentId + 1);
                            i = 1;
                        }
                    } else if (!this.currentManifest.dynamic) {
                        chunkOperationHolder.endOfStream = true;
                        return;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            RepresentationHolder representationHolder = (RepresentationHolder) findPeriodHolder.representationHolders.get(format.id);
            Representation representation = representationHolder.representation;
            RangedUri rangedUri = null;
            RangedUri rangedUri2 = null;
            MediaFormat mediaFormat = representationHolder.mediaFormat;
            if (mediaFormat == null) {
                rangedUri = representation.getInitializationUri();
            }
            if (representationHolder.segmentIndex == null) {
                rangedUri2 = representation.getIndexUri();
            }
            Chunk newMediaChunk;
            if (rangedUri == null && rangedUri2 == null) {
                int segmentNum = list.isEmpty() ? representationHolder.getSegmentNum(j) : obj != null ? representationHolder.getFirstAvailableSegmentNum() : ((MediaChunk) list.get(chunkOperationHolder.queueSize - 1)).getNextChunkIndex();
                newMediaChunk = newMediaChunk(findPeriodHolder, representationHolder, this.dataSource, mediaFormat, this.enabledTrack, segmentNum, this.evaluation.trigger);
                this.lastChunkWasInitialization = false;
                chunkOperationHolder.chunk = newMediaChunk;
                return;
            }
            newMediaChunk = newInitializationChunk(rangedUri, rangedUri2, representation, representationHolder.extractorWrapper, this.dataSource, findPeriodHolder.localIndex, this.evaluation.trigger);
            this.lastChunkWasInitialization = true;
            chunkOperationHolder.chunk = newMediaChunk;
        }
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof InitializationChunk) {
            InitializationChunk initializationChunk = (InitializationChunk) chunk;
            String str = initializationChunk.format.id;
            PeriodHolder periodHolder = (PeriodHolder) this.periodHolders.get(initializationChunk.parentId);
            if (periodHolder != null) {
                RepresentationHolder representationHolder = (RepresentationHolder) periodHolder.representationHolders.get(str);
                if (initializationChunk.hasFormat()) {
                    representationHolder.mediaFormat = initializationChunk.getFormat();
                }
                if (representationHolder.segmentIndex == null && initializationChunk.hasSeekMap()) {
                    representationHolder.segmentIndex = new DashWrappingSegmentIndex((ChunkIndex) initializationChunk.getSeekMap(), initializationChunk.dataSpec.uri.toString());
                }
                if (periodHolder.drmInitData == null && initializationChunk.hasDrmInitData()) {
                    periodHolder.drmInitData = initializationChunk.getDrmInitData();
                }
            }
        }
    }

    public void onChunkLoadError(Chunk chunk, Exception exception) {
    }

    public void disable(List<? extends MediaChunk> list) {
        if (this.enabledTrack.isAdaptive()) {
            this.adaptiveFormatEvaluator.disable();
        }
        if (this.manifestFetcher != null) {
            this.manifestFetcher.disable();
        }
        this.periodHolders.clear();
        this.evaluation.format = null;
        this.availableRange = null;
        this.fatalError = null;
        this.enabledTrack = null;
    }

    public void adaptiveTrack(MediaPresentationDescription mediaPresentationDescription, int i, int i2, int[] iArr) {
        if (this.adaptiveFormatEvaluator == null) {
            Log.w(TAG, "Skipping adaptive track (missing format evaluator)");
            return;
        }
        AdaptationSet adaptationSet = (AdaptationSet) mediaPresentationDescription.getPeriod(i).adaptationSets.get(i2);
        int i3 = 0;
        int i4 = 0;
        Format format = null;
        Format[] formatArr = new Format[iArr.length];
        int i5 = 0;
        while (i5 < formatArr.length) {
            Format format2;
            Format format3 = ((Representation) adaptationSet.representations.get(iArr[i5])).format;
            if (format == null || format3.height > i4) {
                format2 = format3;
            } else {
                format2 = format;
            }
            i3 = Math.max(i3, format3.width);
            i4 = Math.max(i4, format3.height);
            formatArr[i5] = format3;
            i5++;
            format = format2;
        }
        Arrays.sort(formatArr, new DecreasingBandwidthComparator());
        long j = this.live ? -1 : mediaPresentationDescription.duration * 1000;
        String mediaMimeType = getMediaMimeType(format);
        if (mediaMimeType == null) {
            Log.w(TAG, "Skipped adaptive track (unknown media mime type)");
            return;
        }
        MediaFormat trackFormat = getTrackFormat(adaptationSet.type, format, mediaMimeType, j);
        if (trackFormat == null) {
            Log.w(TAG, "Skipped adaptive track (unknown media format)");
        } else {
            this.tracks.add(new ExposedTrack(trackFormat.copyAsAdaptive(null), i2, formatArr, i3, i4));
        }
    }

    public void fixedTrack(MediaPresentationDescription mediaPresentationDescription, int i, int i2, int i3) {
        AdaptationSet adaptationSet = (AdaptationSet) mediaPresentationDescription.getPeriod(i).adaptationSets.get(i2);
        Format format = ((Representation) adaptationSet.representations.get(i3)).format;
        String mediaMimeType = getMediaMimeType(format);
        if (mediaMimeType == null) {
            Log.w(TAG, "Skipped track " + format.id + " (unknown media mime type)");
            return;
        }
        MediaFormat trackFormat = getTrackFormat(adaptationSet.type, format, mediaMimeType, mediaPresentationDescription.dynamic ? -1 : mediaPresentationDescription.duration * 1000);
        if (trackFormat == null) {
            Log.w(TAG, "Skipped track " + format.id + " (unknown media format)");
        } else {
            this.tracks.add(new ExposedTrack(trackFormat, i2, format));
        }
    }

    TimeRange getAvailableRange() {
        return this.availableRange;
    }

    private static MediaPresentationDescription buildManifest(long j, int i, List<Representation> list) {
        return new MediaPresentationDescription(-1, j, -1, false, -1, -1, null, null, Collections.singletonList(new Period(null, 0, Collections.singletonList(new AdaptationSet(0, i, list)))));
    }

    private static MediaFormat getTrackFormat(int i, Format format, String str, long j) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return MediaFormat.createVideoFormat(format.id, str, format.bitrate, -1, j, format.width, format.height, null);
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return MediaFormat.createAudioFormat(format.id, str, format.bitrate, -1, j, format.audioChannels, format.audioSamplingRate, null, format.language);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return MediaFormat.createTextFormat(format.id, str, format.bitrate, j, format.language);
            default:
                return null;
        }
    }

    private static String getMediaMimeType(Format format) {
        String str = format.mimeType;
        if (MimeTypes.isAudio(str)) {
            return MimeTypes.getAudioMediaMimeType(format.codecs);
        }
        if (MimeTypes.isVideo(str)) {
            return MimeTypes.getVideoMediaMimeType(format.codecs);
        }
        if (mimeTypeIsRawText(str)) {
            return str;
        }
        if (MimeTypes.APPLICATION_MP4.equals(str)) {
            if ("stpp".equals(format.codecs)) {
                return MimeTypes.APPLICATION_TTML;
            }
            if ("wvtt".equals(format.codecs)) {
                return MimeTypes.APPLICATION_MP4VTT;
            }
        }
        return null;
    }

    static boolean mimeTypeIsWebm(String str) {
        return str.startsWith(MimeTypes.VIDEO_WEBM) || str.startsWith(MimeTypes.AUDIO_WEBM) || str.startsWith(MimeTypes.APPLICATION_WEBM);
    }

    static boolean mimeTypeIsRawText(String str) {
        return MimeTypes.TEXT_VTT.equals(str) || MimeTypes.APPLICATION_TTML.equals(str);
    }

    private Chunk newInitializationChunk(RangedUri rangedUri, RangedUri rangedUri2, Representation representation, ChunkExtractorWrapper chunkExtractorWrapper, DataSource dataSource, int i, int i2) {
        if (rangedUri != null) {
            rangedUri2 = rangedUri.attemptMerge(rangedUri2);
            if (rangedUri2 != null) {
                rangedUri = rangedUri2;
            }
        } else {
            rangedUri = rangedUri2;
        }
        return new InitializationChunk(dataSource, new DataSpec(rangedUri.getUri(), rangedUri.start, rangedUri.length, representation.getCacheKey()), i2, representation.format, chunkExtractorWrapper, i);
    }

    protected Chunk newMediaChunk(PeriodHolder periodHolder, RepresentationHolder representationHolder, DataSource dataSource, MediaFormat mediaFormat, ExposedTrack exposedTrack, int i, int i2) {
        Representation representation = representationHolder.representation;
        Format format = representation.format;
        long segmentStartTimeUs = representationHolder.getSegmentStartTimeUs(i);
        long segmentEndTimeUs = representationHolder.getSegmentEndTimeUs(i);
        RangedUri segmentUrl = representationHolder.getSegmentUrl(i);
        DataSpec dataSpec = new DataSpec(segmentUrl.getUri(), segmentUrl.start, segmentUrl.length, representation.getCacheKey());
        long j = periodHolder.startTimeUs - representation.presentationTimeOffsetUs;
        if (mimeTypeIsRawText(format.mimeType)) {
            return new SingleSampleMediaChunk(dataSource, dataSpec, 1, format, segmentStartTimeUs, segmentEndTimeUs, i, exposedTrack.trackFormat, null, periodHolder.localIndex);
        }
        return new ContainerMediaChunk(dataSource, dataSpec, i2, format, segmentStartTimeUs, segmentEndTimeUs, i, j, representationHolder.extractorWrapper, mediaFormat, exposedTrack.adaptiveMaxWidth, exposedTrack.adaptiveMaxHeight, periodHolder.drmInitData, mediaFormat != null, periodHolder.localIndex);
    }

    private long getNowUnixTimeUs() {
        if (this.elapsedRealtimeOffsetUs != 0) {
            return (this.systemClock.elapsedRealtime() * 1000) + this.elapsedRealtimeOffsetUs;
        }
        return System.currentTimeMillis() * 1000;
    }

    private PeriodHolder findPeriodHolder(long j) {
        int i = 0;
        if (j < ((PeriodHolder) this.periodHolders.valueAt(0)).getAvailableStartTimeUs()) {
            return (PeriodHolder) this.periodHolders.valueAt(0);
        }
        while (i < this.periodHolders.size() - 1) {
            PeriodHolder periodHolder = (PeriodHolder) this.periodHolders.valueAt(i);
            if (j < periodHolder.getAvailableEndTimeUs()) {
                return periodHolder;
            }
            i++;
        }
        return (PeriodHolder) this.periodHolders.valueAt(this.periodHolders.size() - 1);
    }

    private void processManifest(MediaPresentationDescription mediaPresentationDescription) {
        Period period = mediaPresentationDescription.getPeriod(0);
        while (this.periodHolders.size() > 0 && ((PeriodHolder) this.periodHolders.valueAt(0)).startTimeUs < period.startMs * 1000) {
            this.periodHolders.remove(((PeriodHolder) this.periodHolders.valueAt(0)).localIndex);
        }
        if (this.periodHolders.size() <= mediaPresentationDescription.getPeriodCount()) {
            try {
                int size = this.periodHolders.size();
                if (size > 0) {
                    ((PeriodHolder) this.periodHolders.valueAt(0)).updatePeriod(mediaPresentationDescription, 0, this.enabledTrack);
                    if (size > 1) {
                        size--;
                        ((PeriodHolder) this.periodHolders.valueAt(size)).updatePeriod(mediaPresentationDescription, size, this.enabledTrack);
                    }
                }
                for (int size2 = this.periodHolders.size(); size2 < mediaPresentationDescription.getPeriodCount(); size2++) {
                    this.periodHolders.put(this.nextPeriodHolderIndex, new PeriodHolder(this.nextPeriodHolderIndex, mediaPresentationDescription, size2, this.enabledTrack));
                    this.nextPeriodHolderIndex++;
                }
                TimeRange availableRange = getAvailableRange(getNowUnixTimeUs());
                if (this.availableRange == null || !this.availableRange.equals(availableRange)) {
                    this.availableRange = availableRange;
                    notifyAvailableRangeChanged(this.availableRange);
                }
                this.currentManifest = mediaPresentationDescription;
            } catch (IOException e) {
                this.fatalError = e;
            }
        }
    }

    private TimeRange getAvailableRange(long j) {
        long j2 = -1;
        PeriodHolder periodHolder = (PeriodHolder) this.periodHolders.valueAt(0);
        PeriodHolder periodHolder2 = (PeriodHolder) this.periodHolders.valueAt(this.periodHolders.size() - 1);
        if (!this.currentManifest.dynamic || periodHolder2.isIndexExplicit()) {
            return new StaticTimeRange(periodHolder.getAvailableStartTimeUs(), periodHolder2.getAvailableEndTimeUs());
        }
        long availableStartTimeUs = periodHolder.getAvailableStartTimeUs();
        long availableEndTimeUs = periodHolder2.isIndexUnbounded() ? PtsTimestampAdjuster.DO_NOT_OFFSET : periodHolder2.getAvailableEndTimeUs();
        long elapsedRealtime = (this.systemClock.elapsedRealtime() * 1000) - (j - (this.currentManifest.availabilityStartTime * 1000));
        if (this.currentManifest.timeShiftBufferDepth != -1) {
            j2 = this.currentManifest.timeShiftBufferDepth * 1000;
        }
        return new DynamicTimeRange(availableStartTimeUs, availableEndTimeUs, elapsedRealtime, j2, this.systemClock);
    }

    private void notifyAvailableRangeChanged(TimeRange timeRange) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass1(timeRange));
        }
    }
}
