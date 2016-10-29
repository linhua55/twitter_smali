package rx.internal.operators;

import java.util.ArrayList;
import java.util.List;
import rx.am;
import rx.exceptions.e;

/* compiled from: Twttr */
final class aa extends am<T> {
    final am<? super List<T>> a;
    List<T> b;
    boolean c;
    final /* synthetic */ x d;

    public aa(x xVar, am<? super List<T>> amVar) {
        this.d = xVar;
        this.a = amVar;
        this.b = new ArrayList(xVar.b);
    }

    public void b_(T t) {
        synchronized (this) {
            if (this.c) {
                return;
            }
            this.b.add(t);
        }
    }

    public void a(Throwable th) {
        synchronized (this) {
            if (this.c) {
                return;
            }
            this.c = true;
            this.b = null;
            this.a.a(th);
            K_();
        }
    }

    public void bs_() {
        try {
            synchronized (this) {
                if (this.c) {
                    return;
                }
                this.c = true;
                List list = this.b;
                this.b = null;
                this.a.b_(list);
                this.a.bs_();
                K_();
            }
        } catch (Throwable th) {
            e.a(th, this.a);
        }
    }

    void d() {
        synchronized (this) {
            if (this.c) {
                return;
            }
            List list = this.b;
            this.b = new ArrayList(this.d.b);
            try {
                this.a.b_(list);
            } catch (Throwable th) {
                K_();
                synchronized (this) {
                }
                if (!this.c) {
                    this.c = true;
                    e.a(th, this.a);
                }
            }
        }
    }
}
