package defpackage;

/* compiled from: Twttr */
/* renamed from: czq */
abstract class czq<E> extends czs<E> {
    protected static final long d;
    private volatile long consumerIndex;

    static {
        d = daf.a(czq.class, "consumerIndex");
    }

    public czq(int i) {
        super(i);
    }

    protected final long a() {
        return this.consumerIndex;
    }

    protected final boolean b(long j, long j2) {
        return daf.a.compareAndSwapLong(this, d, j, j2);
    }
}
