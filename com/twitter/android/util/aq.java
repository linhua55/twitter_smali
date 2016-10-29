package com.twitter.android.util;

import android.content.Context;

/* compiled from: Twttr */
public final class aq {
    private static am a;

    static {
        a = null;
    }

    public static am a(Context context) {
        if (a == null) {
            return new ar(context);
        }
        return a;
    }
}
