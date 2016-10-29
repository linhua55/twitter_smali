package defpackage;

/* compiled from: Twttr */
/* renamed from: czv */
abstract class czv<E> extends czr<E> {
    protected static final long e;
    private volatile long producerIndex;

    static {
        e = daf.a(czv.class, "producerIndex");
    }

    protected final long b() {
        return this.producerIndex;
    }

    protected final void d(long j) {
        daf.a.putOrderedLong(this, e, j);
    }

    public czv(int i) {
        super(i);
    }
}
