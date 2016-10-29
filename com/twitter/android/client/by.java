package com.twitter.android.client;

import android.content.Context;
import android.content.SharedPreferences;
import com.twitter.model.client.UrlConfiguration;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

/* compiled from: Twttr */
public class by {
    private static by a;
    private final Context b;
    private UrlConfiguration c;

    public static synchronized by a(Context context) {
        by byVar;
        synchronized (by.class) {
            if (a == null) {
                a = new by(context.getApplicationContext());
            }
            byVar = a;
        }
        return byVar;
    }

    private by(Context context) {
        this.b = context;
    }

    public int a(boolean z) {
        UrlConfiguration b = b();
        int i = b.a > 0 ? b.a : 22;
        if (z) {
            return b.b > 0 ? b.b : i + 1;
        } else {
            return i;
        }
    }

    public List<String> a() {
        return b().d;
    }

    void a(UrlConfiguration urlConfiguration) {
        SharedPreferences sharedPreferences = this.b.getSharedPreferences("config", 0);
        this.c = urlConfiguration;
        sharedPreferences.edit().putInt("short_url_len", urlConfiguration.a).putInt("short_url_len_https", urlConfiguration.b).putString("url_whitelist", aj.a((CharSequence) ",", urlConfiguration.d) + ',').putString("scribe_url", urlConfiguration.c).apply();
    }

    private UrlConfiguration b() {
        if (this.c != null) {
            return this.c;
        }
        SharedPreferences sharedPreferences = this.b.getSharedPreferences("config", 0);
        int i = sharedPreferences.getInt("short_url_len", 0);
        int i2 = sharedPreferences.getInt("short_url_len_https", 0);
        String string = sharedPreferences.getString("scribe_url", "https://twitter.com/scribe");
        String string2 = sharedPreferences.getString("url_whitelist", null);
        List arrayList = new ArrayList();
        if (string2 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(string2, ",");
            while (stringTokenizer.hasMoreTokens()) {
                arrayList.add(stringTokenizer.nextToken());
            }
        } else {
            c.a(this.b).d();
        }
        this.c = new UrlConfiguration(i, i2, string, arrayList);
        return this.c;
    }
}
