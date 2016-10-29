package com.twitter.library.av.playback;

import android.media.MediaCodec.CryptoException;
import android.view.Surface;
import com.google.android.exoplayer.MediaCodecTrackRenderer.DecoderInitializationException;
import com.google.android.exoplayer.MediaCodecVideoTrackRenderer.EventListener;

/* compiled from: Twttr */
class bs implements EventListener {
    bs() {
    }

    public void onDecoderInitializationError(DecoderInitializationException decoderInitializationException) {
    }

    public void onCryptoError(CryptoException cryptoException) {
    }

    public void onDecoderInitialized(String str, long j, long j2) {
    }

    public void onDroppedFrames(int i, long j) {
    }

    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
    }

    public void onDrawnToSurface(Surface surface) {
    }
}
