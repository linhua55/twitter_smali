package defpackage;

import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: czg */
public abstract class czg<E> extends czh<E> {
    protected static final int a;
    private static final long d;
    private static final int e;
    protected final long b;
    protected final E[] c;

    static {
        a = Integer.getInteger("sparse.shift", 0).intValue();
        int arrayIndexScale = daf.a.arrayIndexScale(Object[].class);
        if (4 == arrayIndexScale) {
            e = a + 2;
        } else if (8 == arrayIndexScale) {
            e = a + 3;
        } else {
            throw new IllegalStateException("Unknown pointer size");
        }
        d = (long) (daf.a.arrayBaseOffset(Object[].class) + (32 << (e - a)));
    }

    public czg(int i) {
        int a = czo.a(i);
        this.b = (long) (a - 1);
        this.c = new Object[((a << a) + 64)];
    }

    protected final long a(long j) {
        return a(j, this.b);
    }

    protected final long a(long j, long j2) {
        return d + ((j & j2) << e);
    }

    protected final void a(long j, E e) {
        a(this.c, j, e);
    }

    protected final void a(E[] eArr, long j, E e) {
        daf.a.putObject(eArr, j, e);
    }

    protected final void b(E[] eArr, long j, E e) {
        daf.a.putOrderedObject(eArr, j, e);
    }

    protected final E b(long j) {
        return a(this.c, j);
    }

    protected final E a(E[] eArr, long j) {
        return daf.a.getObject(eArr, j);
    }

    protected final E c(long j) {
        return b(this.c, j);
    }

    protected final E b(E[] eArr, long j) {
        return daf.a.getObjectVolatile(eArr, j);
    }

    public Iterator<E> iterator() {
        throw new UnsupportedOperationException();
    }

    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }
}
