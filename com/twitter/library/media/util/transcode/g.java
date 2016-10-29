package com.twitter.library.media.util.transcode;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import com.google.android.exoplayer.C;

/* compiled from: Twttr */
class g extends j {
    final /* synthetic */ d a;
    private final MediaCodec c;
    private final a d;
    private final b e;
    private final MediaCodec f;
    private final BufferInfo g;
    private final int h;

    g(d dVar, MediaCodec mediaCodec, b bVar, a aVar, MediaCodec mediaCodec2, int i) {
        this.a = dVar;
        super(null);
        this.g = new BufferInfo();
        this.c = mediaCodec;
        this.d = aVar;
        this.e = bVar;
        this.f = mediaCodec2;
        this.h = i;
    }

    void a() throws TranscoderException {
        int i = 0;
        while (!this.a.b) {
            int dequeueOutputBuffer = this.c.dequeueOutputBuffer(this.g, C.MICROS_PER_SECOND);
            if (dequeueOutputBuffer >= 0) {
                int i2;
                if (this.g.size != 0 && this.g.presentationTimeUs >= this.a.d) {
                    i2 = i + 1;
                    if (i % this.a.i == 0) {
                        this.c.releaseOutputBuffer(dequeueOutputBuffer, true);
                        try {
                            this.e.c();
                            this.e.a(this.h);
                            this.d.a(this.g.presentationTimeUs * 1000);
                            this.d.c();
                            if ((this.g.flags & 4) == 0) {
                                this.f.signalEndOfInputStream();
                                return;
                            }
                            i = i2;
                        } catch (Throwable e) {
                            throw new TranscoderException(true, "frame wait interrupted", e);
                        }
                    }
                    i = i2;
                }
                this.c.releaseOutputBuffer(dequeueOutputBuffer, false);
                i2 = i;
                if ((this.g.flags & 4) == 0) {
                    i = i2;
                } else {
                    this.f.signalEndOfInputStream();
                    return;
                }
            }
        }
    }
}
