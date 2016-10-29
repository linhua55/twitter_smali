package rx.internal.util;

import defpackage.daf;
import java.util.Queue;
import rx.an;
import rx.exceptions.MissingBackpressureException;
import rx.internal.operators.NotificationLite;

/* compiled from: Twttr */
public class s implements an {
    static int b;
    public static final int c;
    public static l<Queue<Object>> d;
    public static l<Queue<Object>> e;
    private static final NotificationLite<Object> f;
    public volatile Object a;
    private Queue<Object> g;
    private final int h;
    private final l<Queue<Object>> i;

    public static s c() {
        if (daf.a()) {
            return new s(d, c);
        }
        return new s();
    }

    public static s d() {
        if (daf.a()) {
            return new s(e, c);
        }
        return new s();
    }

    static {
        f = NotificationLite.a();
        b = 128;
        if (p.a()) {
            b = 16;
        }
        String property = System.getProperty("rx.ring-buffer.size");
        if (property != null) {
            try {
                b = Integer.parseInt(property);
            } catch (Exception e) {
                System.err.println("Failed to set 'rx.buffer.size' with value " + property + " => " + e.getMessage());
            }
        }
        c = b;
        d = new t();
        e = new u();
    }

    private s(Queue<Object> queue, int i) {
        this.g = queue;
        this.i = null;
        this.h = i;
    }

    private s(l<Queue<Object>> lVar, int i) {
        this.i = lVar;
        this.g = (Queue) lVar.a();
        this.h = i;
    }

    public synchronized void e() {
        Object obj = this.g;
        l lVar = this.i;
        if (!(lVar == null || obj == null)) {
            obj.clear();
            this.g = null;
            lVar.a(obj);
        }
    }

    public void K_() {
        e();
    }

    s() {
        this(new al(c), c);
    }

    public void a(Object obj) throws MissingBackpressureException {
        Object obj2 = 1;
        Object obj3 = null;
        synchronized (this) {
            Queue queue = this.g;
            if (queue == null) {
                int i = 1;
                obj2 = null;
            } else if (queue.offer(f.a(obj))) {
                obj2 = null;
            }
        }
        if (obj3 != null) {
            throw new IllegalStateException("This instance has been unsubscribed and the queue is no longer usable.");
        } else if (obj2 != null) {
            throw new MissingBackpressureException();
        }
    }

    public void f() {
        if (this.a == null) {
            this.a = f.b();
        }
    }

    public boolean g() {
        Queue queue = this.g;
        if (queue == null) {
            return true;
        }
        return queue.isEmpty();
    }

    public Object h() {
        Object obj = null;
        synchronized (this) {
            Queue queue = this.g;
            if (queue == null) {
            } else {
                Object poll = queue.poll();
                obj = this.a;
                if (poll == null && obj != null && queue.peek() == null) {
                    this.a = null;
                } else {
                    obj = poll;
                }
            }
        }
        return obj;
    }

    public Object i() {
        Object obj;
        synchronized (this) {
            Queue queue = this.g;
            if (queue == null) {
                obj = null;
            } else {
                Object peek = queue.peek();
                obj = this.a;
                if (!(peek == null && obj != null && queue.peek() == null)) {
                    obj = peek;
                }
            }
        }
        return obj;
    }

    public boolean b(Object obj) {
        return f.b(obj);
    }

    public Object c(Object obj) {
        return f.d(obj);
    }

    public boolean b() {
        return this.g == null;
    }
}
