package com.twitter.android;

import android.content.res.Resources;

/* compiled from: Twttr */
public class hx {
    public static int a(Resources resources, int i) {
        int i2 = resources.getConfiguration().orientation;
        int i3 = resources.getDisplayMetrics().widthPixels;
        if (i2 != 2 || i3 <= i) {
            return 0;
        }
        return (i3 - i) / 2;
    }
}
