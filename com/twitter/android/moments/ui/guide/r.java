package com.twitter.android.moments.ui.guide;

import adr;
import android.view.ViewGroup;
import com.twitter.android.av.t;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.android.moments.viewmodels.MomentModule.Type;
import com.twitter.android.moments.viewmodels.ab;
import com.twitter.app.common.inject.s;

/* compiled from: Twttr */
class r implements w, s {
    private final ViewGroup a;
    private final am b;
    private final u c;
    private final adr d;
    private final t e;
    private final d f;
    private MomentModule g;
    private s h;

    r(ViewGroup viewGroup, am amVar, u uVar, adr adr, t tVar, d dVar) {
        this.a = viewGroup;
        this.d = adr;
        this.b = amVar;
        this.c = uVar;
        this.e = tVar;
        this.f = dVar;
    }

    public void a(MomentModule momentModule) {
        if (!momentModule.equals(this.g)) {
            if (momentModule.a() == Type.VIDEO && this.e.a()) {
                ab abVar = (ab) momentModule;
                if (this.h != null) {
                    this.h.a();
                }
                this.b.a(abVar);
                this.h = this.b;
            } else if (momentModule.a() == Type.IMAGE || momentModule.a() == Type.VIDEO) {
                if (this.h != null) {
                    this.h.a();
                }
                this.c.b(momentModule);
                this.h = this.c;
            }
            this.g = momentModule;
            if (this.f.aP_()) {
                this.d.d(this.g.b().b);
            }
        } else if (momentModule.b() != this.g.b() && this.h != null) {
            this.h.a(momentModule);
            this.g = momentModule;
        }
    }

    public void b() {
        this.b.a();
        this.c.a();
    }

    public void c() {
        if (this.g != null) {
            this.d.d(this.g.b().b);
        }
    }

    public void ap_() {
        b();
    }
}
