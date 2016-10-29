package defpackage;

/* compiled from: Twttr */
/* renamed from: czi */
public abstract class czi<E> extends czg<E> {
    private static final long e;
    private static final int f;
    protected final long[] d;

    static {
        if (8 == daf.a.arrayIndexScale(long[].class)) {
            f = a + 3;
            e = (long) (daf.a.arrayBaseOffset(long[].class) + (32 << (f - a)));
            return;
        }
        throw new IllegalStateException("Unexpected long[] element size");
    }

    public czi(int i) {
        super(i);
        int i2 = (int) (this.b + 1);
        this.d = new long[((i2 << a) + 64)];
        for (long j = 0; j < ((long) i2); j++) {
            a(this.d, d(j), j);
        }
    }

    protected final long d(long j) {
        return e + ((this.b & j) << f);
    }

    protected final void a(long[] jArr, long j, long j2) {
        daf.a.putOrderedLong(jArr, j, j2);
    }

    protected final long a(long[] jArr, long j) {
        return daf.a.getLongVolatile(jArr, j);
    }
}
