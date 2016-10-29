package com.google.android.exoplayer;

import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecList;
import com.google.android.exoplayer.util.MimeTypes;

/* compiled from: Twttr */
final class MediaCodecUtil$MediaCodecListCompatV16 implements MediaCodecUtil$MediaCodecListCompat {
    private MediaCodecUtil$MediaCodecListCompatV16() {
    }

    public int getCodecCount() {
        return MediaCodecList.getCodecCount();
    }

    public MediaCodecInfo getCodecInfoAt(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    public boolean secureDecodersExplicit() {
        return false;
    }

    public boolean isSecurePlaybackSupported(String str, CodecCapabilities codecCapabilities) {
        return MimeTypes.VIDEO_H264.equals(str);
    }
}
