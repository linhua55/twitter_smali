package defpackage;

import com.fasterxml.jackson.core.JsonFactory.Feature;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;
import java.util.concurrent.atomic.AtomicReference;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: hi */
public final class hi {
    protected final hi a;
    protected final AtomicReference<hk> b;
    protected boolean c;
    protected final boolean d;
    protected int e;
    protected int f;
    protected int g;
    protected int[] h;
    protected hn[] i;
    protected hj[] j;
    protected int k;
    protected int l;
    protected BitSet m;
    private final int n;
    private transient boolean o;
    private boolean p;
    private boolean q;
    private boolean r;

    private hi(int i, boolean z, int i2, boolean z2) {
        int i3 = 16;
        this.a = null;
        this.n = i2;
        this.c = z;
        this.d = z2;
        if (i < 16) {
            i = 16;
        } else if (((i - 1) & i) != 0) {
            while (i3 < i) {
                i3 += i3;
            }
            i = i3;
        }
        this.b = new AtomicReference(f(i));
    }

    private hi(hi hiVar, boolean z, int i, boolean z2, hk hkVar) {
        this.a = hiVar;
        this.n = i;
        this.c = z;
        this.d = z2;
        this.b = null;
        this.e = hkVar.a;
        this.g = hkVar.b;
        this.h = hkVar.c;
        this.i = hkVar.d;
        this.j = hkVar.e;
        this.k = hkVar.f;
        this.l = hkVar.g;
        this.f = hkVar.h;
        this.o = false;
        this.p = true;
        this.q = true;
        this.r = true;
    }

    private hk f(int i) {
        return new hk(0, i - 1, new int[i], new hn[i], null, 0, 0, 0);
    }

    public static hi a() {
        long currentTimeMillis = System.currentTimeMillis();
        return hi.a((((int) (currentTimeMillis >>> 32)) + ((int) currentTimeMillis)) | 1);
    }

    protected static hi a(int i) {
        return new hi(64, true, i, true);
    }

    public hi b(int i) {
        return new hi(this, Feature.a.a(i), this.n, Feature.c.a(i), (hk) this.b.get());
    }

    public void b() {
        if (this.a != null && c()) {
            this.a.a(new hk(this));
            this.p = true;
            this.q = true;
            this.r = true;
        }
    }

    private void a(hk hkVar) {
        int i = hkVar.a;
        hk hkVar2 = (hk) this.b.get();
        if (i != hkVar2.a) {
            if (i > 6000) {
                hkVar = f(64);
            }
            this.b.compareAndSet(hkVar2, hkVar);
        }
    }

    public boolean c() {
        return !this.p;
    }

    public static hn d() {
        return ho.b();
    }

    public hn c(int i) {
        int d = d(i);
        int i2 = this.g & d;
        int i3 = this.h[i2];
        if ((((i3 >> 8) ^ d) << 8) == 0) {
            hn hnVar = this.i[i2];
            if (hnVar == null) {
                return null;
            }
            if (hnVar.a(i)) {
                return hnVar;
            }
        } else if (i3 == 0) {
            return null;
        }
        i2 = i3 & 255;
        if (i2 <= 0) {
            return null;
        }
        hj hjVar = this.j[i2 - 1];
        if (hjVar != null) {
            return hjVar.a(d, i, 0);
        }
        return null;
    }

    public hn a(int i, int i2) {
        int d = i2 == 0 ? d(i) : b(i, i2);
        int i3 = this.g & d;
        int i4 = this.h[i3];
        if ((((i4 >> 8) ^ d) << 8) == 0) {
            hn hnVar = this.i[i3];
            if (hnVar == null) {
                return null;
            }
            if (hnVar.a(i, i2)) {
                return hnVar;
            }
        } else if (i4 == 0) {
            return null;
        }
        i3 = i4 & 255;
        if (i3 > 0) {
            hj hjVar = this.j[i3 - 1];
            if (hjVar != null) {
                return hjVar.a(d, i, i2);
            }
        }
        return null;
    }

