package com.twitter.library.provider;

import android.net.Uri;
import android.provider.Settings.System;

/* compiled from: Twttr */
public interface bk {
    public static final Uri a;
    public static final String b;

    static {
        a = Uri.parse("content://" + GlobalDatabaseProvider.a + "/" + "account_settings");
        b = System.DEFAULT_NOTIFICATION_URI.toString();
    }
}
