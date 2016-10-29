package rx.internal.operators;

import cyw;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicLong;
import rx.am;

/* compiled from: Twttr */
final class db<T> extends am<T> implements cyw<Object, T> {
    final am<? super T> a;
    final AtomicLong b;
    final ArrayDeque<Object> c;
    final int d;
    final NotificationLite<T> e;

    public db(am<? super T> amVar, int i) {
        this.a = amVar;
        this.d = i;
        this.b = new AtomicLong();
        this.c = new ArrayDeque();
        this.e = NotificationLite.a();
    }

    public void b_(T t) {
        if (this.c.size() == this.d) {
            this.c.poll();
        }
        this.c.offer(this.e.a((Object) t));
    }

    public void a(Throwable th) {
        this.c.clear();
        this.a.a(th);
    }

    public void bs_() {
        a.a(this.b, this.c, this.a, this);
    }

    public T a(Object obj) {
        return this.e.d(obj);
    }

    void b(long j) {
        if (j > 0) {
            a.a(this.b, j, this.c, this.a, this);
        }
    }
}
