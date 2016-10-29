package rx;

import cys;
import cyw;
import defpackage.dam;
import defpackage.dax;
import defpackage.dbb;
import java.util.concurrent.Callable;
import rx.exceptions.e;
import rx.internal.operators.ar;
import rx.internal.operators.bd;
import rx.internal.operators.bj;
import rx.internal.util.UtilityFunctions;
import rx.internal.util.ad;

/* compiled from: Twttr */
public class w<T> {
    static dbb b;
    final p<T> a;

    protected w(ak<T> akVar) {
        this.a = new x(this, akVar);
    }

    private w(p<T> pVar) {
        this.a = pVar;
    }

    static {
        b = dax.a().d();
    }

    public static <T> w<T> a(ak<T> akVar) {
        return new w(b.a((ak) akVar));
    }

    public final <R> w<R> a(q<? extends R, ? super T> qVar) {
        return new w(new af(this, qVar));
    }

    private static <T> o<T> b(w<T> wVar) {
        return o.a(wVar.a);
    }

    public static <T> w<T> a(Callable<? extends T> callable) {
        return a(new ah(callable));
    }

    public static <T> w<T> a(T t) {
        return ad.b(t);
    }

    public static <T> w<T> a(w<? extends w<? extends T>> wVar) {
        if (wVar instanceof ad) {
            return ((ad) wVar).d(UtilityFunctions.b());
        }
        return a(new ai(wVar));
    }

    public final <R> w<R> a(cyw<? super T, ? extends w<? extends R>> cyw__super_T___extends_rx_w__extends_R) {
        if (this instanceof ad) {
            return ((ad) this).d(cyw__super_T___extends_rx_w__extends_R);
        }
        return a(c(cyw__super_T___extends_rx_w__extends_R));
    }

    public final <R> o<R> b(cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R) {
        return o.b(b(c(cyw__super_T___extends_rx_o__extends_R)));
    }

    public final <R> w<R> c(cyw<? super T, ? extends R> cyw__super_T___extends_R) {
        return a(new bd(cyw__super_T___extends_R));
    }

    public final w<T> a(t tVar) {
        if (this instanceof ad) {
            return ((ad) this).c(tVar);
        }
        return a(new bj(tVar, false));
    }

    public final an a() {
        return b(new z(this));
    }

    public final an a(cys<? super T> cys__super_T) {
        if (cys__super_T != null) {
            return b(new aa(this, cys__super_T));
        }
        throw new IllegalArgumentException("onSuccess can not be null");
    }

    public final an a(am<? super T> amVar) {
        try {
            amVar.c();
            b.a(this, this.a).call(amVar);
            return b.a((an) amVar);
        } catch (Throwable th) {
            e.a(th);
            b.a(new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th));
        }
    }

    public final an b(am<? super T> amVar) {
        an dam;
        if (amVar == null) {
            throw new IllegalArgumentException("observer can not be null");
        } else if (this.a == null) {
            throw new IllegalStateException("onSubscribe function can not be null.");
        } else {
            amVar.c();
            if (!(amVar instanceof dam)) {
                dam = new dam(amVar);
            }
            try {
                b.a(this, this.a).call(dam);
                return b.a(dam);
            } catch (Throwable th) {
                e.a(th);
                b.a(new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th));
            }
        }
    }

    public final an a(al<? super T> alVar) {
        am abVar = new ab(this, alVar);
        alVar.a((an) abVar);
        b(abVar);
        return abVar;
    }

    public final w<T> b(t tVar) {
        if (this instanceof ad) {
            return ((ad) this).c(tVar);
        }
        return a(new ac(this, tVar));
    }

    public final o<T> b() {
        return b(this);
    }

    public final w<T> b(cys<? super T> cys__super_T) {
        return a(new ar(new ag(this, cys__super_T)));
    }
}
