package defpackage;

import crm;

/* compiled from: Twttr */
/* renamed from: cro */
class cro implements Runnable {
    final /* synthetic */ crm a;

    cro(crm crm) {
        this.a = crm;
    }

    public void run() {
        if (!crm.a(this.a)) {
            crm.b(this.a).d();
        }
    }
}
