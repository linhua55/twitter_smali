package com.twitter.library.av.playback;

/* compiled from: Twttr */
public class au {
    public static final au a;
    final AVDataSource b;

    static {
        a = new au(AVDataSource.a);
    }

    public au(AVDataSource aVDataSource) {
        this.b = aVDataSource;
    }

    public boolean a() {
        return this.b.b() != null;
    }

    public boolean b() {
        return this.b.k();
    }

    public AVDataSource c() {
        return this.b;
    }
}
