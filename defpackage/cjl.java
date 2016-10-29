package defpackage;

import com.twitter.model.core.MediaEntity;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.l;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;

/* compiled from: Twttr */
/* renamed from: cjl */
public class cjl {
    public static final n<cjl> a;
    public final String b;
    public final long c;
    public final long d;
    public final String e;
    public final String f;
    public final MediaEntity g;

    static {
        a = s.a(new l[]{l.a(cjl.class, new cjn())});
    }

    cjl(cjm cjm) {
        this.b = cjm.a;
        this.c = cjm.b;
        this.d = cjm.c;
        this.e = cjm.d;
        this.f = cjm.e;
        this.g = cjm.f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        cjl cjl = (cjl) obj;
        if (this.b.equals(cjl.b) && this.c == cjl.c && this.d == cjl.d && ObjectUtils.a(this.e, cjl.e) && ObjectUtils.a(this.f, cjl.f) && ObjectUtils.a(this.g, cjl.g)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "LiveVideoEvent{id=" + this.b + ", startTime=" + this.c + ", endTime=" + this.d + ", title='" + this.e + '\'' + ", hashtag='" + this.f + '\'' + ", media=" + this.g + '}';
    }

    public int hashCode() {
        return ObjectUtils.a(new Object[]{this.b, Long.valueOf(this.c), Long.valueOf(this.d), this.e, this.f, this.g});
    }
}
