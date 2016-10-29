package com.twitter.util;

/* compiled from: Twttr */
public class o {
    public static int a(boolean... zArr) {
        int i = 0;
        for (boolean z : zArr) {
            if (z) {
                i++;
            }
        }
        return i;
    }
}
