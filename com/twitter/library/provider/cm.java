package com.twitter.library.provider;

import android.net.Uri;

/* compiled from: Twttr */
public final class cm {
    public static final Uri a;

    static {
        a = Uri.parse(ck.d + "ads_account_permissions");
    }

    public static Uri a(long j) {
        return a.buildUpon().appendQueryParameter("ownerId", String.valueOf(j)).build();
    }
}
