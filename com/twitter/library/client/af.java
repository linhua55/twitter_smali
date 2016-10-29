package com.twitter.library.client;

import android.content.Context;
import com.twitter.config.d;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.scribe.ScribeDatabaseHelper;
import com.twitter.util.h;

/* compiled from: Twttr */
public class af {
    private static af a;
    private final Context b;
    private final bg c;

    public static synchronized af a(Context context) {
        af afVar;
        synchronized (af.class) {
            if (a == null) {
                a = new af(context.getApplicationContext());
            }
            afVar = a;
        }
        return afVar;
    }

    private af(Context context) {
        this.b = context;
        this.c = bg.a();
    }

    public void a() {
        h.c();
        Session c = bg.a().c();
        l lVar = new l(this.b, c.e(), "decider");
        if (lVar.getBoolean("cache_dirty", false)) {
            e eVar = new e(this.b.getContentResolver());
            di.a(this.b, c.g()).b(eVar);
            eVar.a();
            ScribeDatabaseHelper.a(this.b, c.g()).b();
            lVar.a().a("cache_dirty").apply();
        }
    }

    public void a(long j) {
        Session c = this.c.c();
        if (j == c.g()) {
            l a = a(this.b, c.e(), "decider");
            int i = a.getInt("cache_version", -1);
            int a2 = d.a("cache_version", -1);
            if (i == -1) {
                a.a().a("cache_version", a2).apply();
            } else if (i < a2) {
                a.a().a("cache_version", a2).a("cache_dirty", true).apply();
            }
            v.a(this.b).a();
        }
    }

    public l a(Context context, String str, String str2) {
        return new l(context, str, str2);
    }
}
