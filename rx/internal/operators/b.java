package rx.internal.operators;

import defpackage.dbj;
import rx.am;
import rx.internal.util.k;
import rx.o;
import rx.r;

/* compiled from: Twttr */
final class b<T> extends k implements r<T> {
    static final ReplayProducer<?>[] d;
    final o<? extends T> a;
    final dbj b;
    volatile ReplayProducer<?>[] c;
    final NotificationLite<T> e;
    volatile boolean f;
    boolean g;

    static {
        d = new ReplayProducer[0];
    }

    public b(o<? extends T> oVar, int i) {
        super(i);
        this.a = oVar;
        this.c = d;
        this.e = NotificationLite.a();
        this.b = new dbj();
    }

    public void a(ReplayProducer<T> replayProducer) {
        synchronized (this.b) {
            Object obj = this.c;
            int length = obj.length;
            Object obj2 = new ReplayProducer[(length + 1)];
            System.arraycopy(obj, 0, obj2, 0, length);
            obj2[length] = replayProducer;
            this.c = obj2;
        }
    }

    public void b(ReplayProducer<T> replayProducer) {
        int i = 0;
        synchronized (this.b) {
            Object obj = this.c;
            int length = obj.length;
            while (i < length) {
                if (obj[i].equals(replayProducer)) {
                    break;
                }
                i++;
            }
            i = -1;
            if (i < 0) {
            } else if (length == 1) {
                this.c = d;
            } else {
                Object obj2 = new ReplayProducer[(length - 1)];
                System.arraycopy(obj, 0, obj2, 0, i);
                System.arraycopy(obj, i + 1, obj2, i, (length - i) - 1);
                this.c = obj2;
            }
        }
    }

    public void b() {
        am cVar = new c(this);
        this.b.a(cVar);
        this.a.a(cVar);
        this.f = true;
    }

    public void b_(T t) {
        if (!this.g) {
            b(this.e.a((Object) t));
            c();
        }
    }

    public void a(Throwable th) {
        if (!this.g) {
            this.g = true;
            b(this.e.a(th));
            this.b.K_();
            c();
        }
    }

    public void bs_() {
        if (!this.g) {
            this.g = true;
            b(this.e.b());
            this.b.K_();
            c();
        }
    }

    void c() {
        for (ReplayProducer c : this.c) {
            c.c();
        }
    }
}
