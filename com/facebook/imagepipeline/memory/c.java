package com.facebook.imagepipeline.memory;

/* compiled from: Twttr */
public class c {
    public static final int a;

    static {
        a = b();
    }

    private static int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (((long) min) > 16777216) {
            return (min / 4) * 3;
        }
        return min / 2;
    }

    public static b a() {
        return new b(384, a);
    }
}
