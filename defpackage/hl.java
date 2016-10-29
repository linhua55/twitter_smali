package defpackage;

import com.fasterxml.jackson.core.JsonFactory.Feature;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;

/* compiled from: Twttr */
/* renamed from: hl */
public final class hl {
    static final hl a;
    protected hl b;
    protected final int c;
    protected boolean d;
    protected String[] e;
    protected hm[] f;
    protected int g;
    protected int h;
    protected int i;
    protected int j;
    protected boolean k;
    protected BitSet l;
    private final int m;

    static {
        a = new hl();
    }

    public static hl a() {
        long currentTimeMillis = System.currentTimeMillis();
        return hl.a((((int) (currentTimeMillis >>> 32)) + ((int) currentTimeMillis)) | 1);
    }

    protected static hl a(int i) {
        return a.g(i);
    }

    private hl() {
        this.d = true;
        this.c = -1;
        this.k = true;
        this.m = 0;
        this.j = 0;
        e(64);
    }

    private void e(int i) {
        this.e = new String[i];
        this.f = new hm[(i >> 1)];
        this.i = i - 1;
        this.g = 0;
        this.j = 0;
        this.h = hl.f(i);
    }

    private static int f(int i) {
        return i - (i >> 2);
    }

    private hl(hl hlVar, int i, String[] strArr, hm[] hmVarArr, int i2, int i3, int i4) {
        this.b = hlVar;
        this.c = i;
        this.d = Feature.b.a(i);
        this.e = strArr;
        this.f = hmVarArr;
        this.g = i2;
        this.m = i3;
        int length = strArr.length;
        this.h = hl.f(length);
        this.i = length - 1;
        this.j = i4;
        this.k = false;
    }

