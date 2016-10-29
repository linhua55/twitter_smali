package com.twitter.library.av;

import android.content.Context;
import android.os.Build.VERSION;

/* compiled from: Twttr */
public class i {
    public static boolean a(Context context, j jVar) {
        return VERSION.SDK_INT <= 17 || jVar.a(context) <= 536870912;
    }
}
