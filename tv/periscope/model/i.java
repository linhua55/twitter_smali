package tv.periscope.model;

import java.util.Arrays;

/* compiled from: Twttr */
final class i extends w {
    private final u a;
    private final String b;
    private final p c;
    private final String d;
    private final String e;
    private final int f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final int k;
    private final String l;
    private final String m;
    private final boolean n;
    private final byte[] o;
    private final int[] p;

    i(u uVar, String str, p pVar, String str2, String str3, int i, String str4, String str5, String str6, String str7, int i2, String str8, String str9, boolean z, byte[] bArr, int[] iArr) {
        if (uVar == null) {
            throw new NullPointerException("Null chatAccess");
        }
        this.a = uVar;
        this.b = str;
        if (pVar == null) {
            throw new NullPointerException("Null broadcast");
        }
        this.c = pVar;
        if (str2 == null) {
            throw new NullPointerException("Null protocol");
        }
        this.d = str2;
        if (str3 == null) {
            throw new NullPointerException("Null host");
        }
        this.e = str3;
        this.f = i;
        if (str4 == null) {
            throw new NullPointerException("Null application");
        }
        this.g = str4;
        if (str5 == null) {
            throw new NullPointerException("Null streamName");
        }
        this.h = str5;
        if (str6 == null) {
            throw new NullPointerException("Null credential");
        }
        this.i = str6;
        this.j = str7;
        this.k = i2;
        this.l = str8;
        this.m = str9;
        this.n = z;
        this.o = bArr;
        this.p = iArr;
    }

    public u a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public p c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public int f() {
        return this.f;
    }

    public String g() {
        return this.g;
    }

    public String h() {
        return this.h;
    }

    public String i() {
        return this.i;
    }

    public String j() {
        return this.j;
    }

    public int k() {
        return this.k;
    }

    public String l() {
        return this.l;
    }

    public String m() {
        return this.m;
    }

    public boolean n() {
        return this.n;
    }

    public byte[] o() {
        return this.o == null ? null : (byte[]) this.o.clone();
    }

    public int[] p() {
        return this.p == null ? null : (int[]) this.p.clone();
    }

    public String toString() {
        return "CreatedBroadcast{chatAccess=" + this.a + ", " + "cipher=" + this.b + ", " + "broadcast=" + this.c + ", " + "protocol=" + this.d + ", " + "host=" + this.e + ", " + "port=" + this.f + ", " + "application=" + this.g + ", " + "streamName=" + this.h + ", " + "credential=" + this.i + ", " + "privateProtocol=" + this.j + ", " + "privatePort=" + this.k + ", " + "uploadUrl=" + this.l + ", " + "thumbnailUploadUrl=" + this.m + ", " + "canShareTwitter=" + this.n + ", " + "key=" + Arrays.toString(this.o) + ", " + "pspVersion=" + Arrays.toString(this.p) + "}";
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
        r0 = r5 instanceof tv.periscope.model.w;
        if (r0 == 0) goto L_0x0103;
    L_0x0009:
        r5 = (tv.periscope.model.w) r5;
        r0 = r4.a;
        r3 = r5.a();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x00d0;
    L_0x0017:
        r0 = r4.b;
        if (r0 != 0) goto L_0x00c4;
    L_0x001b:
        r0 = r5.b();
        if (r0 != 0) goto L_0x00d0;
    L_0x0021:
        r0 = r4.c;
        r3 = r5.c();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x00d0;
    L_0x002d:
        r0 = r4.d;
        r3 = r5.d();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x00d0;
    L_0x0039:
        r0 = r4.e;
        r3 = r5.e();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x00d0;
    L_0x0045:
        r0 = r4.f;
        r3 = r5.f();
        if (r0 != r3) goto L_0x00d0;
    L_0x004d:
        r0 = r4.g;
        r3 = r5.g();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x00d0;
    L_0x0059:
        r0 = r4.h;
        r3 = r5.h();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x00d0;
    L_0x0065:
        r0 = r4.i;
        r3 = r5.i();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x00d0;
    L_0x0071:
        r0 = r4.j;
        if (r0 != 0) goto L_0x00d2;
    L_0x0075:
        r0 = r5.j();
        if (r0 != 0) goto L_0x00d0;
    L_0x007b:
        r0 = r4.k;
        r3 = r5.k();
        if (r0 != r3) goto L_0x00d0;
    L_0x0083:
        r0 = r4.l;
        if (r0 != 0) goto L_0x00df;
    L_0x0087:
        r0 = r5.l();
        if (r0 != 0) goto L_0x00d0;
    L_0x008d:
        r0 = r4.m;
        if (r0 != 0) goto L_0x00ec;
    L_0x0091:
        r0 = r5.m();
        if (r0 != 0) goto L_0x00d0;
    L_0x0097:
        r0 = r4.n;
        r3 = r5.n();
        if (r0 != r3) goto L_0x00d0;
    L_0x009f:
        r3 = r4.o;
        r0 = r5 instanceof tv.periscope.model.i;
        if (r0 == 0) goto L_0x00f9;
    L_0x00a5:
        r0 = r5;
        r0 = (tv.periscope.model.i) r0;
        r0 = r0.o;
    L_0x00aa:
        r0 = java.util.Arrays.equals(r3, r0);
        if (r0 == 0) goto L_0x00d0;
    L_0x00b0:
        r3 = r4.p;
        r0 = r5 instanceof tv.periscope.model.i;
        if (r0 == 0) goto L_0x00fe;
    L_0x00b6:
        r5 = (tv.periscope.model.i) r5;
        r0 = r5.p;
    L_0x00ba:
        r0 = java.util.Arrays.equals(r3, r0);
        if (r0 == 0) goto L_0x00d0;
    L_0x00c0:
        r0 = r1;
    L_0x00c1:
        r1 = r0;
        goto L_0x0004;
    L_0x00c4:
        r0 = r4.b;
        r3 = r5.b();
        r0 = r0.equals(r3);
        if (r0 != 0) goto L_0x0021;
    L_0x00d0:
        r0 = r2;
        goto L_0x00c1;
    L_0x00d2:
        r0 = r4.j;
        r3 = r5.j();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x00d0;
    L_0x00de:
        goto L_0x007b;
    L_0x00df:
        r0 = r4.l;
        r3 = r5.l();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x00d0;
    L_0x00eb:
        goto L_0x008d;
    L_0x00ec:
        r0 = r4.m;
        r3 = r5.m();
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x00d0;
    L_0x00f8:
        goto L_0x0097;
    L_0x00f9:
        r0 = r5.o();
        goto L_0x00aa;
    L_0x00fe:
        r0 = r5.p();
        goto L_0x00ba;
    L_0x0103:
        r1 = r2;
        goto L_0x0004;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.model.i.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i;
        int i2 = 0;
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        if (this.b == null) {
            i = 0;
        } else {
            i = this.b.hashCode();
        }
        i = ((this.l == null ? 0 : this.l.hashCode()) ^ (((((this.j == null ? 0 : this.j.hashCode()) ^ ((((((((((((((((i ^ hashCode) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e.hashCode()) * 1000003) ^ this.f) * 1000003) ^ this.g.hashCode()) * 1000003) ^ this.h.hashCode()) * 1000003) ^ this.i.hashCode()) * 1000003)) * 1000003) ^ this.k) * 1000003)) * 1000003;
        if (this.m != null) {
            i2 = this.m.hashCode();
        }
        return (((((this.n ? 1231 : 1237) ^ ((i ^ i2) * 1000003)) * 1000003) ^ Arrays.hashCode(this.o)) * 1000003) ^ Arrays.hashCode(this.p);
    }
}
