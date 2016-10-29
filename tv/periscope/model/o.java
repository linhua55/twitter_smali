package tv.periscope.model;

import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
final class o extends ac {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final String e;
    private final p f;
    private final List<v> g;
    private final String h;
    private final int[] i;

    o(String str, String str2, String str3, String str4, String str5, p pVar, List<v> list, String str6, int[] iArr) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        if (pVar == null) {
            throw new NullPointerException("Null broadcast");
        }
        this.f = pVar;
        if (list == null) {
            throw new NullPointerException("Null cookies");
        }
        this.g = list;
        this.h = str6;
        this.i = iArr;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public p f() {
        return this.f;
    }

    public List<v> g() {
        return this.g;
    }

    public String h() {
        return this.h;
    }

    public int[] i() {
        return this.i == null ? null : (int[]) this.i.clone();
    }

    public String toString() {
        return "VideoAccess{chatToken=" + this.a + ", " + "lifeCycleToken=" + this.b + ", " + "rtmpUrl=" + this.c + ", " + "replayUrl=" + this.d + ", " + "hlsUrl=" + this.e + ", " + "broadcast=" + this.f + ", " + "cookies=" + this.g + ", " + "shareUrl=" + this.h + ", " + "pspVersion=" + Arrays.toString(this.i) + "}";
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r5) {
        /*
        r4 = this;
        r1 = 1;
        r2 = 0;
        if (r5 != r4) goto L_0x0005;
    L_0x0004:
        return r1;
    L_0x0005:
        r0 = r5 instanceof tv.periscope.model.ac;
        if (r0 == 0) goto L_0x00c6;
    L_0x0009:
        r5 = (tv.periscope.model.ac) r5;
        r0 = r4.a;
        if (r0 != 0) goto L_0x0072;
    L_0x000f:
        r0 = r5.a();
        if (r0 != 0) goto L_0x007e;
    L_0x0015:
        r0 = r4.b;
        if (r0 != 0) goto L_0x0080;
    L_0x0019:
        r0 = r5.b();
        if (r0 != 0) goto L_0x007e;
    L_0x001f:
        r0 = r4.c;
        if (r0 != 0) goto L_0x008d;
    L_0x0023:
        r0 = r5.c();
        if (r0 != 0) goto L_0x007e;
    L_0x0029:
        r0 = r4.d;
        if (r0 != 0) goto L_0x009a;
    L_0x002d:
        r0 = r5.d();
        if (r0 != 0) goto L_0x007e;
    L_0x0033:
        r0 = r4.e;
        if (r0 != 0) goto L_0x00a7;
    L_0x0037:
        r0 = r5.e();
        if (r0 != 0) goto L_0x007e;
    L_0x003d:
        r0 = r4.f;
        r3 = r5.f();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x007e;
    L_0x0049:
        r0 = r4.g;
        r3 = r5.g();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x007e;
    L_0x0055:
        r0 = r4.h;
        if (r0 != 0) goto L_0x00b4;
    L_0x0059:
        r0 = r5.h();
        if (r0 != 0) goto L_0x007e;
    L_0x005f:
        r3 = r4.i;
        r0 = r5 instanceof tv.periscope.model.o;
        if (r0 == 0) goto L_0x00c1;
    L_0x0065:
        r5 = (tv.periscope.model.o) r5;
        r0 = r5.i;
    L_0x0069:
        r0 = java.util.Arrays.equals(r3, r0);
        if (r0 == 0) goto L_0x007e;
    L_0x006f:
        r0 = r1;
    L_0x0070:
        r1 = r0;
        goto L_0x0004;
    L_0x0072:
        r0 = r4.a;
        r3 = r5.a();
        r0 = r0.equals(r3);
        if (r0 != 0) goto L_0x0015;
    L_0x007e:
        r0 = r2;
        goto L_0x0070;
    L_0x0080:
        r0 = r4.b;
        r3 = r5.b();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x007e;
    L_0x008c:
        goto L_0x001f;
    L_0x008d:
        r0 = r4.c;
        r3 = r5.c();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x007e;
    L_0x0099:
        goto L_0x0029;
    L_0x009a:
        r0 = r4.d;
        r3 = r5.d();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x007e;
    L_0x00a6:
        goto L_0x0033;
    L_0x00a7:
        r0 = r4.e;
        r3 = r5.e();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x007e;
    L_0x00b3:
        goto L_0x003d;
    L_0x00b4:
        r0 = r4.h;
        r3 = r5.h();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x007e;
    L_0x00c0:
        goto L_0x005f;
    L_0x00c1:
        r0 = r5.i();
        goto L_0x0069;
    L_0x00c6:
        r1 = r2;
        goto L_0x0004;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.model.o.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((((((this.e == null ? 0 : this.e.hashCode()) ^ (((this.d == null ? 0 : this.d.hashCode()) ^ (((this.c == null ? 0 : this.c.hashCode()) ^ (((this.b == null ? 0 : this.b.hashCode()) ^ (((this.a == null ? 0 : this.a.hashCode()) ^ 1000003) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003) ^ this.f.hashCode()) * 1000003) ^ this.g.hashCode()) * 1000003;
        if (this.h != null) {
            i = this.h.hashCode();
        }
        return ((hashCode ^ i) * 1000003) ^ Arrays.hashCode(this.i);
    }
}
