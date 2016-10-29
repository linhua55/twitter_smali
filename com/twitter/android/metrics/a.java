package com.twitter.android.metrics;

import com.twitter.library.metrics.k;
import defpackage.arj;
import defpackage.arp;
import defpackage.aru;
import defpackage.asa;

/* compiled from: Twttr */
public class a extends asa {
    public static a a(aru aru, long j) {
        arj a = aru.a("app:ready");
        if (a == null) {
            a = aru.d(new a("app:ready", n, aru));
            a.b(j);
            a.b("AppMetrics");
        }
        return (a) a;
    }

    public a(String str, arp arp, aru aru) {
        super(str, arp, k.class.getSimpleName() + "app:ready", aru);
    }

    public String a() {
        return "app:ready" + LaunchTracker.a().a(false);
    }
}
