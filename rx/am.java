package rx;

import rx.internal.util.ak;

/* compiled from: Twttr */
public abstract class am<T> implements an, r<T> {
    private final ak a;
    private final am<?> b;
    private s c;
    private long d;

    protected am() {
        this(null, false);
    }

    protected am(am<?> amVar) {
        this(amVar, true);
    }

    protected am(am<?> amVar, boolean z) {
        this.d = Long.MIN_VALUE;
        this.b = amVar;
        ak akVar = (!z || amVar == null) ? new ak() : amVar.a;
        this.a = akVar;
    }

    public final void a(an anVar) {
        this.a.a(anVar);
    }

    public final void K_() {
        this.a.K_();
    }

    public final boolean b() {
        return this.a.b();
    }

    public void c() {
    }

    protected final void a(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("number requested cannot be negative: " + j);
        }
        synchronized (this) {
            if (this.c != null) {
                s sVar = this.c;
                sVar.a(j);
                return;
            }
            b(j);
        }
    }

    private void b(long j) {
        if (this.d == Long.MIN_VALUE) {
            this.d = j;
            return;
        }
        long j2 = this.d + j;
        if (j2 < 0) {
            this.d = Long.MAX_VALUE;
        } else {
            this.d = j2;
        }
    }

    public void a(s sVar) {
        Object obj = null;
        synchronized (this) {
            long j = this.d;
            this.c = sVar;
            if (this.b != null && j == Long.MIN_VALUE) {
                obj = 1;
            }
        }
        if (obj != null) {
            this.b.a(this.c);
        } else if (j == Long.MIN_VALUE) {
            this.c.a(Long.MAX_VALUE);
        } else {
            this.c.a(j);
        }
    }
}
