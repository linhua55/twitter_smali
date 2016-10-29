package tv.periscope.model;

import java.util.ArrayList;

/* compiled from: Twttr */
final class a extends p {
    private final long a;
    private final long b;
    private final String c;
    private final String d;
    private final z e;
    private final long f;
    private final boolean g;
    private final String h;
    private final String i;
    private final String j;
    private final long k;
    private final long l;
    private final double m;
    private final double n;
    private final String o;
    private final boolean p;
    private final String q;
    private final String r;
    private final String s;
    private final String t;
    private final String u;
    private final boolean v;
    private final ArrayList<String> w;
    private final ArrayList<String> x;
    private final ArrayList<String> y;

    private a(long j, long j2, String str, String str2, z zVar, long j3, boolean z, String str3, String str4, String str5, long j4, long j5, double d, double d2, String str6, boolean z2, String str7, String str8, String str9, String str10, String str11, boolean z3, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3) {
        this.a = j;
        this.b = j2;
        if (str == null) {
            throw new NullPointerException("Null id");
        }
        this.c = str;
        this.d = str2;
        if (zVar == null) {
            throw new NullPointerException("Null location");
        }
        this.e = zVar;
        this.f = j3;
        this.g = z;
        this.h = str3;
        this.i = str4;
        this.j = str5;
        this.k = j4;
        this.l = j5;
        this.m = d;
        this.n = d2;
        if (str6 == null) {
            throw new NullPointerException("Null userId");
        }
        this.o = str6;
        this.p = z2;
        this.q = str7;
        this.r = str8;
        if (str9 == null) {
            throw new NullPointerException("Null userDisplayName");
        }
        this.s = str9;
        this.t = str10;
        this.u = str11;
        this.v = z3;
        this.w = arrayList;
        this.x = arrayList2;
        this.y = arrayList3;
    }

    public long a() {
        return this.a;
    }

