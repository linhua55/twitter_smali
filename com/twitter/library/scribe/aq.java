package com.twitter.library.scribe;

import android.content.Context;
import com.twitter.config.d;
import defpackage.asp;
import defpackage.bvj;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
class aq implements asp {
    private static aq a;
    private boolean b;
    private long c;
    private Set<String> d;
    private Context e;

    public static synchronized aq a() {
        aq aqVar;
        synchronized (aq.class) {
            if (a == null) {
                a = new aq();
            }
            aqVar = a;
        }
        return aqVar;
    }

    private aq() {
        e();
        bvj.a((asp) this);
    }

    public void a(Context context) {
        this.e = context.getApplicationContext();
    }

    public void a(long j) {
        boolean z = this.b;
        long j2 = this.c;
        e();
        z = (z == this.b && j2 == this.c) ? false : true;
        if (z && this.e != null) {
            ScribeService.a(this.e, false);
        }
    }

    private void e() {
        this.b = d.a("scribe_enabled");
        this.c = 1000 * ((long) d.a("scribe_interval_seconds", 60));
        Set hashSet = new HashSet();
        for (Object next : d.c("scribe_cdn_host_list")) {
            if (next instanceof String) {
                hashSet.add(((String) next).toLowerCase());
            }
        }
        this.d = hashSet;
    }

    public boolean b() {
        return this.b;
    }

    public long c() {
        return this.c;
    }

    public Set<String> d() {
        return this.d;
    }
}
