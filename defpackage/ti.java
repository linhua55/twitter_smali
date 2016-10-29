package defpackage;

import android.content.Context;
import cgu;
import com.twitter.library.api.search.TwitterTypeAheadGroup;
import cvi;
import sw;

/* compiled from: Twttr */
/* renamed from: ti */
public abstract class ti<T, S> implements sw<T, S> {
    protected final Context a;
    protected final int b;
    private final int c;
    private final boolean d;
    private final te e;

    protected abstract cgu<S> a(T t, boolean z);

    protected abstract void a(T t, TwitterTypeAheadGroup twitterTypeAheadGroup);

    protected abstract boolean a(T t);

    public ti(Context context, int i, int i2, boolean z, te teVar) {
        this.a = context.getApplicationContext();
        this.c = i;
        this.b = i2;
        this.d = z;
        this.e = teVar;
    }

    public void a(T t, sx<T, S> sxVar) {
        boolean z = this.e != null && a(t);
        a(t, sxVar, z);
    }

    public void a() {
        if (this.e != null) {
            this.e.a();
        }
    }

    protected String b(T t) {
        return t.toString();
    }

    private void a(T t, sx<T, S> sxVar, boolean z) {
        cgu a = a((Object) t, !z);
        if (!z || a.aU_() > 0) {
            sxVar.a(t, a);
        } else {
            cvi.a(a);
        }
        int aU_ = this.d ? this.b : this.b - a.aU_();
        if (z && aU_ > 0) {
            this.e.a(b(t), this.c, aU_, new tj(this, t, sxVar));
        }
    }
}
