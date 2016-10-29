package com.google.android.exoplayer;

import android.text.TextUtils;

/* compiled from: Twttr */
final class MediaCodecUtil$CodecKey {
    public final String mimeType;
    public final boolean secure;

    public MediaCodecUtil$CodecKey(String str, boolean z) {
        this.mimeType = str;
        this.secure = z;
    }

    public int hashCode() {
        return (this.secure ? 1231 : 1237) + (((this.mimeType == null ? 0 : this.mimeType.hashCode()) + 31) * 31);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != MediaCodecUtil$CodecKey.class) {
            return false;
        }
        MediaCodecUtil$CodecKey mediaCodecUtil$CodecKey = (MediaCodecUtil$CodecKey) obj;
        if (TextUtils.equals(this.mimeType, mediaCodecUtil$CodecKey.mimeType) && this.secure == mediaCodecUtil$CodecKey.secure) {
            return true;
        }
        return false;
    }
}
