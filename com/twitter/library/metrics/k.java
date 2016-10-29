package com.twitter.library.metrics;

import android.content.Context;
import arf;
import ark;
import aru;
import asa;
import bvj;
import com.twitter.app.common.util.f;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.library.network.b;
import com.twitter.library.scribe.ScribeService;
import com.twitter.util.x;
import defpackage.arr;
import defpackage.art;
import java.util.HashSet;

/* compiled from: Twttr */
public class k {
    public static ark a;
    public static final HashSet<String> b;
    private static k c;
    private boolean d;

    static {
        b = new HashSet();
        b.add("api:foreground:::rxbytes");
        b.add("api:background:::rxbytes");
        b.add("api::scribe::size");
    }

    public static k a(Context context) {
        if (c == null) {
            synchronized (k.class) {
                if (c == null) {
                    c = new k(context);
                }
            }
        }
        return c;
    }

    public void a() {
        synchronized (this) {
            if (this.d) {
                return;
            }
            this.d = true;
            aru b = aru.b();
            long g = bg.a().c().g();
            AppConfig m = AppConfig.m();
            if (m != null && m.a()) {
                a(b, g);
            }
            arf a = arf.a("api::scribe::size", b, 0, ark.n, 3);
            a.i();
            ScribeService.a(a);
            asa.a("fs:first_download_req", b, ark.m).i();
            g.a(b);
            f.a().a(new l(this, b));
        }
    }

    private void a(aru aru, long j) {
        arf a = arf.a("api:background:::rxbytes", aru, j, ark.n, 3);
        a.i();
        arf a2 = arf.a("api:foreground:::rxbytes", aru, j, ark.n, 3);
        a2.i();
        b.a().a(new m(this, a2, a));
    }

    private k(Context context) {
        aru.a(context);
        aru b = aru.b();
        if (x.a()) {
            b.b(true);
        }
        b.a(new p(context));
    }

    public void b() {
        c();
        bvj.a(new n(this));
    }

    private void c() {
        art a = arr.a();
        arr.a(new art(a.a, d.a("perftown_low_priority_sampling_rate", a.b), d.a("perftown_high_priority_sampling_rate", a.c), d.a("metrics_periodic_reporting_interval_short", a.d), d.a("metrics_periodic_reporting_interval_regular", a.e), d.a("metrics_periodic_reporting_interval_long", a.f)));
    }
}
