package defpackage;

import android.graphics.Bitmap;
import rx.am;
import rx.u;

/* compiled from: Twttr */
/* renamed from: cqw */
class cqw implements cyr {
    final /* synthetic */ u a;
    final /* synthetic */ am b;
    final /* synthetic */ cqv c;

    cqw(cqv cqv, u uVar, am amVar) {
        this.c = cqv;
        this.a = uVar;
        this.b = amVar;
    }

    public void a() {
        if (!this.c.b.j || this.c.b.b == null || this.c.b.c == null) {
            this.a.K_();
            this.c.b.e();
        } else if (this.c.b.i >= this.c.b.c.size() || !this.c.b.d.isShown()) {
            this.b.bs_();
            this.a.K_();
        } else {
            try {
                Bitmap a = this.c.b.b.a(this.c.b.i);
                this.c.b.i = this.c.b.i + 1;
                this.b.b_(a);
            } catch (Throwable e) {
                this.b.a(e);
                this.a.K_();
            }
        }
    }
}
