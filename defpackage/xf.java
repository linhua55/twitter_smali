package defpackage;

import android.content.Context;
import bgv;
import bie;
import com.twitter.android.dl;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: xf */
public abstract class xf<E extends bgv, H extends xg, B extends xf<E, H, B>> extends f<xe> {
    H a;
    E b;
    private bie c;
    private bie d;
    private Context e;
    private dl f;

    public B a(E e) {
        this.b = e;
        return (xf) ObjectUtils.a(this);
    }

    public B a(bie bie) {
        this.c = bie;
        return (xf) ObjectUtils.a(this);
    }

    public B b(bie bie) {
        this.d = bie;
        return (xf) ObjectUtils.a(this);
    }

    public B a(Context context) {
        this.e = context;
        return (xf) ObjectUtils.a(this);
    }

    public B a(dl dlVar) {
        this.f = dlVar;
        return (xf) ObjectUtils.a(this);
    }

    public B a(H h) {
        this.a = h;
        return (xf) ObjectUtils.a(this);
    }

    public boolean bo_() {
        return (!super.bo_() || this.b == null || this.c == null || this.e == null || this.f == null || this.a == null) ? false : true;
    }
}
