package com.twitter.library.network;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.annotation.VisibleForTesting;
import bbu;
import com.google.android.gms.common.b;
import com.twitter.app.common.util.h;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.platform.q;
import com.twitter.platform.t;
import com.twitter.util.al;
import defpackage.bce;
import defpackage.bcg;
import java.security.Provider;
import java.security.Provider.Service;
import java.security.Security;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import ok;

/* compiled from: Twttr */
public class ak implements h {
    private static final bcg a;
    private final q b;
    private final t c;
    private final b d;
    private long e;

    static {
        a = new al();
    }

    public ak(q qVar, t tVar) {
        this(qVar, tVar, b.a());
    }

    ak(q qVar, t tVar, b bVar) {
        this.e = -1;
        this.b = qVar;
        this.c = tVar;
        this.d = bVar;
    }

    public void a(Activity activity) {
    }

    public void b(Activity activity) {
        if (a()) {
            ok.a(activity, new am(this, this.c.a(), activity));
        }
    }

    @VisibleForTesting
    void a(Context context, boolean z, int i, long j) {
        bbu.a(b(context, z, i, j));
        this.b.a().a("last_security_scribe", al.b()).a();
    }

    @VisibleForTesting
    boolean a() {
        return d.a("android_network_security_metrics_enabled") && al.b() - this.b.a("last_security_scribe", 0) > 604800000;
    }

    @VisibleForTesting
    SecurityScribeLog b(Context context, boolean z, int i, long j) {
        List<bce> arrayList = new ArrayList();
        for (Provider services : Security.getProviders()) {
            for (Service service : services.getServices()) {
                if (service.getType().equals("SSLContext")) {
                    arrayList.add(new bce(service, a));
                }
            }
        }
        Collections.sort(arrayList, bce.a);
        int i2 = -1;
        try {
            i2 = context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (NameNotFoundException e) {
        }
        ah ahVar = new ah();
        ahVar.a(bg.a().c().g()).a(this.d.a(context)).b(i2).a("com.google.android.gms").b(j).a(z).c(i);
        int i3 = 1;
        for (bce a : arrayList) {
            ahVar.a(a);
            i2 = i3 + 1;
            if (i2 > 3) {
                break;
            }
            i3 = i2;
        }
        return ahVar.a();
    }
}