    public hl b(int i) {
        String[] strArr;
        hm[] hmVarArr;
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            strArr = this.e;
            hmVarArr = this.f;
            i2 = this.g;
            i3 = this.m;
            i4 = this.j;
        }
        return new hl(this, i, strArr, hmVarArr, i2, i3, i4);
    }

    private hl g(int i) {
        return new hl(null, -1, this.e, this.f, this.g, i, this.j);
    }

    private void a(hl hlVar) {
        if (hlVar.c() > 12000) {
            synchronized (this) {
                e(256);
                this.k = false;
            }
        } else if (hlVar.c() > c()) {
            synchronized (this) {
                this.e = hlVar.e;
                this.f = hlVar.f;
                this.g = hlVar.g;
                this.h = hlVar.h;
                this.i = hlVar.i;
                this.j = hlVar.j;
                this.k = false;
            }
        }
    }

    public void b() {
        if (d() && this.b != null && this.d) {
            this.b.a(this);
            this.k = false;
        }
    }

    public int c() {
        return this.g;
    }

    public boolean d() {
        return this.k;
    }

    public int e() {
        return this.m;
    }

    public String a(char[] cArr, int i, int i2, int i3) {
        if (i2 < 1) {
            return "";
        }
        if (!this.d) {
            return new String(cArr, i, i2);
        }
        int c = c(i3);
        String str = this.e[c];
        if (str != null) {
            if (str.length() == i2) {
                int i4 = 0;
                while (str.charAt(i4) == cArr[i + i4]) {
                    i4++;
                    if (i4 == i2) {
                        return str;
                    }
                }
            }
            hm hmVar = this.f[c >> 1];
            if (hmVar != null) {
                String a = hmVar.a(cArr, i, i2);
                if (a != null) {
                    return a;
                }
                a = a(cArr, i, i2, hmVar.b);
                if (a != null) {
                    return a;
                }
            }
        }
        return a(cArr, i, i2, i3, c);
    }

    private String a(char[] cArr, int i, int i2, hm hmVar) {
        while (hmVar != null) {
            String a = hmVar.a(cArr, i, i2);
            if (a != null) {
                return a;
            }
            hmVar = hmVar.b;
        }
        return null;
    }

    private String a(char[] cArr, int i, int i2, int i3, int i4) {
        if (!this.k) {
            f();
            this.k = true;
        } else if (this.g >= this.h) {
            g();
            i4 = c(a(cArr, i, i2));
        }
        String str = new String(cArr, i, i2);
        if (Feature.a.a(this.c)) {
            str = InternCache.a.a(str);
        }
        this.g++;
        if (this.e[i4] == null) {
            this.e[i4] = str;
        } else {
            int i5 = i4 >> 1;
            hm hmVar = new hm(str, this.f[i5]);
            int i6 = hmVar.c;
            if (i6 > 100) {
                a(i5, hmVar);
            } else {
                this.f[i5] = hmVar;
                this.j = Math.max(i6, this.j);
            }
        }
        return str;
    }

    private void a(int i, hm hmVar) {
        if (this.l == null) {
            this.l = new BitSet();
            this.l.set(i);
        } else if (this.l.get(i)) {
            if (Feature.c.a(this.c)) {
                d(100);
            }
            this.d = false;
        } else {
            this.l.set(i);
        }
        this.e[i + i] = hmVar.a;
        this.f[i] = null;
        this.g -= hmVar.c;
        this.j = -1;
    }

    public int c(int i) {
        return ((i >>> 15) + i) & this.i;
    }

    public int a(char[] cArr, int i, int i2) {
        int i3 = this.m;
        int i4 = i + i2;
        while (i < i4) {
            i3 = (i3 * 33) + cArr[i];
            i++;
        }
        return i3 == 0 ? 1 : i3;
    }

    public int a(String str) {
        int length = str.length();
        int i = this.m;
        int i2 = 0;
        while (i2 < length) {
            int charAt = str.charAt(i2) + (i * 33);
            i2++;
            i = charAt;
        }
        return i == 0 ? 1 : i;
    }

    private void f() {
        String[] strArr = this.e;
        this.e = (String[]) Arrays.copyOf(strArr, strArr.length);
        hm[] hmVarArr = this.f;
        this.f = (hm[]) Arrays.copyOf(hmVarArr, hmVarArr.length);
    }

    private void g() {
        int length = this.e.length;
        int i = length + length;
        if (i > 65536) {
            this.g = 0;
            this.d = false;
            this.e = new String[64];
            this.f = new hm[32];
            this.i = 63;
            this.k = true;
            return;
        }
        int i2;
        String[] strArr = this.e;
        hm[] hmVarArr = this.f;
        this.e = new String[i];
        this.f = new hm[(i >> 1)];
        this.i = i - 1;
        this.h = hl.f(i);
        i = 0;
        int i3 = 0;
        for (i2 = 0; i2 < length; i2++) {
            String str = strArr[i2];
            if (str != null) {
                i3++;
                int c = c(a(str));
                if (this.e[c] == null) {
                    this.e[c] = str;
                } else {
                    c >>= 1;
                    hm hmVar = new hm(str, this.f[c]);
                    this.f[c] = hmVar;
                    i = Math.max(i, hmVar.c);
                }
            }
        }
        length >>= 1;
        i2 = 0;
        int i4 = i3;
        i3 = i;
        while (i2 < length) {
            i = i3;
            for (hm hmVar2 = hmVarArr[i2]; hmVar2 != null; hmVar2 = hmVar2.b) {
                i4++;
                String str2 = hmVar2.a;
                int c2 = c(a(str2));
                if (this.e[c2] == null) {
                    this.e[c2] = str2;
                } else {
                    c2 >>= 1;
                    hm hmVar3 = new hm(str2, this.f[c2]);
                    this.f[c2] = hmVar3;
                    i = Math.max(i, hmVar3.c);
                }
            }
            i2++;
            i3 = i;
        }
        this.j = i3;
        this.l = null;
        if (i4 != this.g) {
            throw new Error("Internal error on SymbolTable.rehash(): had " + this.g + " entries; now have " + i4 + ".");
        }
    }

    protected void d(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this.g + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }
}
