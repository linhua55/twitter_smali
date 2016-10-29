package com.twitter.library.service;

import android.content.Context;
import cfa;
import com.twitter.library.client.az;
import com.twitter.library.network.forecaster.b;
import com.twitter.library.network.forecaster.h;
import com.twitter.util.z;

/* compiled from: Twttr */
public class u implements z<h> {
    private static u a;
    private final Context b;

    private u(Context context) {
        this.b = context;
        b.a().a((z) this);
    }

    public static synchronized void a(Context context) {
        synchronized (u.class) {
            if (a == null) {
                a = new u(context);
            }
        }
    }

    public void a(h hVar) {
        com.twitter.internal.android.service.u rVar = new r(hVar);
        cfa.a("NetworkRequestRetryObs", rVar + " -- will inform RequestController", "ANDROID-10803");
        az.a(this.b).a(rVar);
    }
}
