package com.google.android.exoplayer.chunk;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.LoadControl;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.SampleSource.SampleSourceReader;
import com.google.android.exoplayer.extractor.DefaultTrackOutput;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.upstream.Loader;
import com.google.android.exoplayer.upstream.Loader.Callback;
import com.google.android.exoplayer.upstream.Loader.Loadable;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* compiled from: Twttr */
public class ChunkSampleSource implements SampleSource, SampleSourceReader, Callback {
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    private static final long NO_RESET_PENDING = Long.MIN_VALUE;
    private static final int STATE_ENABLED = 3;
    private static final int STATE_IDLE = 0;
    private static final int STATE_INITIALIZED = 1;
    private static final int STATE_PREPARED = 2;
    private final int bufferSizeContribution;
    private final ChunkSource chunkSource;
    private long currentLoadStartTimeMs;
    private IOException currentLoadableException;
    private int currentLoadableExceptionCount;
    private long currentLoadableExceptionTimestamp;
    private final ChunkOperationHolder currentLoadableHolder;
    private Format downstreamFormat;
    private MediaFormat downstreamMediaFormat;
    private long downstreamPositionUs;
    private int enabledTrackCount;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final int eventSourceId;
    private long lastPerformedBufferOperation;
    private long lastSeekPositionUs;
    private final LoadControl loadControl;
    private Loader loader;
    private boolean loadingFinished;
    private final LinkedList<BaseMediaChunk> mediaChunks;
    private final int minLoadableRetryCount;
    private boolean pendingDiscontinuity;
    private long pendingResetPositionUs;
    private final List<BaseMediaChunk> readOnlyMediaChunks;
    protected final DefaultTrackOutput sampleQueue;
    private int state;

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ Format val$format;
        final /* synthetic */ long val$length;
        final /* synthetic */ long val$mediaEndTimeUs;
        final /* synthetic */ long val$mediaStartTimeUs;
        final /* synthetic */ int val$trigger;
        final /* synthetic */ int val$type;

        AnonymousClass1(long j, int i, int i2, Format format, long j2, long j3) {
            this.val$length = j;
            this.val$type = i;
            this.val$trigger = i2;
            this.val$format = format;
            this.val$mediaStartTimeUs = j2;
            this.val$mediaEndTimeUs = j3;
        }

