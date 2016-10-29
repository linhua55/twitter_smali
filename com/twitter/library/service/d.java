package com.twitter.library.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.util.Pair;
import com.twitter.config.AppConfig;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.network.a;
import java.util.List;
import org.apache.http.HttpEntity;

/* compiled from: Twttr */
public class d {
    public final CharSequence a;
    public final RequestMethod b;
    public final HttpEntity c;
    final List<Pair<String, String>> d;
    final boolean e;
    final a f;

    d(CharSequence charSequence, RequestMethod requestMethod, HttpEntity httpEntity, List<Pair<String, String>> list, a aVar, boolean z) {
        this.a = charSequence;
        this.b = requestMethod;
        this.c = httpEntity;
        this.d = list;
        this.f = aVar;
        this.e = z;
    }

    public static e a(Context context) {
        e eVar = new e(context);
        if (AppConfig.m().p()) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("debug_prefs", 0);
            if (sharedPreferences.getBoolean("staging_enabled", false)) {
                String string = sharedPreferences.getString("staging_url", null);
                if (string != null) {
                    Uri parse = Uri.parse(string);
                    eVar.c(parse.getScheme()).b(parse.getAuthority());
                }
            }
        }
        return eVar;
    }
}
