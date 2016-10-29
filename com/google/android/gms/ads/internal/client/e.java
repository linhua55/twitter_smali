package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.doubleclick.c;
import com.google.android.gms.ads.h;
import com.google.android.gms.ads.internal.reward.client.l;
import com.google.android.gms.ads.purchase.b;
import com.google.android.gms.ads.purchase.d;
import com.google.android.gms.internal.dh;
import com.google.android.gms.internal.kc;
import com.google.android.gms.internal.nd;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.oi;
import iu;

@oi
public class e {
    private final kc a;
    private final Context b;
    private final v c;
    private a d;
    private a e;
    private ar f;
    private String g;
    private String h;
    private com.google.android.gms.ads.doubleclick.a i;
    private d j;
    private b k;
    private com.google.android.gms.ads.doubleclick.d l;
    private c m;
    private h n;
    private iu o;
    private String p;
    private boolean q;

    public e(Context context) {
        this(context, v.a(), null);
    }

    public e(Context context, v vVar, com.google.android.gms.ads.doubleclick.d dVar) {
        this.a = new kc();
        this.b = context;
        this.c = vVar;
        this.l = dVar;
    }

    private void c(String str) throws RemoteException {
        if (this.g == null) {
            d(str);
        }
        this.f = aa.b().b(this.b, this.q ? AdSizeParcel.a() : new AdSizeParcel(), this.g, this.a);
        if (this.d != null) {
            this.f.a(new q(this.d));
        }
        if (this.e != null) {
            this.f.a(new p(this.e));
        }
        if (this.i != null) {
            this.f.a(new x(this.i));
        }
        if (this.k != null) {
            this.f.a(new nd(this.k));
        }
        if (this.j != null) {
            this.f.a(new ng(this.j), this.h);
        }
        if (this.m != null) {
            this.f.a(new dh(this.m));
        }
        if (this.n != null) {
            this.f.a(this.n.a());
        }
        if (this.o != null) {
            this.f.a(new l(this.o));
        }
        if (this.p != null) {
            this.f.a(this.p);
        }
    }

    private void d(String str) {
        if (this.f == null) {
            throw new IllegalStateException("The ad unit ID must be set on InterstitialAd before " + str + " is called.");
        }
    }

    public void a() {
        try {
            d("show");
            this.f.f();
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to show interstitial.", e);
        }
    }

    public void a(a aVar) {
        try {
            this.d = aVar;
            if (this.f != null) {
                this.f.a(aVar != null ? new q(aVar) : null);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AdListener.", e);
        }
    }

    public void a(a aVar) {
        try {
            this.e = aVar;
            if (this.f != null) {
                this.f.a(aVar != null ? new p(aVar) : null);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AdClickListener.", e);
        }
    }

    public void a(b bVar) {
        try {
            if (this.f == null) {
                c("loadAd");
            }
            if (this.f.a(this.c.a(this.b, bVar))) {
                this.a.a(bVar.j());
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to load ad.", e);
        }
    }

    public void a(iu iuVar) {
        try {
            this.o = iuVar;
            if (this.f != null) {
                this.f.a(iuVar != null ? new l(iuVar) : null);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AdListener.", e);
        }
    }

    public void a(String str) {
        if (this.g != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        }
        this.g = str;
    }

    public void a(boolean z) {
        this.q = z;
    }

    public void b(String str) {
        try {
            this.p = str;
            if (this.f != null) {
                this.f.a(str);
            }
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AdListener.", e);
        }
    }
}
