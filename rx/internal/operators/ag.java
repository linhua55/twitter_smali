package rx.internal.operators;

import rx.am;
import rx.exceptions.e;

/* compiled from: Twttr */
final class ag<T> {
    int a;
    T b;
    boolean c;
    boolean d;
    boolean e;

    ag() {
    }

    public synchronized int a(T t) {
        int i;
        this.b = t;
        this.c = true;
        i = this.a + 1;
        this.a = i;
        return i;
    }

    public void a(int i, am<T> amVar, am<?> amVar2) {
        synchronized (this) {
            if (!this.e && this.c && i == this.a) {
                Object obj = this.b;
                this.b = null;
                this.c = false;
                this.e = true;
                try {
                    amVar.b_(obj);
                    synchronized (this) {
                        if (this.d) {
                            amVar.bs_();
                            return;
                        }
                        this.e = false;
                        return;
                    }
                } catch (Throwable th) {
                    e.a(th, amVar2, obj);
                    return;
                }
            }
        }
    }

    public void a(am<T> amVar, am<?> amVar2) {
        synchronized (this) {
            if (this.e) {
                this.d = true;
                return;
            }
            Object obj = this.b;
            boolean z = this.c;
            this.b = null;
            this.c = false;
            this.e = true;
            if (z) {
                try {
                    amVar.b_(obj);
                } catch (Throwable th) {
                    e.a(th, amVar2, obj);
                    return;
                }
            }
            amVar.bs_();
        }
    }

    public synchronized void a() {
        this.a++;
        this.b = null;
        this.c = false;
    }
}
