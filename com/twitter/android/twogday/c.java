package com.twitter.android.twogday;

import com.twitter.config.d;
import com.twitter.library.network.s;
import com.twitter.library.network.v;
import com.twitter.platform.q;
import com.twitter.util.aj;
import defpackage.bbl;
import defpackage.bbn;

/* compiled from: Twttr */
public class c {
    public static boolean a() {
        return aj.b(d());
    }

    private static String d() {
        return d.b("next_billion_day_profile_name");
    }

    public static void b() {
        String d = d();
        v a = v.a();
        s b = a.b(d);
        if (b != null) {
            a.a(b);
        } else {
            bbn.a(new bbl().a("message", "Failure to enable 2G simulation with profile " + d));
        }
    }

    public static void c() {
        v.a().e();
    }

    public static boolean a(q qVar) {
        return qVar.a("nbd_start_prompt_seen", false);
    }

    public static void b(q qVar) {
        qVar.a().a("nbd_start_prompt_seen", true).a();
    }

    public static void c(q qVar) {
        qVar.a().a("nbd_start_prompt_seen", false).a();
    }
}