        public void run() {
            ChunkSampleSource.this.eventListener.onLoadStarted(ChunkSampleSource.this.eventSourceId, this.val$length, this.val$type, this.val$trigger, this.val$format, ChunkSampleSource.this.usToMs(this.val$mediaStartTimeUs), ChunkSampleSource.this.usToMs(this.val$mediaEndTimeUs));
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ long val$bytesLoaded;
        final /* synthetic */ long val$elapsedRealtimeMs;
        final /* synthetic */ Format val$format;
        final /* synthetic */ long val$loadDurationMs;
        final /* synthetic */ long val$mediaEndTimeUs;
        final /* synthetic */ long val$mediaStartTimeUs;
        final /* synthetic */ int val$trigger;
        final /* synthetic */ int val$type;

        AnonymousClass2(long j, int i, int i2, Format format, long j2, long j3, long j4, long j5) {
            this.val$bytesLoaded = j;
            this.val$type = i;
            this.val$trigger = i2;
            this.val$format = format;
            this.val$mediaStartTimeUs = j2;
            this.val$mediaEndTimeUs = j3;
            this.val$elapsedRealtimeMs = j4;
            this.val$loadDurationMs = j5;
        }

        public void run() {
            ChunkSampleSource.this.eventListener.onLoadCompleted(ChunkSampleSource.this.eventSourceId, this.val$bytesLoaded, this.val$type, this.val$trigger, this.val$format, ChunkSampleSource.this.usToMs(this.val$mediaStartTimeUs), ChunkSampleSource.this.usToMs(this.val$mediaEndTimeUs), this.val$elapsedRealtimeMs, this.val$loadDurationMs);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ long val$bytesLoaded;

        AnonymousClass3(long j) {
            this.val$bytesLoaded = j;
        }

        public void run() {
            ChunkSampleSource.this.eventListener.onLoadCanceled(ChunkSampleSource.this.eventSourceId, this.val$bytesLoaded);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource.4 */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ IOException val$e;

        AnonymousClass4(IOException iOException) {
            this.val$e = iOException;
        }

        public void run() {
            ChunkSampleSource.this.eventListener.onLoadError(ChunkSampleSource.this.eventSourceId, this.val$e);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource.5 */
    class AnonymousClass5 implements Runnable {
        final /* synthetic */ long val$mediaEndTimeUs;
        final /* synthetic */ long val$mediaStartTimeUs;

        AnonymousClass5(long j, long j2) {
            this.val$mediaStartTimeUs = j;
            this.val$mediaEndTimeUs = j2;
        }

        public void run() {
            ChunkSampleSource.this.eventListener.onUpstreamDiscarded(ChunkSampleSource.this.eventSourceId, ChunkSampleSource.this.usToMs(this.val$mediaStartTimeUs), ChunkSampleSource.this.usToMs(this.val$mediaEndTimeUs));
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.chunk.ChunkSampleSource.6 */
    class AnonymousClass6 implements Runnable {
        final /* synthetic */ Format val$format;
        final /* synthetic */ long val$positionUs;
        final /* synthetic */ int val$trigger;

        AnonymousClass6(Format format, int i, long j) {
            this.val$format = format;
            this.val$trigger = i;
            this.val$positionUs = j;
        }

        public void run() {
            ChunkSampleSource.this.eventListener.onDownstreamFormatChanged(ChunkSampleSource.this.eventSourceId, this.val$format, this.val$trigger, ChunkSampleSource.this.usToMs(this.val$positionUs));
        }
    }

    /* compiled from: Twttr */
    public interface EventListener extends BaseChunkSampleSourceEventListener {
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int i) {
        this(chunkSource, loadControl, i, null, null, STATE_IDLE);
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int i, Handler handler, EventListener eventListener, int i2) {
        this(chunkSource, loadControl, i, handler, eventListener, i2, STATE_ENABLED);
    }

    public ChunkSampleSource(ChunkSource chunkSource, LoadControl loadControl, int i, Handler handler, EventListener eventListener, int i2, int i3) {
        this.chunkSource = chunkSource;
        this.loadControl = loadControl;
        this.bufferSizeContribution = i;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.eventSourceId = i2;
        this.minLoadableRetryCount = i3;
        this.currentLoadableHolder = new ChunkOperationHolder();
        this.mediaChunks = new LinkedList();
        this.readOnlyMediaChunks = Collections.unmodifiableList(this.mediaChunks);
        this.sampleQueue = new DefaultTrackOutput(loadControl.getAllocator());
        this.state = STATE_IDLE;
        this.pendingResetPositionUs = NO_RESET_PENDING;
    }

    public SampleSourceReader register() {
        Assertions.checkState(this.state == 0);
        this.state = STATE_INITIALIZED;
        return this;
    }

    public boolean prepare(long j) {
        boolean z = this.state == STATE_INITIALIZED || this.state == STATE_PREPARED;
        Assertions.checkState(z);
        if (this.state == STATE_PREPARED) {
            return true;
        }
        if (!this.chunkSource.prepare()) {
            return false;
        }
        if (this.chunkSource.getTrackCount() > 0) {
            this.loader = new Loader("Loader:" + this.chunkSource.getFormat(STATE_IDLE).mimeType);
        }
        this.state = STATE_PREPARED;
        return true;
    }

    public int getTrackCount() {
        boolean z = this.state == STATE_PREPARED || this.state == STATE_ENABLED;
        Assertions.checkState(z);
        return this.chunkSource.getTrackCount();
    }

    public MediaFormat getFormat(int i) {
        boolean z = this.state == STATE_PREPARED || this.state == STATE_ENABLED;
        Assertions.checkState(z);
        return this.chunkSource.getFormat(i);
    }

    public void enable(int i, long j) {
        boolean z = true;
        Assertions.checkState(this.state == STATE_PREPARED);
        int i2 = this.enabledTrackCount;
        this.enabledTrackCount = i2 + STATE_INITIALIZED;
        if (i2 != 0) {
            z = false;
        }
        Assertions.checkState(z);
        this.state = STATE_ENABLED;
        this.chunkSource.enable(i);
        this.loadControl.register(this, this.bufferSizeContribution);
        this.downstreamFormat = null;
        this.downstreamMediaFormat = null;
        this.downstreamPositionUs = j;
        this.lastSeekPositionUs = j;
        this.pendingDiscontinuity = false;
        restartFrom(j);
    }

    public void disable(int i) {
        boolean z = true;
        Assertions.checkState(this.state == STATE_ENABLED);
        int i2 = this.enabledTrackCount - 1;
        this.enabledTrackCount = i2;
        if (i2 != 0) {
            z = false;
        }
        Assertions.checkState(z);
        this.state = STATE_PREPARED;
        try {
            this.chunkSource.disable(this.mediaChunks);
            this.loadControl.unregister(this);
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
                return;
            }
            this.sampleQueue.clear();
            this.mediaChunks.clear();
            clearCurrentLoadable();
            this.loadControl.trimAllocator();
        } catch (Throwable th) {
            this.loadControl.unregister(this);
            if (this.loader.isLoading()) {
                this.loader.cancelLoading();
            } else {
                this.sampleQueue.clear();
                this.mediaChunks.clear();
                clearCurrentLoadable();
                this.loadControl.trimAllocator();
            }
        }
    }

    public boolean continueBuffering(int i, long j) {
        boolean z;
        if (this.state == STATE_ENABLED) {
            z = true;
        } else {
            z = false;
        }
        Assertions.checkState(z);
        this.downstreamPositionUs = j;
        this.chunkSource.continueBuffering(j);
        updateLoadControl();
        if (this.loadingFinished || !this.sampleQueue.isEmpty()) {
            return true;
        }
        return false;
    }

    public long readDiscontinuity(int i) {
        if (!this.pendingDiscontinuity) {
            return NO_RESET_PENDING;
        }
        this.pendingDiscontinuity = false;
        return this.lastSeekPositionUs;
    }

    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        int i2 = STATE_IDLE;
        int i3 = STATE_INITIALIZED;
        Assertions.checkState(this.state == STATE_ENABLED);
        this.downstreamPositionUs = j;
        if (this.pendingDiscontinuity || isPendingReset()) {
            return -2;
        }
        int i4 = !this.sampleQueue.isEmpty() ? STATE_INITIALIZED : STATE_IDLE;
        MediaChunk mediaChunk = (BaseMediaChunk) this.mediaChunks.getFirst();
        while (i4 != 0 && this.mediaChunks.size() > STATE_INITIALIZED && ((BaseMediaChunk) this.mediaChunks.get(STATE_INITIALIZED)).getFirstSampleIndex() <= this.sampleQueue.getReadIndex()) {
            this.mediaChunks.removeFirst();
            mediaChunk = (BaseMediaChunk) this.mediaChunks.getFirst();
        }
        Format format = mediaChunk.format;
        if (!format.equals(this.downstreamFormat)) {
            notifyDownstreamFormatChanged(format, mediaChunk.trigger, mediaChunk.startTimeUs);
        }
        this.downstreamFormat = format;
        if (i4 != 0 || mediaChunk.isMediaFormatFinal) {
            MediaFormat mediaFormat = mediaChunk.getMediaFormat();
            if (mediaFormat.equals(this.downstreamMediaFormat)) {
                this.downstreamMediaFormat = mediaFormat;
            } else {
                mediaFormatHolder.format = mediaFormat;
                mediaFormatHolder.drmInitData = mediaChunk.getDrmInitData();
                this.downstreamMediaFormat = mediaFormat;
                return -4;
            }
        }
        if (i4 == 0) {
            return this.loadingFinished ? -1 : -2;
        } else {
            if (!this.sampleQueue.getSample(sampleHolder)) {
                return -2;
            }
            if (sampleHolder.timeUs >= this.lastSeekPositionUs) {
                i3 = STATE_IDLE;
            }
            int i5 = sampleHolder.flags;
            if (i3 != 0) {
                i2 = C.SAMPLE_FLAG_DECODE_ONLY;
            }
            sampleHolder.flags = i5 | i2;
            onSampleRead(mediaChunk, sampleHolder);
            return -3;
        }
    }

    public void seekToUs(long j) {
        boolean z = false;
        Assertions.checkState(this.state == STATE_ENABLED);
        long j2 = isPendingReset() ? this.pendingResetPositionUs : this.downstreamPositionUs;
        this.downstreamPositionUs = j;
        this.lastSeekPositionUs = j;
        if (j2 != j) {
            boolean z2 = (isPendingReset() || !this.sampleQueue.skipToKeyframeBefore(j)) ? STATE_IDLE : true;
            if (z2) {
                if (!this.sampleQueue.isEmpty()) {
                    z = true;
                }
                while (z && this.mediaChunks.size() > STATE_INITIALIZED && ((BaseMediaChunk) this.mediaChunks.get(STATE_INITIALIZED)).getFirstSampleIndex() <= this.sampleQueue.getReadIndex()) {
                    this.mediaChunks.removeFirst();
                }
            } else {
                restartFrom(j);
            }
            this.pendingDiscontinuity = true;
        }
    }

    public void maybeThrowError() throws IOException {
        if (this.currentLoadableException != null && this.currentLoadableExceptionCount > this.minLoadableRetryCount) {
            throw this.currentLoadableException;
        } else if (this.currentLoadableHolder.chunk == null) {
            this.chunkSource.maybeThrowError();
        }
    }

    public long getBufferedPositionUs() {
        Assertions.checkState(this.state == STATE_ENABLED);
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return -3;
        }
        long largestParsedTimestampUs = this.sampleQueue.getLargestParsedTimestampUs();
        return largestParsedTimestampUs == NO_RESET_PENDING ? this.downstreamPositionUs : largestParsedTimestampUs;
    }

    public void release() {
        Assertions.checkState(this.state != STATE_ENABLED);
        if (this.loader != null) {
            this.loader.release();
            this.loader = null;
        }
        this.state = STATE_IDLE;
    }

    public void onLoadCompleted(Loadable loadable) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.currentLoadStartTimeMs;
        Chunk chunk = this.currentLoadableHolder.chunk;
        this.chunkSource.onChunkLoadCompleted(chunk);
        if (isMediaChunk(chunk)) {
            BaseMediaChunk baseMediaChunk = (BaseMediaChunk) chunk;
            notifyLoadCompleted(chunk.bytesLoaded(), baseMediaChunk.type, baseMediaChunk.trigger, baseMediaChunk.format, baseMediaChunk.startTimeUs, baseMediaChunk.endTimeUs, elapsedRealtime, j);
        } else {
            notifyLoadCompleted(chunk.bytesLoaded(), chunk.type, chunk.trigger, chunk.format, -1, -1, elapsedRealtime, j);
        }
        clearCurrentLoadable();
        updateLoadControl();
    }

    public void onLoadCanceled(Loadable loadable) {
        notifyLoadCanceled(this.currentLoadableHolder.chunk.bytesLoaded());
        clearCurrentLoadable();
        if (this.state == STATE_ENABLED) {
            restartFrom(this.pendingResetPositionUs);
            return;
        }
        this.sampleQueue.clear();
        this.mediaChunks.clear();
        clearCurrentLoadable();
        this.loadControl.trimAllocator();
    }

    public void onLoadError(Loadable loadable, IOException iOException) {
        this.currentLoadableException = iOException;
        this.currentLoadableExceptionCount += STATE_INITIALIZED;
        this.currentLoadableExceptionTimestamp = SystemClock.elapsedRealtime();
        notifyLoadError(iOException);
        this.chunkSource.onChunkLoadError(this.currentLoadableHolder.chunk, iOException);
        updateLoadControl();
    }

    protected void onSampleRead(MediaChunk mediaChunk, SampleHolder sampleHolder) {
    }

    private void restartFrom(long j) {
        this.pendingResetPositionUs = j;
        this.loadingFinished = false;
        if (this.loader.isLoading()) {
            this.loader.cancelLoading();
            return;
        }
        this.sampleQueue.clear();
        this.mediaChunks.clear();
        clearCurrentLoadable();
        updateLoadControl();
    }

    private void clearCurrentLoadable() {
        this.currentLoadableHolder.chunk = null;
        clearCurrentLoadableException();
    }

    private void clearCurrentLoadableException() {
        this.currentLoadableException = null;
        this.currentLoadableExceptionCount = STATE_IDLE;
    }

    private void updateLoadControl() {
        boolean z;
        boolean discardUpstreamMediaChunks;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long nextLoadPositionUs = getNextLoadPositionUs();
        Object obj = this.currentLoadableException != null ? STATE_INITIALIZED : STATE_IDLE;
        if (this.loader.isLoading() || obj != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z && ((this.currentLoadableHolder.chunk == null && nextLoadPositionUs != -1) || elapsedRealtime - this.lastPerformedBufferOperation > 2000)) {
            this.lastPerformedBufferOperation = elapsedRealtime;
            doChunkOperation();
            discardUpstreamMediaChunks = discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
            if (this.currentLoadableHolder.chunk == null) {
                nextLoadPositionUs = -1;
            } else if (discardUpstreamMediaChunks) {
                nextLoadPositionUs = getNextLoadPositionUs();
            }
        }
        discardUpstreamMediaChunks = this.loadControl.update(this, this.downstreamPositionUs, nextLoadPositionUs, z);
        if (obj != null) {
            if (elapsedRealtime - this.currentLoadableExceptionTimestamp >= getRetryDelayMillis((long) this.currentLoadableExceptionCount)) {
                resumeFromBackOff();
            }
        } else if (!this.loader.isLoading() && discardUpstreamMediaChunks) {
            maybeStartLoading();
        }
    }

    private long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        return this.loadingFinished ? -1 : ((BaseMediaChunk) this.mediaChunks.getLast()).endTimeUs;
    }

    private void resumeFromBackOff() {
        this.currentLoadableException = null;
        Chunk chunk = this.currentLoadableHolder.chunk;
        if (!isMediaChunk(chunk)) {
            doChunkOperation();
            discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
            if (this.currentLoadableHolder.chunk == chunk) {
                this.loader.startLoading(chunk, this);
                return;
            }
            notifyLoadCanceled(chunk.bytesLoaded());
            maybeStartLoading();
        } else if (chunk == this.mediaChunks.getFirst()) {
            this.loader.startLoading(chunk, this);
        } else {
            Chunk chunk2 = (BaseMediaChunk) this.mediaChunks.removeLast();
            Assertions.checkState(chunk == chunk2);
            doChunkOperation();
            this.mediaChunks.add(chunk2);
            if (this.currentLoadableHolder.chunk == chunk) {
                this.loader.startLoading(chunk, this);
                return;
            }
            notifyLoadCanceled(chunk.bytesLoaded());
            discardUpstreamMediaChunks(this.currentLoadableHolder.queueSize);
            clearCurrentLoadableException();
            maybeStartLoading();
        }
    }

    private void maybeStartLoading() {
        Chunk chunk = this.currentLoadableHolder.chunk;
        if (chunk != null) {
            this.currentLoadStartTimeMs = SystemClock.elapsedRealtime();
            if (isMediaChunk(chunk)) {
                BaseMediaChunk baseMediaChunk = (BaseMediaChunk) chunk;
                baseMediaChunk.init(this.sampleQueue);
                this.mediaChunks.add(baseMediaChunk);
                if (isPendingReset()) {
                    this.pendingResetPositionUs = NO_RESET_PENDING;
                }
                notifyLoadStarted(baseMediaChunk.dataSpec.length, baseMediaChunk.type, baseMediaChunk.trigger, baseMediaChunk.format, baseMediaChunk.startTimeUs, baseMediaChunk.endTimeUs);
            } else {
                notifyLoadStarted(chunk.dataSpec.length, chunk.type, chunk.trigger, chunk.format, -1, -1);
            }
            this.loader.startLoading(chunk, this);
        }
    }

    private void doChunkOperation() {
        this.currentLoadableHolder.endOfStream = false;
        this.currentLoadableHolder.queueSize = this.readOnlyMediaChunks.size();
        this.chunkSource.getChunkOperation(this.readOnlyMediaChunks, this.pendingResetPositionUs != NO_RESET_PENDING ? this.pendingResetPositionUs : this.downstreamPositionUs, this.currentLoadableHolder);
        this.loadingFinished = this.currentLoadableHolder.endOfStream;
    }

    private boolean discardUpstreamMediaChunks(int i) {
        if (this.mediaChunks.size() <= i) {
            return false;
        }
        long j = 0;
        long j2 = ((BaseMediaChunk) this.mediaChunks.getLast()).endTimeUs;
        BaseMediaChunk baseMediaChunk = null;
        while (this.mediaChunks.size() > i) {
            baseMediaChunk = (BaseMediaChunk) this.mediaChunks.removeLast();
            j = baseMediaChunk.startTimeUs;
            this.loadingFinished = false;
        }
        this.sampleQueue.discardUpstreamSamples(baseMediaChunk.getFirstSampleIndex());
        notifyUpstreamDiscarded(j, j2);
        return true;
    }

    private boolean isMediaChunk(Chunk chunk) {
        return chunk instanceof BaseMediaChunk;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != NO_RESET_PENDING;
    }

    private long getRetryDelayMillis(long j) {
        return Math.min((j - 1) * 1000, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }

    protected final long usToMs(long j) {
        return j / 1000;
    }

    private void notifyLoadStarted(long j, int i, int i2, Format format, long j2, long j3) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass1(j, i, i2, format, j2, j3));
        }
    }

    private void notifyLoadCompleted(long j, int i, int i2, Format format, long j2, long j3, long j4, long j5) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass2(j, i, i2, format, j2, j3, j4, j5));
        }
    }

    private void notifyLoadCanceled(long j) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass3(j));
        }
    }

    private void notifyLoadError(IOException iOException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass4(iOException));
        }
    }

    private void notifyUpstreamDiscarded(long j, long j2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass5(j, j2));
        }
    }

    private void notifyDownstreamFormatChanged(Format format, int i, long j) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass6(format, i, j));
        }
    }
}
