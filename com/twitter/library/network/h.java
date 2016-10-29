package com.twitter.library.network;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.util.aj;
import defpackage.bed;
import defpackage.bee;

/* compiled from: Twttr */
public class h extends a<String> {
    private final String a;
    private final String b;

    public /* synthetic */ Object a() {
        return c();
    }

    public static synchronized a a(Context context, ab abVar) {
        a wVar;
        synchronized (h.class) {
            if (abVar.b) {
                wVar = new w(abVar.d);
            } else {
                wVar = a(context);
            }
        }
        return wVar;
    }

    public static synchronized h a(Context context) {
        h hVar = null;
        synchronized (h.class) {
            String str = null;
            int i = 0;
            String str2 = null;
            while (str2 == null) {
                int i2 = i + 1;
                if (i >= 2) {
                    break;
                }
                str2 = e(context);
                if (str2 == null) {
                    str2 = g(context);
                    if (str2 == null) {
                        break;
                    }
                }
                str = f(context);
                String str3;
                if (str == null) {
                    i = i2;
                    str3 = str2;
                    str2 = c(context, str2);
                    str = str3;
                } else {
                    i = i2;
                    str3 = str2;
                    str2 = str;
                    str = str3;
                }
            }
            if (str2 != null) {
                hVar = new h(str, str2);
            }
        }
        return hVar;
    }

    public static void b(Context context) {
        d(context);
    }

    public void a(HttpOperation httpOperation, long j) {
        if (aj.b(this.a) && aj.b(this.b)) {
            httpOperation.a("Authorization", "Bearer " + this.a);
            httpOperation.a("X-Guest-Token", this.b);
        }
    }

    public String b() {
        return this.a;
    }

    public String c() {
        return this.b;
    }

    private h(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    private static void c(Context context) {
        context.getSharedPreferences("guest_auth", 0).edit().remove("access_token").apply();
    }

    private static void d(Context context) {
        context.getSharedPreferences("guest_auth", 0).edit().remove("guest_token").apply();
    }

    private static String e(Context context) {
        Object string = context.getSharedPreferences("guest_auth", 0).getString("access_token", TtmlNode.ANONYMOUS_REGION_ID);
        return aj.b(string) ? string : null;
    }

    private static void a(Context context, String str) {
        context.getSharedPreferences("guest_auth", 0).edit().putString("access_token", str).apply();
    }

    private static String f(Context context) {
        Object string = context.getSharedPreferences("guest_auth", 0).getString("guest_token", TtmlNode.ANONYMOUS_REGION_ID);
        return aj.b(string) ? string : null;
    }

    private static void b(Context context, String str) {
        context.getSharedPreferences("guest_auth", 0).edit().putString("guest_token", str).apply();
    }

    private static String g(Context context) {
        bed bed = new bed(context);
        bed.k("Token requests are always considered polling.");
        if (!bed.P().b()) {
            return null;
        }
        String a = bed.a();
        a(context, a);
        return a;
    }

    private static String c(Context context, String str) {
        bee bee = new bee(context, str);
        bee.k("Token requests are always considered polling.");
        aa P = bee.P();
        int i = P.g().a;
        if (P.b()) {
            String a = bee.a();
            b(context, a);
            return a;
        }
        if (i == 401 || i == 403) {
            c(context);
        }
        return null;
    }
}
