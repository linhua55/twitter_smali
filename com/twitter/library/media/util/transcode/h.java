package com.twitter.library.media.util.transcode;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaMuxer;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.SampleSource;
import java.nio.ByteBuffer;

/* compiled from: Twttr */
class h extends j {
    final /* synthetic */ d a;
    private final MediaCodec c;
    private final MediaMuxer d;
    private final BufferInfo e;
    private final long f;

    h(d dVar, MediaCodec mediaCodec, MediaMuxer mediaMuxer, long j) {
        this.a = dVar;
        super(null);
        this.e = new BufferInfo();
        this.c = mediaCodec;
        this.d = mediaMuxer;
        this.f = j;
    }

    void a() {
        ByteBuffer[] outputBuffers = this.c.getOutputBuffers();
        int i = -1;
        boolean z = false;
        while (!z && !this.a.b) {
            int dequeueOutputBuffer = this.c.dequeueOutputBuffer(this.e, C.MICROS_PER_SECOND);
            switch (dequeueOutputBuffer) {
                case SampleSource.SAMPLE_READ /*-3*/:
                    outputBuffers = this.c.getOutputBuffers();
                    break;
                case SampleSource.NOTHING_READ /*-2*/:
                    i = this.d.addTrack(this.c.getOutputFormat());
                    this.d.start();
                    break;
                case TtmlStyle.UNSPECIFIED /*-1*/:
                    break;
                default:
                    if (dequeueOutputBuffer < 0) {
                        break;
                    }
                    ByteBuffer byteBuffer = outputBuffers[dequeueOutputBuffer];
                    if ((this.e.flags & 2) != 0) {
                        this.e.size = 0;
                    }
                    if (this.e.size != 0) {
                        byteBuffer.position(this.e.offset);
                        byteBuffer.limit(this.e.offset + this.e.size);
                        BufferInfo bufferInfo = this.e;
                        bufferInfo.presentationTimeUs += this.f;
                        this.e.presentationTimeUs = Math.max(0, this.e.presentationTimeUs);
                        this.d.writeSampleData(i, byteBuffer, this.e);
                    }
                    this.c.releaseOutputBuffer(dequeueOutputBuffer, false);
                    if ((this.e.flags & 4) == 0) {
                        z = false;
                        break;
                    } else {
                        z = true;
                        break;
                    }
            }
        }
    }
}
