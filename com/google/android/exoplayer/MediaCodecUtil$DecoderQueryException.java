package com.google.android.exoplayer;

import java.io.IOException;

/* compiled from: Twttr */
public class MediaCodecUtil$DecoderQueryException extends IOException {
    private MediaCodecUtil$DecoderQueryException(Throwable th) {
        super("Failed to query underlying media codecs", th);
    }
}
