package com.twitter.library.client;

import android.content.Context;
import bob;
import com.twitter.library.api.d;
import com.twitter.util.aj;
import com.twitter.util.m;
import defpackage.boa;

/* compiled from: Twttr */
public class v {
    private static v a;
    private final Context b;
    private final bg c;

    public static synchronized v a(Context context) {
        v vVar;
        synchronized (v.class) {
            if (a == null) {
                a = new v(context.getApplicationContext());
            }
            vVar = a;
        }
        return vVar;
    }

    private v(Context context) {
        this.b = context;
        this.c = bg.a();
    }

    public void a() {
        Session c = bg.a().c();
        l lVar = new l(this.b, c.e());
        boolean contains = lVar.contains("app_graph_status");
        String string = lVar.getString("app_graph_status", "undetermined");
        d a = u.a.a();
        if (!c.d() || !com.twitter.config.d.a("app_graph_enabled")) {
            return;
        }
        if (contains && (!"optin".equals(string) || m.c(lVar.getLong("app_graph_timestamp", 0)))) {
            return;
        }
        if (a == null || !a.b()) {
            a(null);
        }
    }

    public void a(String str) {
        Session c = this.c.c();
        if (aj.a((CharSequence) str)) {
            az.a(this.b).a(new boa(this.b, c), new x(this, null));
        } else {
            az.a(this.b).a(new bob(this.b, c, str), new x(this, null));
        }
    }

    public void b(String str) {
        n a = new l(this.b, this.c.c().e()).a();
        String str2 = "app_graph_status";
        if (!aj.b((CharSequence) str)) {
            str = "undetermined";
        }
        a.a(str2, str).apply();
    }

    private void c(String str) {
        if (!m.c(new l(this.b, str).getLong("app_graph_timestamp", 0))) {
            new w(this).execute(new Void[0]);
        }
    }
}
