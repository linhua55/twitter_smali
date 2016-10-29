package com.google.android.exoplayer;

import android.media.MediaCodec.CryptoException;
import com.google.android.exoplayer.MediaCodecTrackRenderer.DecoderInitializationException;

/* compiled from: Twttr */
public interface MediaCodecTrackRenderer$EventListener {
    void onCryptoError(CryptoException cryptoException);

    void onDecoderInitializationError(DecoderInitializationException decoderInitializationException);

    void onDecoderInitialized(String str, long j, long j2);
}
