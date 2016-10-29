package rx.internal.operators;

import java.util.NoSuchElementException;
import rx.al;
import rx.am;

/* compiled from: Twttr */
class r extends am<T> {
    final /* synthetic */ al a;
    final /* synthetic */ q b;
    private boolean c;
    private boolean d;
    private T e;

    r(q qVar, al alVar) {
        this.b = qVar;
        this.a = alVar;
        this.c = false;
        this.d = false;
        this.e = null;
    }

    public void c() {
        a(2);
    }

    public void bs_() {
        if (!this.c) {
            if (this.d) {
                this.a.a(this.e);
            } else {
                this.a.a(new NoSuchElementException("Observable emitted no items"));
            }
        }
    }

    public void a(Throwable th) {
        this.a.a(th);
        K_();
    }

    public void b_(T t) {
        if (this.d) {
            this.c = true;
            this.a.a(new IllegalArgumentException("Observable emitted too many elements"));
            K_();
            return;
        }
        this.d = true;
        this.e = t;
    }
}
