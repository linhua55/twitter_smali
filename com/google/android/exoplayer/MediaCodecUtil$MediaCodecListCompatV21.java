package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecList;

@TargetApi(21)
/* compiled from: Twttr */
final class MediaCodecUtil$MediaCodecListCompatV21 implements MediaCodecUtil$MediaCodecListCompat {
    private final int codecKind;
    private MediaCodecInfo[] mediaCodecInfos;

    public MediaCodecUtil$MediaCodecListCompatV21(boolean z) {
        this.codecKind = z ? 1 : 0;
    }

    public int getCodecCount() {
        ensureMediaCodecInfosInitialized();
        return this.mediaCodecInfos.length;
    }

    public MediaCodecInfo getCodecInfoAt(int i) {
        ensureMediaCodecInfosInitialized();
        return this.mediaCodecInfos[i];
    }

    public boolean secureDecodersExplicit() {
        return true;
    }

    public boolean isSecurePlaybackSupported(String str, CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private void ensureMediaCodecInfosInitialized() {
        if (this.mediaCodecInfos == null) {
            this.mediaCodecInfos = new MediaCodecList(this.codecKind).getCodecInfos();
        }
    }
}
