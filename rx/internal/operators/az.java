package rx.internal.operators;

import cyw;
import rx.am;
import rx.exceptions.OnErrorThrowable;
import rx.exceptions.e;
import rx.internal.util.r;
import rx.s;

/* compiled from: Twttr */
final class az<T> extends am<T> {
    final am<? super T> a;
    final cyw<? super T, Boolean> b;
    boolean c;

    public az(am<? super T> amVar, cyw<? super T, Boolean> cyw__super_T__java_lang_Boolean) {
        this.a = amVar;
        this.b = cyw__super_T__java_lang_Boolean;
        a(0);
    }

    public void b_(T t) {
        try {
            if (((Boolean) this.b.a(t)).booleanValue()) {
                this.a.b_(t);
            } else {
                a(1);
            }
        } catch (Throwable th) {
            e.a(th);
            K_();
            a(OnErrorThrowable.a(th, t));
        }
    }

    public void a(Throwable th) {
        if (this.c) {
            r.a(th);
            return;
        }
        this.c = true;
        this.a.a(th);
    }

    public void bs_() {
        if (!this.c) {
            this.a.bs_();
        }
    }

    public void a(s sVar) {
        super.a(sVar);
        this.a.a(sVar);
    }
}
