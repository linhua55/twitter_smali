package defpackage;

import cvi;
import dbl;
import java.io.Closeable;
import rx.am;

/* compiled from: Twttr */
/* renamed from: ats */
class ats extends am<C> {
    final /* synthetic */ am a;
    final /* synthetic */ atr b;
    private C c;

    ats(atr atr, am amVar, am amVar2) {
        this.b = atr;
        this.a = amVar2;
        super(amVar);
    }

    public /* synthetic */ void b_(Object obj) {
        a((Closeable) obj);
    }

    public void bs_() {
        if (!this.a.b()) {
            this.a.bs_();
        }
    }

    public void a(Throwable th) {
        if (!this.a.b()) {
            this.a.a(th);
        }
    }

    public void a(C c) {
        if (!(this.b.a.a() || this.a.b())) {
            this.a.b_(c);
        }
        b(c);
    }

    public void c() {
        super.c();
        a(dbl.a(new att(this)));
    }

    private void b(C c) {
        synchronized (this.b.a) {
            if (this.c != null) {
                this.b.a.b(this.c);
                this.c = null;
            }
            if (c != null) {
                if (this.b.a.a()) {
                    cvi.a(c);
                } else {
                    this.c = c;
                }
            }
        }
    }
}
