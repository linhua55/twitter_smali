package defpackage;

import rx.am;
import rx.r;

/* compiled from: Twttr */
/* renamed from: dap */
public class dap<T> extends am<T> {
    private final r<T> a;

    public dap(am<? super T> amVar) {
        this(amVar, true);
    }

    public dap(am<? super T> amVar, boolean z) {
        super(amVar, z);
        this.a = new dan(amVar);
    }

    public void bs_() {
        this.a.bs_();
    }

    public void a(Throwable th) {
        this.a.a(th);
    }

    public void b_(T t) {
        this.a.b_(t);
    }
}
