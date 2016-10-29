package defpackage;

import android.content.Context;

/* compiled from: Twttr */
/* renamed from: any */
public class any {
    public static int a;
    private static volatile any b;
    private final anx c;
    private final anz d;
    private volatile Integer e;

    static {
        a = -1;
    }

    public static synchronized void a(Context context) {
        synchronized (any.class) {
            if (b != null) {
                throw new IllegalStateException("YearClass has already been initialized.");
            }
            b = new any(context);
        }
    }

    public static any a() {
        if (b != null) {
            return b;
        }
        throw new IllegalStateException("YearClass has not been initialized.");
    }

    any(Context context) {
        this(new anx(context), new anz(context));
    }

    any(anx anx, anz anz) {
        this.c = anx;
        this.d = anz;
        b();
    }

    public int b() {
        if (this.e == null) {
            this.e = Integer.valueOf(this.d.a());
            if (this.e.intValue() == a) {
                this.e = Integer.valueOf(this.c.a());
                this.d.a(this.e.intValue());
            }
        }
        return this.e.intValue();
    }
}
