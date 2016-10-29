package defpackage;

import com.twitter.model.core.t;
import com.twitter.model.core.u;
import com.twitter.util.object.ObjectUtils;
import cto;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cfl */
public class cfl<T extends t> {
    public final List<T> a;
    private Iterable<Long> b;

    public cfl(List<T> list) {
        this.a = list;
    }

    public final Iterable<Long> a() {
        if (this.b == null) {
            this.b = u.a(this.a);
        }
        return this.b;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof cfl) && a((cfl) obj));
    }

    public boolean a(cfl cfl) {
        return this == cfl || (cfl != null && cto.b(a(), cfl.a()));
    }

    public int hashCode() {
        return ObjectUtils.a(a());
    }
}
