package tv.periscope.android.exoplayer.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.os.Handler;
import com.google.android.exoplayer.MediaCodecSelector;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer.EventListener;
import com.google.android.exoplayer.SampleSource;

/* compiled from: Twttr */
class p extends MediaCodecVideoTrackRenderer {
    final /* synthetic */ m a;

    public p(m mVar, Context context, SampleSource sampleSource, int i, long j, Handler handler, EventListener eventListener, int i2) {
        this.a = mVar;
        super(context, sampleSource, MediaCodecSelector.DEFAULT, i, j, handler, eventListener, i2);
    }

    protected void renderOutputBuffer(MediaCodec mediaCodec, int i) {
        this.a.b(System.nanoTime());
        super.renderOutputBuffer(mediaCodec, i);
    }

    @TargetApi(21)
    protected void renderOutputBufferV21(MediaCodec mediaCodec, int i, long j) {
        this.a.b(j);
        super.renderOutputBufferV21(mediaCodec, i, j);
    }

    protected void dropOutputBuffer(MediaCodec mediaCodec, int i) {
        this.a.q = 1 + this.a.q;
        super.dropOutputBuffer(mediaCodec, i);
    }

    protected void skipOutputBuffer(MediaCodec mediaCodec, int i) {
        this.a.q = 1 + this.a.q;
        super.skipOutputBuffer(mediaCodec, i);
    }
}
