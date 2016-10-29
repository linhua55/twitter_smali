package com.twitter.library.av.playback;

/* compiled from: Twttr */
public class h {
    public static final float a(AVDataSource aVDataSource) {
        return a(aVDataSource.n());
    }

    public static float a(float f) {
        if (b(f)) {
            return 1.0f;
        }
        return f;
    }

    private static boolean b(float f) {
        return f < 1.0f;
    }
}
