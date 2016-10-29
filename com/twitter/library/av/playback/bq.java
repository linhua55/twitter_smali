package com.twitter.library.av.playback;

import android.media.MediaCodec.CryptoException;
import android.support.annotation.VisibleForTesting;
import android.view.Surface;
import com.google.android.exoplayer.MediaCodecTrackRenderer.DecoderInitializationException;
import com.google.android.exoplayer.TimeRange;
import com.google.android.exoplayer.audio.AudioTrack.InitializationException;
import com.google.android.exoplayer.audio.AudioTrack.WriteException;
import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.metadata.id3.Id3Frame;
import java.io.IOException;
import java.util.List;
import tv.periscope.android.exoplayer.player.g;
import tv.periscope.android.exoplayer.player.h;
import tv.periscope.android.exoplayer.player.i;
import tv.periscope.android.exoplayer.player.j;

@VisibleForTesting
/* compiled from: Twttr */
class bq implements g, h, i, j {
    final /* synthetic */ bn a;

    bq(bn bnVar) {
        this.a = bnVar;
    }

    public void a(Format format, int i, long j) {
    }

    public void b(Format format, int i, long j) {
    }

    public void a(int i, long j) {
        this.a.onDroppedFrames(i, j);
    }

    public void a(int i, long j, long j2) {
    }

    public void a(int i, long j, int i2, int i3, Format format, long j2, long j3) {
    }

    public void a(int i, long j, int i2, int i3, Format format, long j2, long j3, long j4, long j5) {
    }

    public void a(String str, long j, long j2) {
        this.a.onDecoderInitialized(str, j, j2);
    }

    public void a(int i, TimeRange timeRange) {
    }

    public void a(Surface surface) {
        this.a.onDrawnToSurface(surface);
    }

    public void a(boolean z, int i) {
        if (bn.a(this.a) != null) {
            bn.a(this.a).a(z, i);
        }
    }

    public void a(Exception exception) {
        if (bn.a(this.a) != null) {
            bn.a(this.a).a(exception);
        }
    }

    public void a(int i, int i2, int i3, float f) {
        this.a.onVideoSizeChanged(i, i2, i3, f);
        if (bn.a(this.a) != null) {
            bn.a(this.a).a(i, i2, i3, f);
        }
    }

    public void c() {
        if (bn.a(this.a) != null) {
            bn.a(this.a).c();
        }
    }

    public void b(Exception exception) {
    }

    public void a(InitializationException initializationException) {
        this.a.onAudioTrackInitializationError(initializationException);
    }

    public void a(WriteException writeException) {
        this.a.onAudioTrackWriteError(writeException);
    }

    public void a(DecoderInitializationException decoderInitializationException) {
        this.a.onDecoderInitializationError(decoderInitializationException);
    }

    public void a(CryptoException cryptoException) {
        this.a.onCryptoError(cryptoException);
    }

    public void a(int i, IOException iOException) {
    }

    public void c(Exception exception) {
    }

    public void a(List<Id3Frame> list) {
        bn.b(this.a).a(list);
        if (bn.c(this.a) != null) {
            bn.c(this.a).a(list);
        }
    }

    public void b(int i, long j, long j2) {
    }
}
