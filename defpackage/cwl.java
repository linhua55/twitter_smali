package defpackage;

import android.content.Context;

/* compiled from: Twttr */
/* renamed from: cwl */
public abstract class cwl<T> implements cwn<T> {
    private final cwn<T> a;

    protected abstract T a(Context context);

    protected abstract void a(Context context, T t);

    public cwl(cwn<T> cwn_T) {
        this.a = cwn_T;
    }

    public final synchronized T a(Context context, cwo<T> cwo_T) throws Exception {
        T a;
        a = a(context);
        if (a == null) {
            a = this.a != null ? this.a.a(context, cwo_T) : cwo_T.c(context);
            b(context, a);
        }
        return a;
    }

    private void b(Context context, T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        a(context, (Object) t);
    }
}
