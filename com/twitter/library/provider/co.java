package com.twitter.library.provider;

import android.net.Uri;

/* compiled from: Twttr */
public final class co {
    public static final Uri a;
    public static final Uri b;

    static {
        a = Uri.parse(ck.d + "business_profiles");
        b = Uri.parse(ck.d + "business_profiles" + "/" + "user_id");
    }

    public static Uri a(long j, long j2) {
        return b.buildUpon().appendPath(String.valueOf(j)).appendQueryParameter("ownerId", String.valueOf(j2)).build();
    }
}
