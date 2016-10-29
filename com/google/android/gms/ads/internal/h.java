package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.pt;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.sz;

class h implements Runnable {
    final /* synthetic */ pt a;
    final /* synthetic */ cy b;
    final /* synthetic */ e c;

    h(e eVar, pt ptVar, cy cyVar) {
        this.c = eVar;
        this.a = ptVar;
        this.b = cyVar;
    }

    public void run() {
        if (this.a.b.s && this.c.f.x != null) {
            String str = null;
            if (this.a.b.b != null) {
                str = ar.e().a(this.a.b.b);
            }
            cz czVar = new cz(this.c, str, this.a.b.c);
            this.c.f.D = 1;
            try {
                this.c.d = false;
                this.c.f.x.a(czVar);
                return;
            } catch (Throwable e) {
                qd.d("Could not call the onCustomRenderedAdLoadedListener.", e);
                this.c.d = true;
            }
        }
        l lVar = new l();
        sz a = this.c.a(this.a, lVar);
        lVar.a(new n(this.a, a));
        a.setOnTouchListener(new i(this, lVar));
        a.setOnClickListener(new j(this, lVar));
        this.c.f.D = 0;
        this.c.f.h = ar.d().a(this.c.f.c, this.c, this.a, this.c.f.d, a, this.c.j, this.c, this.b);
    }
}