    public hn a(int[] iArr, int i) {
        int i2 = 0;
        if (i < 3) {
            int i3 = iArr[0];
            if (i >= 2) {
                i2 = iArr[1];
            }
            return a(i3, i2);
        }
        int b = b(iArr, i);
        i2 = this.g & b;
        int i4 = this.h[i2];
        if ((((i4 >> 8) ^ b) << 8) == 0) {
            hn hnVar = this.i[i2];
            if (hnVar == null || hnVar.a(iArr, i)) {
                return hnVar;
            }
        } else if (i4 == 0) {
            return null;
        }
        i2 = i4 & 255;
        if (i2 > 0) {
            hj hjVar = this.j[i2 - 1];
            if (hjVar != null) {
                return hjVar.a(b, iArr, i);
            }
        }
        return null;
    }

    public hn a(String str, int[] iArr, int i) {
        if (this.c) {
            str = InternCache.a.a(str);
        }
        int d = i < 3 ? i == 1 ? d(iArr[0]) : b(iArr[0], iArr[1]) : b(iArr, i);
        hn a = hi.a(d, str, iArr, i);
        a(d, a);
        return a;
    }

    public int d(int i) {
        int i2 = this.n ^ i;
        i2 += i2 >>> 15;
        return i2 ^ (i2 >>> 9);
    }

    public int b(int i, int i2) {
        int i3 = (((i >>> 15) ^ i) + (i2 * 33)) ^ this.n;
        return i3 + (i3 >>> 7);
    }

    public int b(int[] iArr, int i) {
        int i2 = 3;
        if (i < 3) {
            throw new IllegalArgumentException();
        }
        int i3 = iArr[0] ^ this.n;
        i3 = (((i3 + (i3 >>> 9)) * 33) + iArr[1]) * 65599;
        i3 = (i3 + (i3 >>> 15)) ^ iArr[2];
        i3 += i3 >>> 17;
        while (i2 < i) {
            i3 = (i3 * 31) ^ iArr[i2];
            i3 += i3 >>> 3;
            i3 ^= i3 << 7;
            i2++;
        }
        i2 = (i3 >>> 15) + i3;
        return i2 ^ (i2 << 9);
    }

    private void a(int i, hn hnVar) {
        int i2;
        if (this.p) {
            h();
        }
        if (this.o) {
            e();
        }
        this.e++;
        int i3 = i & this.g;
        if (this.i[i3] == null) {
            this.h[i3] = i << 8;
            if (this.q) {
                j();
            }
            this.i[i3] = hnVar;
        } else {
            if (this.r) {
                i();
            }
            this.k++;
            int i4 = this.h[i3];
            i2 = i4 & 255;
            if (i2 == 0) {
                if (this.l <= 254) {
                    i2 = this.l;
                    this.l++;
                    if (i2 >= this.j.length) {
                        k();
                    }
                } else {
                    i2 = g();
                }
                this.h[i3] = (i4 & -256) | (i2 + 1);
            } else {
                i2--;
            }
            hj hjVar = new hj(hnVar, this.j[i2]);
            if (hjVar.d > 100) {
                a(i2, hjVar);
            } else {
                this.j[i2] = hjVar;
                this.f = Math.max(hjVar.d, this.f);
            }
        }
        i2 = this.h.length;
        if (this.e > (i2 >> 1)) {
            i3 = i2 >> 2;
            if (this.e > i2 - i3) {
                this.o = true;
            } else if (this.k >= i3) {
                this.o = true;
            }
        }
    }

    private void a(int i, hj hjVar) {
        if (this.m == null) {
            this.m = new BitSet();
            this.m.set(i);
        } else if (this.m.get(i)) {
            if (this.d) {
                e(100);
            }
            this.c = false;
        } else {
            this.m.set(i);
        }
        this.j[i] = null;
        this.e -= hjVar.d;
        this.f = -1;
    }

