package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cgd */
public class cgd {
    public final long a;
    public final String b;
    public final int c;
    public final List<TwitterUser> d;
    public final String e;
    public final boolean f;

    cgd(cge cge) {
        this.a = cge.a;
        this.b = e.b(cge.b);
        this.c = cge.c;
        this.d = cge.e;
        this.e = e.b(cge.d);
        this.f = cge.f;
    }

    public List<Long> a() {
        n d = n.d();
        for (TwitterUser bf_ : this.d) {
            d.c(Long.valueOf(bf_.bf_()));
        }
        return (List) d.q();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        cgd cgd = (cgd) obj;
        if (this.a == cgd.a && this.c == cgd.c && this.b.equals(cgd.b) && this.d.equals(cgd.d) && this.e.equals(cgd.e) && this.f == cgd.f) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "Alert{id=" + this.a + ", title='" + this.b + '\'' + ", type=" + this.c + ", senders=" + this.d + ", region='" + this.e + '\'' + ", isMuted=" + this.f + '}';
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{Long.valueOf(this.a), Integer.valueOf(this.c), this.b, this.d, this.e, Boolean.valueOf(this.f)});
    }

    public cge b() {
        return new cge().a(this.a).a(this.b).a(this.c).b(this.e).b(this.d).a(this.f);
    }
}
