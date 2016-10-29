package com.twitter.android.av.video;

import com.twitter.library.av.playback.AVDataSource;

/* compiled from: Twttr */
public abstract class a {
    public abstract float a();

    public boolean b() {
        return a() == 1.0f;
    }

    public boolean c() {
        return a() < 1.0f;
    }

    public static a a(AVDataSource aVDataSource) {
        return new c(aVDataSource, true);
    }

    public static a b(AVDataSource aVDataSource) {
        return new c(aVDataSource, false);
    }

    public static a a(float f) {
        return new b(f);
    }
}
