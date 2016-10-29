package defpackage;

import com.twitter.util.serialization.n;
import java.util.Date;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cie */
public class cie {
    public static final n<cie> a;
    public final String b;
    public final int c;
    public final List<cig> d;
    public final Date e;
    public final Date f;

    static {
        a = new cii();
    }

    public cie(String str, int i, List<cig> list, Date date, Date date2) {
        this.b = str;
        this.c = i;
        this.d = com.twitter.util.collection.n.a(list);
        this.e = date;
        this.f = date2;
    }

    public String a(int i) {
        int i2 = 0;
        for (cig cig : this.d) {
            i2 += cig.c;
            if (i < i2) {
                return cig.b;
            }
        }
        return "unassigned";
    }
}
