package rx.internal.operators;

import java.util.Arrays;
import rx.am;
import rx.exceptions.CompositeException;
import rx.exceptions.e;

/* compiled from: Twttr */
class as extends am<T> {
    final /* synthetic */ am a;
    final /* synthetic */ ar b;
    private boolean c;

    as(ar arVar, am amVar, am amVar2) {
        this.b = arVar;
        this.a = amVar2;
        super(amVar);
        this.c = false;
    }

    public void bs_() {
        if (!this.c) {
            try {
                this.b.a.bs_();
                this.c = true;
                this.a.bs_();
            } catch (Throwable th) {
                e.a(th, this);
            }
        }
    }

    public void a(Throwable th) {
        e.a(th);
        if (!this.c) {
            this.c = true;
            try {
                this.b.a.a(th);
                this.a.a(th);
            } catch (Throwable th2) {
                e.a(th2);
                this.a.a(new CompositeException(Arrays.asList(new Throwable[]{th, th2})));
            }
        }
    }

    public void b_(T t) {
        if (!this.c) {
            try {
                this.b.a.b_(t);
                this.a.b_(t);
            } catch (Throwable th) {
                e.a(th, this, t);
            }
        }
    }
}
