package com.twitter.android.card;

import android.net.Uri;
import com.twitter.config.a;
import com.twitter.library.provider.ck;

/* compiled from: Twttr */
public abstract class g {
    public static final String a;
    public static final Uri b;

    static {
        a = a.a() + ".app.installed_check";
        b = Uri.withAppendedPath(ck.e, "app_installed_polling");
    }
}
