package com.twitter.library.provider;

import android.net.Uri;

/* compiled from: Twttr */
public final class bw {
    private static final Uri a;

    static {
        a = Uri.parse(ck.d + "moments");
    }

    public static Uri a(long j) {
        return Uri.withAppendedPath(a, String.valueOf(j));
    }
}
