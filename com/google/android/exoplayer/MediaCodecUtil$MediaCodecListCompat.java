package com.google.android.exoplayer;

import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;

/* compiled from: Twttr */
interface MediaCodecUtil$MediaCodecListCompat {
    int getCodecCount();

    MediaCodecInfo getCodecInfoAt(int i);

    boolean isSecurePlaybackSupported(String str, CodecCapabilities codecCapabilities);

    boolean secureDecodersExplicit();
}