    public long b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }

    public z e() {
        return this.e;
    }

    public long f() {
        return this.f;
    }

    public boolean g() {
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

    public long k() {
        return this.k;
    }

    public long l() {
        return this.l;
    }

    public double m() {
        return this.m;
    }

    public double n() {
        return this.n;
    }

    public String o() {
        return this.o;
    }

    public boolean p() {
        return this.p;
    }

    public String q() {
        return this.q;
    }

    public String r() {
        return this.r;
    }

    public String s() {
        return this.s;
    }

    public String t() {
        return this.t;
    }

    public String u() {
        return this.u;
    }

    public boolean v() {
        return this.v;
    }

    public ArrayList<String> w() {
        return this.w;
    }

    public ArrayList<String> x() {
        return this.x;
    }

    public ArrayList<String> y() {
        return this.y;
    }

    public String toString() {
        return "Broadcast{timedOutTime=" + this.a + ", " + "pingTime=" + this.b + ", " + "id=" + this.c + ", " + "title=" + this.d + ", " + "location=" + this.e + ", " + "createdAtMillis=" + this.f + ", " + "featured=" + this.g + ", " + "featuredCategory=" + this.h + ", " + "featuredCategoryColor=" + this.i + ", " + "featuredReason=" + this.j + ", " + "sortScore=" + this.k + ", " + "startTimeMillis=" + this.l + ", " + "ipLat=" + this.m + ", " + "ipLong=" + this.n + ", " + "userId=" + this.o + ", " + "locked=" + this.p + ", " + "imageUrl=" + this.q + ", " + "imageUrlSmall=" + this.r + ", " + "userDisplayName=" + this.s + ", " + "profileImageUrl=" + this.t + ", " + "twitterUsername=" + this.u + ", " + "hasLocation=" + this.v + ", " + "shareUserIds=" + this.w + ", " + "shareUserDisplayNames=" + this.x + ", " + "heartThemes=" + this.y + "}";
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r7) {
        /*
        r6 = this;
        r0 = 1;
        r1 = 0;
        if (r7 != r6) goto L_0x0005;
    L_0x0004:
        return r0;
    L_0x0005:
        r2 = r7 instanceof tv.periscope.model.p;
        if (r2 == 0) goto L_0x01b4;
    L_0x0009:
        r7 = (tv.periscope.model.p) r7;
        r2 = r6.a;
        r4 = r7.a();
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x0117;
    L_0x0015:
        r2 = r6.b;
        r4 = r7.b();
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x0117;
    L_0x001f:
        r2 = r6.c;
        r3 = r7.c();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x002b:
        r2 = r6.d;
        if (r2 != 0) goto L_0x011a;
    L_0x002f:
        r2 = r7.d();
        if (r2 != 0) goto L_0x0117;
    L_0x0035:
        r2 = r6.e;
        r3 = r7.e();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x0041:
        r2 = r6.f;
        r4 = r7.f();
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x0117;
    L_0x004b:
        r2 = r6.g;
        r3 = r7.g();
        if (r2 != r3) goto L_0x0117;
    L_0x0053:
        r2 = r6.h;
        if (r2 != 0) goto L_0x0128;
    L_0x0057:
        r2 = r7.h();
        if (r2 != 0) goto L_0x0117;
    L_0x005d:
        r2 = r6.i;
        if (r2 != 0) goto L_0x0136;
    L_0x0061:
        r2 = r7.i();
        if (r2 != 0) goto L_0x0117;
    L_0x0067:
        r2 = r6.j;
        if (r2 != 0) goto L_0x0144;
    L_0x006b:
        r2 = r7.j();
        if (r2 != 0) goto L_0x0117;
    L_0x0071:
        r2 = r6.k;
        r4 = r7.k();
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x0117;
    L_0x007b:
        r2 = r6.l;
        r4 = r7.l();
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x0117;
    L_0x0085:
        r2 = r6.m;
        r2 = java.lang.Double.doubleToLongBits(r2);
        r4 = r7.m();
        r4 = java.lang.Double.doubleToLongBits(r4);
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x0117;
    L_0x0097:
        r2 = r6.n;
        r2 = java.lang.Double.doubleToLongBits(r2);
        r4 = r7.n();
        r4 = java.lang.Double.doubleToLongBits(r4);
        r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r2 != 0) goto L_0x0117;
    L_0x00a9:
        r2 = r6.o;
        r3 = r7.o();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x00b5:
        r2 = r6.p;
        r3 = r7.p();
        if (r2 != r3) goto L_0x0117;
    L_0x00bd:
        r2 = r6.q;
        if (r2 != 0) goto L_0x0152;
    L_0x00c1:
        r2 = r7.q();
        if (r2 != 0) goto L_0x0117;
    L_0x00c7:
        r2 = r6.r;
        if (r2 != 0) goto L_0x0160;
    L_0x00cb:
        r2 = r7.r();
        if (r2 != 0) goto L_0x0117;
    L_0x00d1:
        r2 = r6.s;
        r3 = r7.s();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x00dd:
        r2 = r6.t;
        if (r2 != 0) goto L_0x016e;
    L_0x00e1:
        r2 = r7.t();
        if (r2 != 0) goto L_0x0117;
    L_0x00e7:
        r2 = r6.u;
        if (r2 != 0) goto L_0x017c;
    L_0x00eb:
        r2 = r7.u();
        if (r2 != 0) goto L_0x0117;
    L_0x00f1:
        r2 = r6.v;
        r3 = r7.v();
        if (r2 != r3) goto L_0x0117;
    L_0x00f9:
        r2 = r6.w;
        if (r2 != 0) goto L_0x018a;
    L_0x00fd:
        r2 = r7.w();
        if (r2 != 0) goto L_0x0117;
    L_0x0103:
        r2 = r6.x;
        if (r2 != 0) goto L_0x0198;
    L_0x0107:
        r2 = r7.x();
        if (r2 != 0) goto L_0x0117;
    L_0x010d:
        r2 = r6.y;
        if (r2 != 0) goto L_0x01a6;
    L_0x0111:
        r2 = r7.y();
        if (r2 == 0) goto L_0x0004;
    L_0x0117:
        r0 = r1;
        goto L_0x0004;
    L_0x011a:
        r2 = r6.d;
        r3 = r7.d();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x0126:
        goto L_0x0035;
    L_0x0128:
        r2 = r6.h;
        r3 = r7.h();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x0134:
        goto L_0x005d;
    L_0x0136:
        r2 = r6.i;
        r3 = r7.i();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x0142:
        goto L_0x0067;
    L_0x0144:
        r2 = r6.j;
        r3 = r7.j();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x0150:
        goto L_0x0071;
    L_0x0152:
        r2 = r6.q;
        r3 = r7.q();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x015e:
        goto L_0x00c7;
    L_0x0160:
        r2 = r6.r;
        r3 = r7.r();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x016c:
        goto L_0x00d1;
    L_0x016e:
        r2 = r6.t;
        r3 = r7.t();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x017a:
        goto L_0x00e7;
    L_0x017c:
        r2 = r6.u;
        r3 = r7.u();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x0188:
        goto L_0x00f1;
    L_0x018a:
        r2 = r6.w;
        r3 = r7.w();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x0196:
        goto L_0x0103;
    L_0x0198:
        r2 = r6.x;
        r3 = r7.x();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x01a4:
        goto L_0x010d;
    L_0x01a6:
        r2 = r6.y;
        r3 = r7.y();
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0117;
    L_0x01b2:
        goto L_0x0004;
    L_0x01b4:
        r0 = r1;
        goto L_0x0004;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.model.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i;
        int i2 = 1231;
        int i3 = 0;
        int hashCode = ((int) (((long) (((((this.d == null ? 0 : this.d.hashCode()) ^ (((((int) (((long) (((int) (((long) 1000003) ^ ((this.a >>> 32) ^ this.a))) * 1000003)) ^ ((this.b >>> 32) ^ this.b))) * 1000003) ^ this.c.hashCode()) * 1000003)) * 1000003) ^ this.e.hashCode()) * 1000003)) ^ ((this.f >>> 32) ^ this.f))) * 1000003;
        if (this.g) {
            i = 1231;
        } else {
            i = 1237;
        }
        hashCode = ((this.i == null ? 0 : this.i.hashCode()) ^ (((this.h == null ? 0 : this.h.hashCode()) ^ ((i ^ hashCode) * 1000003)) * 1000003)) * 1000003;
        if (this.j == null) {
            i = 0;
        } else {
            i = this.j.hashCode();
        }
        i = ((this.u == null ? 0 : this.u.hashCode()) ^ (((this.t == null ? 0 : this.t.hashCode()) ^ (((((this.r == null ? 0 : this.r.hashCode()) ^ (((this.q == null ? 0 : this.q.hashCode()) ^ (((this.p ? 1231 : 1237) ^ (((((int) (((long) (((int) (((long) (((int) (((long) (((int) (((long) ((i ^ hashCode) * 1000003)) ^ ((this.k >>> 32) ^ this.k))) * 1000003)) ^ ((this.l >>> 32) ^ this.l))) * 1000003)) ^ ((Double.doubleToLongBits(this.m) >>> 32) ^ Double.doubleToLongBits(this.m)))) * 1000003)) ^ ((Double.doubleToLongBits(this.n) >>> 32) ^ Double.doubleToLongBits(this.n)))) * 1000003) ^ this.o.hashCode()) * 1000003)) * 1000003)) * 1000003)) * 1000003) ^ this.s.hashCode()) * 1000003)) * 1000003)) * 1000003;
        if (!this.v) {
            i2 = 1237;
        }
        i = ((this.x == null ? 0 : this.x.hashCode()) ^ (((this.w == null ? 0 : this.w.hashCode()) ^ ((i ^ i2) * 1000003)) * 1000003)) * 1000003;
        if (this.y != null) {
            i3 = this.y.hashCode();
        }
        return i ^ i3;
    }
}
