package com.twitter.library.av.playback;

import android.media.MediaCodec.CryptoException;
import android.view.Surface;
import com.google.android.exoplayer.MediaCodecTrackRenderer.DecoderInitializationException;

/* compiled from: Twttr */
class t extends bs {
    final /* synthetic */ q a;

    t(q qVar) {
        this.a = qVar;
    }

    public void onDecoderInitializationError(DecoderInitializationException decoderInitializationException) {
        this.a.a(true, decoderInitializationException);
    }

    public void onCryptoError(CryptoException cryptoException) {
        this.a.a(true, cryptoException);
    }

    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        this.a.onVideoSizeChanged(i, i2, i3, f);
    }

    public void onDrawnToSurface(Surface surface) {
        this.a.onDrawnToSurface(surface);
    }
}
