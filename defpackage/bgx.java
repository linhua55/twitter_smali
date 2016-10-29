package defpackage;

import bgv;
import com.twitter.model.dms.b;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
/* renamed from: bgx */
public abstract class bgx<E extends bgv, B extends bgx<E, B, D>, D> extends b<E, B> {
    boolean a;
    boolean b;
    D c;
    private long d;

    bgx() {
        this.d = -1;
    }

    bgx(bgv bgv) {
        super(bgv);
        this.d = -1;
        this.a = bgv.b;
    }

    protected void X_() {
        super.X_();
        if (this.d <= 0) {
            this.d = -1;
        }
        this.b = this.a;
    }

    public B a(boolean z) {
        this.a = z;
        return (bgx) ObjectUtils.a(this);
    }

    public B a(long j) {
        this.d = j;
        return (bgx) ObjectUtils.a(this);
    }

    public B a(D d) {
        this.c = d;
        return (bgx) ObjectUtils.a(this);
    }

    boolean d() {
        return this.c != null;
    }
}
