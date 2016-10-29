package tv.periscope.model;

/* compiled from: Twttr */
final class h extends u {
    private final int a;
    private final String b;
    private final String c;
    private final boolean d;
    private final String e;
    private final String f;
    private final int g;

    h(int i, String str, String str2, boolean z, String str3, String str4, int i2) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = z;
        this.e = str3;
        this.f = str4;
        this.g = i2;
    }

    public int a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public String f() {
        return this.f;
    }

    public int g() {
        return this.g;
    }

    public String toString() {
        return "ChatAccess{participantIndex=" + this.a + ", " + "roomId=" + this.b + ", " + "lifeCycleToken=" + this.c + ", " + "shouldLog=" + this.d + ", " + "accessToken=" + this.e + ", " + "endpoint=" + this.f + ", " + "chatmanPerms=" + this.g + "}";
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r5) {
        /*
        r4 = this;
        r0 = 1;
        r1 = 0;
        if (r5 != r4) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        r2 = r5 instanceof tv.periscope.model.u;
        if (r2 == 0) goto L_0x0081;
    L_0x0009:
        r5 = (tv.periscope.model.u) r5;
        r2 = r4.a;
        r3 = r5.a();
        if (r2 != r3) goto L_0x004b;
    L_0x0013:
        r2 = r4.b;
        if (r2 != 0) goto L_0x004d;
    L_0x0017:
        r2 = r5.b();
        if (r2 != 0) goto L_0x004b;
    L_0x001d:
        r2 = r4.c;
        if (r2 != 0) goto L_0x005a;
    L_0x0021:
        r2 = r5.c();
        if (r2 != 0) goto L_0x004b;
    L_0x0027:
        r2 = r4.d;
        r3 = r5.d();
        if (r2 != r3) goto L_0x004b;
    L_0x002f:
        r2 = r4.e;
        if (r2 != 0) goto L_0x0067;
    L_0x0033:
        r2 = r5.e();
        if (r2 != 0) goto L_0x004b;
    L_0x0039:
        r2 = r4.f;
        if (r2 != 0) goto L_0x0074;
    L_0x003d:
        r2 = r5.f();
        if (r2 != 0) goto L_0x004b;
    L_0x0043:
        r2 = r4.g;
        r3 = r5.g();
        if (r2 == r3) goto L_0x0004;
    L_0x004b:
        r0 = r1;
        goto L_0x0004;
    L_0x004d:
        r2 = r4.b;
        r3 = r5.b();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x004b;
    L_0x0059:
        goto L_0x001d;
    L_0x005a:
        r2 = r4.c;
        r3 = r5.c();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x004b;
    L_0x0066:
        goto L_0x0027;
    L_0x0067:
        r2 = r4.e;
        r3 = r5.e();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x004b;
    L_0x0073:
        goto L_0x0039;
    L_0x0074:
        r2 = r4.f;
        r3 = r5.f();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x004b;
    L_0x0080:
        goto L_0x0043;
    L_0x0081:
        r0 = r1;
        goto L_0x0004;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.model.h.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.e == null ? 0 : this.e.hashCode()) ^ (((this.d ? 1231 : 1237) ^ (((this.c == null ? 0 : this.c.hashCode()) ^ (((this.b == null ? 0 : this.b.hashCode()) ^ ((this.a ^ 1000003) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003;
        if (this.f != null) {
            i = this.f.hashCode();
        }
        return ((hashCode ^ i) * 1000003) ^ this.g;
    }
}
