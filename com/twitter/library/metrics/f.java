package com.twitter.library.metrics;

import com.twitter.library.metrics.ForegroundMetricTracker.BackgroundBehavior;
import defpackage.arj;
import defpackage.arp;
import defpackage.arq;
import defpackage.aru;
import defpackage.asa;

/* compiled from: Twttr */
public class f extends asa {
    public static f b(String str, aru aru, arp arp) {
        return b(str, aru, 0, arp, arj.a("ForegroundTimingMetric", str));
    }

    public static f b(String str, aru aru, long j, arp arp) {
        return b(str, aru, j, arp, arj.a("ForegroundTimingMetric", str));
    }

    public static f b(String str, aru aru, long j, arp arp, String str2) {
        arj a = aru.a(str2);
        if (a == null) {
            a = aru.d(new f(str, arp, str2, aru));
            a.b(j);
        }
        return (f) a;
    }

    public f(String str, arp arp, String str2, arq arq) {
        super(str, arp, str2, arq);
        ForegroundMetricTracker.a(this, BackgroundBehavior.a);
    }
}
