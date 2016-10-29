package defpackage;

/* compiled from: Twttr */
/* renamed from: czk */
abstract class czk<E> extends czm<E> {
    private static final long e;
    private volatile long consumerIndex;

    static {
        e = daf.a(czk.class, "consumerIndex");
    }

    public czk(int i) {
        super(i);
    }

    protected final long a() {
        return this.consumerIndex;
    }

    protected final boolean b(long j, long j2) {
        return daf.a.compareAndSwapLong(this, e, j, j2);
    }
}
