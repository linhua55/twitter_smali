package defpackage;

import com.twitter.util.collection.ImmutableSet;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.m;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cni */
public class cni {
    public static final d<cni, cnk> a;
    public static final cni b;
    public final String c;
    public final String d;
    public final long e;
    public final String f;
    public final String g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final long k;
    public final Set<String> l;
    private final Map<String, String> m;

    static {
        a = new cnl();
        b = (cni) new cnk().q();
    }

    public cni(cnk cnk) {
        this.c = cnk.a;
        this.d = cnk.b;
        this.e = cnk.c;
        this.f = cnk.d;
        this.g = cnk.e;
        this.h = cnk.f;
        this.i = cnk.g;
        this.j = cnk.h;
        this.k = cnk.i;
        this.l = ImmutableSet.a(cnk.j);
        this.m = (Map) cnk.k.q();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return ObjectUtils.a(this.c, ((cni) obj).c);
    }

    public int a() {
        return hashCode();
    }

    public int hashCode() {
        return this.c != null ? this.c.hashCode() : 0;
    }

    public boolean b() {
        return "political".equals(this.d);
    }

    public boolean c() {
        return "earned".equals(this.d);
    }

    public boolean d() {
        return this.j;
    }

    public boolean a(String str) {
        return ObjectUtils.a(this.m.get("animation"), (Object) str);
    }

    public static byte[] a(cni cni) {
        return m.a((Object) cni, a);
    }

    public static cni a(byte[] bArr) {
        return (cni) m.a(bArr, a);
    }

    public String toString() {
        return "impressionId: " + this.c + ", disclosureType: " + this.d + ", isPromotedTrend: " + this.j + ", promotedTrendId: " + this.e + ", socialContext: " + this.f + ", advertiserName: " + this.g + ", advertiserId: " + this.k + ", isPAcInTimeline: " + this.h + ", isSuppressMediaForward: " + this.i + ", extras: " + this.m;
    }

    public byte[] e() {
        return m.a((Object) this, a);
    }
}
