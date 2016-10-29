package com.twitter.library.util;

import android.annotation.TargetApi;
import android.content.Context;
import com.twitter.android.lf;

/* compiled from: Twttr */
public class l {
    private static k a;

    static {
        a = null;
    }

    @TargetApi(23)
    public static k a(Context context) {
        if (a != null) {
            return a;
        }
        if (lf.a().b()) {
            return new m(context);
        }
        return new n(context);
    }
}
