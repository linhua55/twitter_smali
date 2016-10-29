package defpackage;

import java.util.Arrays;
import rx.am;
import rx.exceptions.CompositeException;
import rx.exceptions.OnErrorFailedException;
import rx.exceptions.UnsubscribeFailedException;
import rx.exceptions.e;
import rx.internal.util.r;

/* compiled from: Twttr */
/* renamed from: dam */
public class dam<T> extends am<T> {
    boolean a;
    private final am<? super T> b;

    public dam(am<? super T> amVar) {
        super(amVar);
        this.a = false;
        this.b = amVar;
    }

    public void bs_() {
        UnsubscribeFailedException unsubscribeFailedException;
        if (!this.a) {
            this.a = true;
            try {
                this.b.bs_();
                try {
                    K_();
                } catch (Throwable th) {
                    r.a(th);
                    unsubscribeFailedException = new UnsubscribeFailedException(th.getMessage(), th);
                }
            } catch (Throwable th2) {
                try {
                    K_();
                } catch (Throwable th3) {
                    r.a(th3);
                    unsubscribeFailedException = new UnsubscribeFailedException(th3.getMessage(), th3);
                }
            }
        }
    }

    public void a(Throwable th) {
        e.a(th);
        if (!this.a) {
            this.a = true;
            b(th);
        }
    }

    public void b_(T t) {
        try {
            if (!this.a) {
                this.b.b_(t);
            }
        } catch (Throwable th) {
            e.a(th, this);
        }
    }

    protected void b(Throwable th) {
        r.a(th);
        try {
            this.b.a(th);
            try {
                K_();
            } catch (Throwable e) {
                r.a(e);
                throw new OnErrorFailedException(e);
            }
        } catch (Throwable th2) {
            r.a(th2);
            OnErrorFailedException onErrorFailedException = new OnErrorFailedException("Error occurred when trying to propagate error to Observer.onError and during unsubscription.", new CompositeException(Arrays.asList(new Throwable[]{th, e, th2})));
        }
    }
}
