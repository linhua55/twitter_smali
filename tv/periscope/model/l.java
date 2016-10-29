package tv.periscope.model;

/* compiled from: Twttr */
final class l extends z {
    private final String b;
    private final String c;
    private final String d;

    l(String str, String str2, String str3) {
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
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
        r2 = r5 instanceof tv.periscope.model.z;
        if (r2 == 0) goto L_0x0052;
    L_0x0009:
        r5 = (tv.periscope.model.z) r5;
        r2 = r4.b;
        if (r2 != 0) goto L_0x002b;
    L_0x000f:
        r2 = r5.a();
        if (r2 != 0) goto L_0x0029;
    L_0x0015:
        r2 = r4.c;
        if (r2 != 0) goto L_0x0038;
    L_0x0019:
        r2 = r5.b();
        if (r2 != 0) goto L_0x0029;
    L_0x001f:
        r2 = r4.d;
        if (r2 != 0) goto L_0x0045;
    L_0x0023:
        r2 = r5.c();
        if (r2 == 0) goto L_0x0004;
    L_0x0029:
        r0 = r1;
        goto L_0x0004;
    L_0x002b:
        r2 = r4.b;
        r3 = r5.a();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0029;
    L_0x0037:
        goto L_0x0015;
    L_0x0038:
        r2 = r4.c;
        r3 = r5.b();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0029;
    L_0x0044:
        goto L_0x001f;
    L_0x0045:
        r2 = r4.d;
        r3 = r5.c();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0029;
    L_0x0051:
        goto L_0x0004;
    L_0x0052:
        r0 = r1;
        goto L_0x0004;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.model.l.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.c == null ? 0 : this.c.hashCode()) ^ (((this.b == null ? 0 : this.b.hashCode()) ^ 1000003) * 1000003)) * 1000003;
        if (this.d != null) {
            i = this.d.hashCode();
        }
        return hashCode ^ i;
    }
}
