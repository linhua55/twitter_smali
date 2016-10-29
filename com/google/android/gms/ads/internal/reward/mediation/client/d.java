package com.google.android.gms.ads.internal.reward.mediation.client;

import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.oi;
import it;
import iv;
import iw;

@oi
public class d implements iw {
    private final a a;

    public d(a aVar) {
        this.a = aVar;
    }

    public void a(iv ivVar) {
        bm.b("onInitializationSucceeded must be called on the main UI thread.");
        b.a("Adapter called onInitializationSucceeded.");
        try {
            this.a.a(m.a(ivVar));
        } catch (Throwable e) {
            b.d("Could not call onInitializationSucceeded.", e);
        }
    }

    public void a(iv ivVar, int i) {
        bm.b("onAdFailedToLoad must be called on the main UI thread.");
        b.a("Adapter called onAdFailedToLoad.");
        try {
            this.a.b(m.a(ivVar), i);
        } catch (Throwable e) {
            b.d("Could not call onAdFailedToLoad.", e);
        }
    }

    public void a(iv ivVar, it itVar) {
        bm.b("onRewarded must be called on the main UI thread.");
        b.a("Adapter called onRewarded.");
        if (itVar != null) {
            try {
                this.a.a(m.a(ivVar), new RewardItemParcel(itVar));
                return;
            } catch (Throwable e) {
                b.d("Could not call onRewarded.", e);
                return;
            }
        }
        this.a.a(m.a(ivVar), new RewardItemParcel(ivVar.getClass().getName(), 1));
    }

    public void b(iv ivVar) {
        bm.b("onAdLoaded must be called on the main UI thread.");
        b.a("Adapter called onAdLoaded.");
        try {
            this.a.b(m.a(ivVar));
        } catch (Throwable e) {
            b.d("Could not call onAdLoaded.", e);
        }
    }

    public void c(iv ivVar) {
        bm.b("onAdOpened must be called on the main UI thread.");
        b.a("Adapter called onAdOpened.");
        try {
            this.a.c(m.a(ivVar));
        } catch (Throwable e) {
            b.d("Could not call onAdOpened.", e);
        }
    }

    public void d(iv ivVar) {
        bm.b("onVideoStarted must be called on the main UI thread.");
        b.a("Adapter called onVideoStarted.");
        try {
            this.a.d(m.a(ivVar));
        } catch (Throwable e) {
            b.d("Could not call onVideoStarted.", e);
        }
    }

    public void e(iv ivVar) {
        bm.b("onAdClosed must be called on the main UI thread.");
        b.a("Adapter called onAdClosed.");
        try {
            this.a.e(m.a(ivVar));
        } catch (Throwable e) {
            b.d("Could not call onAdClosed.", e);
        }
    }

    public void f(iv ivVar) {
        bm.b("onAdLeftApplication must be called on the main UI thread.");
        b.a("Adapter called onAdLeftApplication.");
        try {
            this.a.g(m.a(ivVar));
        } catch (Throwable e) {
            b.d("Could not call onAdLeftApplication.", e);
        }
    }
}