    private void e() {
        int i = 0;
        this.o = false;
        this.q = false;
        int length = this.h.length;
        int i2 = length + length;
        if (i2 > 65536) {
            f();
            return;
        }
        int i3;
        this.h = new int[i2];
        this.g = i2 - 1;
        hn[] hnVarArr = this.i;
        this.i = new hn[i2];
        i2 = 0;
        for (i3 = 0; i3 < length; i3++) {
            hn hnVar = hnVarArr[i3];
            if (hnVar != null) {
                i2++;
                int hashCode = hnVar.hashCode();
                int i4 = this.g & hashCode;
                this.i[i4] = hnVar;
                this.h[i4] = hashCode << 8;
            }
        }
        int i5 = this.l;
        if (i5 == 0) {
            this.f = 0;
            return;
        }
        this.k = 0;
        this.l = 0;
        this.r = false;
        hj[] hjVarArr = this.j;
        this.j = new hj[hjVarArr.length];
        int i6 = 0;
        i3 = i2;
        while (i6 < i5) {
            i2 = i3;
            hj hjVar = hjVarArr[i6];
            while (hjVar != null) {
                length = i2 + 1;
                hn hnVar2 = hjVar.a;
                i2 = hnVar2.hashCode();
                int i7 = this.g & i2;
                int i8 = this.h[i7];
                if (this.i[i7] == null) {
                    this.h[i7] = i2 << 8;
                    this.i[i7] = hnVar2;
                    i2 = i;
                } else {
                    this.k++;
                    i2 = i8 & 255;
                    if (i2 == 0) {
                        if (this.l <= 254) {
                            i2 = this.l;
                            this.l++;
                            if (i2 >= this.j.length) {
                                k();
                            }
                        } else {
                            i2 = g();
                        }
                        this.h[i7] = (i8 & -256) | (i2 + 1);
                    } else {
                        i2--;
                    }
                    hj hjVar2 = new hj(hnVar2, this.j[i2]);
                    this.j[i2] = hjVar2;
                    i2 = Math.max(i, hjVar2.d);
                }
                hjVar = hjVar.b;
                i = i2;
                i2 = length;
            }
            i6++;
            i3 = i2;
        }
        this.f = i;
        if (i3 != this.e) {
            throw new RuntimeException("Internal error: count after rehash " + i3 + "; should be " + this.e);
        }
    }

    private void f() {
        this.e = 0;
        this.f = 0;
        Arrays.fill(this.h, 0);
        Arrays.fill(this.i, null);
        Arrays.fill(this.j, null);
        this.k = 0;
        this.l = 0;
    }

    private int g() {
        hj[] hjVarArr = this.j;
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        int i3 = 0;
        int i4 = this.l;
        while (i3 < i4) {
            hj hjVar = hjVarArr[i3];
            if (hjVar == null) {
                return i3;
            }
            int i5 = hjVar.d;
            if (i5 >= i) {
                i5 = i;
            } else if (i5 == 1) {
                return i3;
            } else {
                i2 = i3;
            }
            i3++;
            i = i5;
        }
        return i2;
    }

    private void h() {
        int[] iArr = this.h;
        this.h = Arrays.copyOf(iArr, iArr.length);
        this.p = false;
    }

    private void i() {
        hj[] hjVarArr = this.j;
        if (hjVarArr == null) {
            this.j = new hj[32];
        } else {
            this.j = (hj[]) Arrays.copyOf(hjVarArr, hjVarArr.length);
        }
        this.r = false;
    }

    private void j() {
        hn[] hnVarArr = this.i;
        this.i = (hn[]) Arrays.copyOf(hnVarArr, hnVarArr.length);
        this.q = false;
    }

    private void k() {
        hj[] hjVarArr = this.j;
        this.j = (hj[]) Arrays.copyOf(hjVarArr, hjVarArr.length * 2);
    }

    private static hn a(int i, String str, int[] iArr, int i2) {
        if (i2 < 4) {
            switch (i2) {
                case p.View_android_focusable /*1*/:
                    return new ho(str, i, iArr[0]);
                case p.View_paddingStart /*2*/:
                    return new hp(str, i, iArr[0], iArr[1]);
                case p.View_paddingEnd /*3*/:
                    return new hq(str, i, iArr[0], iArr[1], iArr[2]);
            }
        }
        return hr.a(str, i, iArr, i2);
    }

    protected void e(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this.e + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }
}
