package defpackage;

/* compiled from: Twttr */
/* renamed from: czn */
abstract class czn<E> extends czl<E> {
    private static final long e;
    private volatile long producerIndex;

    static {
        e = daf.a(czn.class, "producerIndex");
    }

    public czn(int i) {
        super(i);
    }

    protected final long b() {
        return this.producerIndex;
    }

    protected final boolean c(long j, long j2) {
        return daf.a.compareAndSwapLong(this, e, j, j2);
    }
}
