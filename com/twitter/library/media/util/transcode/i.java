package com.twitter.library.media.util.transcode;

import android.media.MediaCodec;
import android.media.MediaExtractor;
import com.google.android.exoplayer.C;
import java.nio.ByteBuffer;

/* compiled from: Twttr */
class i extends j {
    final /* synthetic */ d a;
    private final MediaExtractor c;
    private final MediaCodec d;

    i(d dVar, MediaExtractor mediaExtractor, MediaCodec mediaCodec) {
        this.a = dVar;
        super(null);
        this.c = mediaExtractor;
        this.d = mediaCodec;
    }

    void a() {
        ByteBuffer[] inputBuffers = this.d.getInputBuffers();
        while (!this.a.b) {
            int dequeueInputBuffer = this.d.dequeueInputBuffer(C.MICROS_PER_SECOND);
            if (dequeueInputBuffer >= 0) {
                int readSampleData = this.c.readSampleData(inputBuffers[dequeueInputBuffer], 0);
                long sampleTime = this.c.getSampleTime();
                if (readSampleData < 0 || (this.a.e != -1 && sampleTime >= this.a.e)) {
                    this.d.queueInputBuffer(dequeueInputBuffer, 0, 0, 0, 4);
                    return;
                } else {
                    this.d.queueInputBuffer(dequeueInputBuffer, 0, readSampleData, sampleTime, 0);
                    this.c.advance();
                }
            }
        }
    }
}
