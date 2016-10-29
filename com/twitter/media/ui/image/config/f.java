package com.twitter.media.ui.image.config;

/* compiled from: Twttr */
public class f {
    public static final f a;
    public final float b;
    public final float c;
    public final float d;

    static {
        a = new f(0.0f, 0.0f, 0.0f);
    }

    public static f a(float f, float f2, float f3) {
        if (f == 0.0f && f2 == 0.0f && f3 == 0.0f) {
            return a;
        }
        return new f(f, f2, f3);
    }

    private f(float f, float f2, float f3) {
        this.b = f;
        this.c = f2;
        this.d = f3;
    }
}
