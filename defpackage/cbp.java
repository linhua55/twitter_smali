package defpackage;

import bbw;
import cni;
import com.twitter.library.api.PromotedEvent;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
/* renamed from: cbp */
public class cbp implements bbw {
    public final PromotedEvent a;
    public final String b;
    public final long c;
    public final String d;
    public final boolean e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;

    private cbp(cbr cbr) {
        this.a = cbr.a;
        this.c = cbr.b;
        this.d = cbr.c;
        this.b = cbr.d;
        this.e = cbr.e;
        this.f = cbr.f;
        this.g = cbr.g;
        this.h = cbr.h;
        this.i = cbr.i;
        this.j = cbr.j;
        this.k = cbr.k;
        this.l = cbr.l;
        this.m = cbr.m;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        cbp cbp = (cbp) obj;
        if (this.a == cbp.a && this.c == cbp.c && this.e == cbp.e && ObjectUtils.a(this.b, cbp.b) && ObjectUtils.a(this.d, cbp.d) && ObjectUtils.a(this.f, cbp.f) && ObjectUtils.a(this.j, cbp.j) && ObjectUtils.a(this.k, cbp.k) && ObjectUtils.a(this.i, cbp.i) && ObjectUtils.a(this.h, cbp.h) && ObjectUtils.a(this.g, cbp.g) && ObjectUtils.a(this.l, cbp.l) && ObjectUtils.a(this.m, cbp.m)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.a, Long.valueOf(this.c), this.d, this.b, Boolean.valueOf(this.e), this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m});
    }

    public static cbr a(PromotedEvent promotedEvent, cni cni) {
        if (promotedEvent != null && cni != null) {
            return new cbr().a(promotedEvent).a(cni);
        }
        throw new NullPointerException("event and pc must not be null");
    }
}
