package com.twitter.library.network;

import android.content.Context;

/* compiled from: Twttr */
public final class f {
    private static e a;

    public static e a(Context context) {
        if (a != null) {
            return a;
        }
        return new g(context);
    }
}
