package com.twitter.android;

import com.twitter.library.view.y;

/* compiled from: Twttr */
final class ya extends y {
    ya(int i, float f, float f2, int i2) {
        super(i, f, f2, i2);
    }

    public String a(int i) {
        StringBuilder stringBuilder = new StringBuilder(5);
        int i2 = i / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
        stringBuilder.append(i2 / 60).append(':');
        i2 %= 60;
        if (i2 < 10) {
            stringBuilder.append('0');
        }
        stringBuilder.append(i2);
        return stringBuilder.toString();
    }
}
