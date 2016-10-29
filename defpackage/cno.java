package defpackage;

import cnp;
import com.twitter.util.object.ObjectUtils;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cno */
public class cno {
    public final long a;
    public final String b;
    public final List<Long> c;
    public final String d;
    public final long e;
    public final long f;

    public cno(cnp cnp) {
        this.a = cnp.a(cnp);
        this.b = cnp.b(cnp);
        this.c = cnp.c(cnp);
        this.d = cnp.d(cnp);
        this.e = cnp.e(cnp);
        this.f = cnp.f(cnp);
    }

    public int hashCode() {
        return ObjectUtils.a(Long.valueOf(this.a), this.b, this.d, Long.valueOf(this.e), Long.valueOf(this.f));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof cno)) {
            return false;
        }
        cno cno = (cno) obj;
        if (ObjectUtils.a(Long.valueOf(this.a), Long.valueOf(cno.a)) && ObjectUtils.a(this.b, cno.b) && ObjectUtils.a(this.d, cno.d) && ObjectUtils.a(Long.valueOf(this.e), Long.valueOf(cno.e)) && ObjectUtils.a(Long.valueOf(this.f), Long.valueOf(cno.f))) {
            return true;
        }
        return false;
    }
}
