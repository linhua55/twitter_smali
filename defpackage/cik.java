package defpackage;

import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cik */
public class cik {
    public final String a;
    public final Object b;
    public final List<Object> c;

    public cik(String str, Object obj, List<Object> list) {
        this.a = str;
        this.b = obj;
        this.c = n.a(list);
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        cik cik = (cik) obj;
        if (this.a.equals(cik.a) && ObjectUtils.a(this.b, cik.b) && this.c.equals(cik.c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.b != null ? this.b.hashCode() : 0) + (this.a.hashCode() * 31)) * 31) + this.c.hashCode();
    }
}
