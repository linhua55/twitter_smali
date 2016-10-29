package com.twitter.library.api.dm.requests;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.twitter.config.AppConfig;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public abstract class c<T extends t> extends b<T> {
    protected abstract e b();

    protected c(Context context, String str, Session session) {
        super(context, str, session);
        f(false);
    }

    protected c(Context context, String str, ab abVar) {
        super(context, str, abVar);
        f(false);
    }

    protected final d a() {
        e b = b();
        if (AppConfig.m().p()) {
            SharedPreferences sharedPreferences = this.p.getSharedPreferences("debug_prefs", 0);
            if (sharedPreferences.getBoolean("dm_staging_enabled", false)) {
                String string = sharedPreferences.getString("dm_staging_host", null);
                if (string != null) {
                    Uri parse = Uri.parse(string);
                    b.c(parse.getScheme()).b(parse.getAuthority());
                }
            }
        }
        return b.a();
    }
}
