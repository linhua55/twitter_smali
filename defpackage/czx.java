package defpackage;

/* compiled from: Twttr */
/* renamed from: czx */
public final class czx<E> extends dac<E> {
    public czx(int i) {
        super(i);
    }

    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException("null elements not allowed");
        }
        Object[] objArr = this.c;
        long j = this.producerIndex;
        long a = a(j);
        if (b(objArr, a) != null) {
            return false;
        }
        b(objArr, a, e);
        d(1 + j);
        return true;
    }

    public E poll() {
        long j = this.consumerIndex;
        long a = a(j);
        Object[] objArr = this.c;
        E b = b(objArr, a);
        if (b == null) {
            return null;
        }
        b(objArr, a, null);
        e(j + 1);
        return b;
    }

    public E peek() {
        return c(a(this.consumerIndex));
    }

    public int size() {
        long b = b();
        while (true) {
            long a = a();
            long b2 = b();
            if (b == b2) {
                return (int) (a - b2);
            }
            b = b2;
        }
    }

    public boolean isEmpty() {
        return a() == b();
    }

    private void d(long j) {
        daf.a.putOrderedLong(this, f, j);
    }

    private void e(long j) {
        daf.a.putOrderedLong(this, e, j);
    }

    private long a() {
        return daf.a.getLongVolatile(this, f);
    }

    private long b() {
        return daf.a.getLongVolatile(this, e);
    }
}
