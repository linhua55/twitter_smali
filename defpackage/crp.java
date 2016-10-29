package defpackage;

import cqk;
import crm;

/* compiled from: Twttr */
/* renamed from: crp */
class crp implements cqk {
    final /* synthetic */ crm a;

    crp(crm crm) {
        this.a = crm;
    }

    public void a() {
        crm.a(this.a, false);
        if (!crm.c(this.a).isFinishing()) {
            if (crm.d(this.a) != null) {
                crm.d(this.a).a();
                if (crm.e(this.a)) {
                    this.a.b();
                    crm.b(this.a, false);
                    return;
                }
                crm.g(this.a).postDelayed(crm.f(this.a), 500);
                return;
            }
            this.a.b();
        }
    }
}
