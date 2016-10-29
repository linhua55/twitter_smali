package rx.subjects;

import defpackage.dan;

/* compiled from: Twttr */
public class i<T, R> extends k<T, R> {
    private final dan<T> c;
    private final k<T, R> d;

    public i(k<T, R> kVar) {
        super(new j(kVar));
        this.d = kVar;
        this.c = new dan(kVar);
    }

    public void bs_() {
        this.c.bs_();
    }

    public void a(Throwable th) {
        this.c.a(th);
    }

    public void b_(T t) {
        this.c.b_(t);
    }
}
