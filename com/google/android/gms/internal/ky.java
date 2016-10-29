package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import ij;
import ik;
import il;
import im;
import in;
import io;
import ip;

@oi
public final class ky implements ik, im, io {
    private final kj a;
    private ip b;

    public ky(kj kjVar) {
        this.a = kjVar;
    }

    public ip a() {
        return this.b;
    }

    public void a(ij ijVar) {
        bm.b("onAdLoaded must be called on the main UI thread.");
        b.a("Adapter called onAdLoaded.");
        try {
            this.a.e();
        } catch (Throwable e) {
            b.d("Could not call onAdLoaded.", e);
        }
    }

    public void a(ij ijVar, int i) {
        bm.b("onAdFailedToLoad must be called on the main UI thread.");
        b.a("Adapter called onAdFailedToLoad with error. " + i);
        try {
            this.a.a(i);
        } catch (Throwable e) {
            b.d("Could not call onAdFailedToLoad.", e);
        }
    }

    public void a(il ilVar) {
        bm.b("onAdLoaded must be called on the main UI thread.");
        b.a("Adapter called onAdLoaded.");
        try {
            this.a.e();
        } catch (Throwable e) {
            b.d("Could not call onAdLoaded.", e);
        }
    }

    public void a(il ilVar, int i) {
        bm.b("onAdFailedToLoad must be called on the main UI thread.");
        b.a("Adapter called onAdFailedToLoad with error " + i + ".");
        try {
            this.a.a(i);
        } catch (Throwable e) {
            b.d("Could not call onAdFailedToLoad.", e);
        }
    }

    public void a(in inVar) {
        bm.b("onAdOpened must be called on the main UI thread.");
        b.a("Adapter called onAdOpened.");
        try {
            this.a.d();
        } catch (Throwable e) {
            b.d("Could not call onAdOpened.", e);
        }
    }

    public void a(in inVar, int i) {
        bm.b("onAdFailedToLoad must be called on the main UI thread.");
        b.a("Adapter called onAdFailedToLoad with error " + i + ".");
        try {
            this.a.a(i);
        } catch (Throwable e) {
            b.d("Could not call onAdFailedToLoad.", e);
        }
    }

    public void a(in inVar, ip ipVar) {
        bm.b("onAdLoaded must be called on the main UI thread.");
        b.a("Adapter called onAdLoaded.");
        this.b = ipVar;
        try {
            this.a.e();
        } catch (Throwable e) {
            b.d("Could not call onAdLoaded.", e);
        }
    }

    public void b(ij ijVar) {
        bm.b("onAdOpened must be called on the main UI thread.");
        b.a("Adapter called onAdOpened.");
        try {
            this.a.d();
        } catch (Throwable e) {
            b.d("Could not call onAdOpened.", e);
        }
    }

    public void b(il ilVar) {
        bm.b("onAdOpened must be called on the main UI thread.");
        b.a("Adapter called onAdOpened.");
        try {
            this.a.d();
        } catch (Throwable e) {
            b.d("Could not call onAdOpened.", e);
        }
    }

    public void b(in inVar) {
        bm.b("onAdClosed must be called on the main UI thread.");
        b.a("Adapter called onAdClosed.");
        try {
            this.a.b();
        } catch (Throwable e) {
            b.d("Could not call onAdClosed.", e);
        }
    }

    public void c(ij ijVar) {
        bm.b("onAdClosed must be called on the main UI thread.");
        b.a("Adapter called onAdClosed.");
        try {
            this.a.b();
        } catch (Throwable e) {
            b.d("Could not call onAdClosed.", e);
        }
    }

    public void c(il ilVar) {
        bm.b("onAdClosed must be called on the main UI thread.");
        b.a("Adapter called onAdClosed.");
        try {
            this.a.b();
        } catch (Throwable e) {
            b.d("Could not call onAdClosed.", e);
        }
    }

    public void c(in inVar) {
        bm.b("onAdLeftApplication must be called on the main UI thread.");
        b.a("Adapter called onAdLeftApplication.");
        try {
            this.a.c();
        } catch (Throwable e) {
            b.d("Could not call onAdLeftApplication.", e);
        }
    }

    public void d(ij ijVar) {
        bm.b("onAdLeftApplication must be called on the main UI thread.");
        b.a("Adapter called onAdLeftApplication.");
        try {
            this.a.c();
        } catch (Throwable e) {
            b.d("Could not call onAdLeftApplication.", e);
        }
    }

    public void d(il ilVar) {
        bm.b("onAdLeftApplication must be called on the main UI thread.");
        b.a("Adapter called onAdLeftApplication.");
        try {
            this.a.c();
        } catch (Throwable e) {
            b.d("Could not call onAdLeftApplication.", e);
        }
    }

    public void d(in inVar) {
        bm.b("onAdClicked must be called on the main UI thread.");
        b.a("Adapter called onAdClicked.");
        try {
            this.a.a();
        } catch (Throwable e) {
            b.d("Could not call onAdClicked.", e);
        }
    }

    public void e(ij ijVar) {
        bm.b("onAdClicked must be called on the main UI thread.");
        b.a("Adapter called onAdClicked.");
        try {
            this.a.a();
        } catch (Throwable e) {
            b.d("Could not call onAdClicked.", e);
        }
    }

    public void e(il ilVar) {
        bm.b("onAdClicked must be called on the main UI thread.");
        b.a("Adapter called onAdClicked.");
        try {
            this.a.a();
        } catch (Throwable e) {
            b.d("Could not call onAdClicked.", e);
        }
    }
}
