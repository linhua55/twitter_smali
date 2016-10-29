package defpackage;

/* compiled from: Twttr */
/* renamed from: czy */
abstract class czy<E> extends czg<E> {
    private static final Integer e;
    protected final int d;

    static {
        e = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    }

    public czy(int i) {
        super(i);
        this.d = Math.min(i / 4, e.intValue());
    }
}
