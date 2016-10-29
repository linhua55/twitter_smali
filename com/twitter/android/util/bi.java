package com.twitter.android.util;

import android.content.Context;

/* compiled from: Twttr */
public class bi {
    private static bh a;

    public static synchronized bh a(Context context) {
        bh bjVar;
        synchronized (bi.class) {
            if (a == null) {
                bjVar = new bj(context);
            } else {
                bjVar = a;
            }
        }
        return bjVar;
    }
}
