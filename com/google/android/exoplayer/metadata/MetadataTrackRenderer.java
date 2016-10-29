package com.google.android.exoplayer.metadata;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.SampleSourceTrackRenderer;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;

/* compiled from: Twttr */
public final class MetadataTrackRenderer<T> extends SampleSourceTrackRenderer implements Callback {
    private static final int MSG_INVOKE_RENDERER = 0;
    private final MediaFormatHolder formatHolder;
    private boolean inputStreamEnded;
    private final Handler metadataHandler;
    private final MetadataParser<T> metadataParser;
    private final MetadataRenderer<T> metadataRenderer;
    private T pendingMetadata;
    private long pendingMetadataTimestamp;
    private final SampleHolder sampleHolder;

    /* compiled from: Twttr */
    public interface MetadataRenderer<T> {
        void onMetadata(T t);
    }

    public MetadataTrackRenderer(SampleSource sampleSource, MetadataParser<T> metadataParser, MetadataRenderer<T> metadataRenderer, Looper looper) {
        super(sampleSource);
        this.metadataParser = (MetadataParser) Assertions.checkNotNull(metadataParser);
        this.metadataRenderer = (MetadataRenderer) Assertions.checkNotNull(metadataRenderer);
        this.metadataHandler = looper == null ? null : new Handler(looper, this);
        this.formatHolder = new MediaFormatHolder();
        this.sampleHolder = new SampleHolder(1);
    }

    protected boolean handlesTrack(MediaFormat mediaFormat) {
        return this.metadataParser.canParse(mediaFormat.mimeType);
    }

    protected void onDiscontinuity(long j) {
        this.pendingMetadata = null;
        this.inputStreamEnded = false;
    }

    protected void doSomeWork(long j, long j2, boolean z) throws ExoPlaybackException {
        if (!this.inputStreamEnded && this.pendingMetadata == null) {
            this.sampleHolder.clearData();
            int readSource = readSource(j, this.formatHolder, this.sampleHolder);
            if (readSource == -3) {
                this.pendingMetadataTimestamp = this.sampleHolder.timeUs;
                try {
                    this.pendingMetadata = this.metadataParser.parse(this.sampleHolder.data.array(), this.sampleHolder.size);
                } catch (Throwable e) {
                    throw new ExoPlaybackException(e);
                }
            } else if (readSource == -1) {
                this.inputStreamEnded = true;
            }
        }
        if (this.pendingMetadata != null && this.pendingMetadataTimestamp <= j) {
            invokeRenderer(this.pendingMetadata);
            this.pendingMetadata = null;
        }
    }

    protected void onDisabled() throws ExoPlaybackException {
        this.pendingMetadata = null;
        super.onDisabled();
    }

    protected long getBufferedPositionUs() {
        return -3;
    }

    protected boolean isEnded() {
        return this.inputStreamEnded;
    }

    protected boolean isReady() {
        return true;
    }

    private void invokeRenderer(T t) {
        if (this.metadataHandler != null) {
            this.metadataHandler.obtainMessage(0, t).sendToTarget();
        } else {
            invokeRendererInternal(t);
        }
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case Util.TYPE_DASH /*0*/:
                invokeRendererInternal(message.obj);
                return true;
            default:
                return false;
        }
    }

    private void invokeRendererInternal(T t) {
        this.metadataRenderer.onMetadata(t);
    }
}
