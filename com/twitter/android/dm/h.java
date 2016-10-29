package com.twitter.android.dm;

import android.content.Context;
import defpackage.biw;

/* compiled from: Twttr */
public class h {
    public static boolean a(Context context) {
        return context.getSharedPreferences("dm_prefs", 0).getBoolean("address_book_access_granted", false);
    }

    public static void a(Context context, boolean z) {
        biw.a(context, "address_book_access_granted", z);
    }
}
