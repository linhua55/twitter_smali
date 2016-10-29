package defpackage;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.d;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.a;
import com.fasterxml.jackson.core.io.b;
import com.fasterxml.jackson.core.io.f;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: hh */
public final class hh extends hb {
    protected static final char[] n;
    protected final Writer o;
    protected char[] p;
    protected int q;
    protected int r;
    protected int s;
    protected char[] t;
    protected d u;

    static {
        n = a.g();
    }

    public hh(b bVar, int i, com.fasterxml.jackson.core.b bVar2, Writer writer) {
        super(bVar, i, bVar2);
        this.q = 0;
        this.r = 0;
        this.o = writer;
        this.p = bVar.h();
        this.s = this.p.length;
    }

    public void a(String str) throws IOException {
        boolean z = true;
        int a = this.f.a(str);
        if (a == 4) {
            f("Can not write a field name, expecting a value");
        }
        if (a != 1) {
            z = false;
        }
        b(str, z);
    }

    public void a() throws IOException, JsonGenerationException {
        g("start an array");
        this.f = this.f.g();
        if (this.a != null) {
            this.a.e(this);
            return;
        }
        if (this.r >= this.s) {
            i();
        }
        char[] cArr = this.p;
        int i = this.r;
        this.r = i + 1;
        cArr[i] = '[';
    }

    public void b() throws IOException, JsonGenerationException {
        if (!this.f.a()) {
            f("Current context not an ARRAY but " + this.f.d());
        }
        if (this.a != null) {
            this.a.b(this, this.f.e());
        } else {
            if (this.r >= this.s) {
                i();
            }
            char[] cArr = this.p;
            int i = this.r;
            this.r = i + 1;
            cArr[i] = ']';
        }
        this.f = this.f.i();
    }

    public void c() throws IOException, JsonGenerationException {
        g("start an object");
        this.f = this.f.h();
        if (this.a != null) {
            this.a.b(this);
            return;
        }
        if (this.r >= this.s) {
            i();
        }
        char[] cArr = this.p;
        int i = this.r;
        this.r = i + 1;
        cArr[i] = '{';
    }

    public void d() throws IOException, JsonGenerationException {
        if (!this.f.c()) {
            f("Current context not an object but " + this.f.d());
        }
        if (this.a != null) {
            this.a.a(this, this.f.e());
        } else {
            if (this.r >= this.s) {
                i();
            }
            char[] cArr = this.p;
            int i = this.r;
            this.r = i + 1;
            cArr[i] = '}';
        }
        this.f = this.f.i();
    }

    protected void b(String str, boolean z) throws IOException {
        if (this.a != null) {
            c(str, z);
            return;
        }
        if (this.r + 1 >= this.s) {
            i();
        }
        if (z) {
            char[] cArr = this.p;
            int i = this.r;
            this.r = i + 1;
            cArr[i] = ',';
        }
        if (a(Feature.c)) {
            cArr = this.p;
            i = this.r;
            this.r = i + 1;
            cArr[i] = '\"';
            j(str);
            if (this.r >= this.s) {
                i();
            }
            cArr = this.p;
            i = this.r;
            this.r = i + 1;
            cArr[i] = '\"';
            return;
        }
        j(str);
    }

    protected void c(String str, boolean z) throws IOException, JsonGenerationException {
        if (z) {
            this.a.c(this);
        } else {
            this.a.h(this);
        }
        if (a(Feature.c)) {
            if (this.r >= this.s) {
                i();
            }
            char[] cArr = this.p;
            int i = this.r;
            this.r = i + 1;
            cArr[i] = '\"';
            j(str);
            if (this.r >= this.s) {
                i();
            }
            cArr = this.p;
            i = this.r;
            this.r = i + 1;
            cArr[i] = '\"';
            return;
        }
        j(str);
    }

    public void b(String str) throws IOException {
        g("write text value");
        if (str == null) {
            j();
            return;
        }
        if (this.r >= this.s) {
            i();
        }
        char[] cArr = this.p;
        int i = this.r;
        this.r = i + 1;
        cArr[i] = '\"';
        j(str);
        if (this.r >= this.s) {
            i();
        }
        cArr = this.p;
        i = this.r;
        this.r = i + 1;
        cArr[i] = '\"';
    }

    public void c(String str) throws IOException {
        int length = str.length();
        int i = this.s - this.r;
        if (i == 0) {
            i();
            i = this.s - this.r;
        }
        if (i >= length) {
            str.getChars(0, length, this.p, this.r);
            this.r += length;
            return;
        }
        i(str);
    }

    public void b(d dVar) throws IOException {
        c(dVar.a());
    }

    public void a(char c) throws IOException {
        if (this.r >= this.s) {
            i();
        }
        char[] cArr = this.p;
        int i = this.r;
        this.r = i + 1;
        cArr[i] = c;
    }

    private void i(String str) throws IOException {
        int i = this.s - this.r;
        str.getChars(0, i, this.p, this.r);
        this.r += i;
        i();
        int length = str.length() - i;
        while (length > this.s) {
            int i2 = this.s;
            str.getChars(i, i + i2, this.p, 0);
            this.q = 0;
            this.r = i2;
            i();
            i += i2;
            length -= i2;
        }
        str.getChars(i, i + length, this.p, 0);
        this.q = 0;
        this.r = length;
    }

    public void b(int i) throws IOException {
        g("write number");
        if (this.e) {
            c(i);
            return;
        }
        if (this.r + 11 >= this.s) {
            i();
        }
        this.r = f.a(i, this.p, this.r);
    }

    private void c(int i) throws IOException {
        if (this.r + 13 >= this.s) {
            i();
        }
        char[] cArr = this.p;
        int i2 = this.r;
        this.r = i2 + 1;
        cArr[i2] = '\"';
        this.r = f.a(i, this.p, this.r);
        cArr = this.p;
        i2 = this.r;
        this.r = i2 + 1;
        cArr[i2] = '\"';
    }

    public void a(long j) throws IOException {
        g("write number");
        if (this.e) {
            b(j);
            return;
        }
        if (this.r + 21 >= this.s) {
            i();
        }
        this.r = f.a(j, this.p, this.r);
    }

    private void b(long j) throws IOException {
        if (this.r + 23 >= this.s) {
            i();
        }
        char[] cArr = this.p;
        int i = this.r;
        this.r = i + 1;
        cArr[i] = '\"';
        this.r = f.a(j, this.p, this.r);
        cArr = this.p;
        i = this.r;
        this.r = i + 1;
        cArr[i] = '\"';
    }

    public void a(double d) throws IOException {
        if (this.e || (a(Feature.d) && (Double.isNaN(d) || Double.isInfinite(d)))) {
            b(String.valueOf(d));
            return;
        }
        g("write number");
        c(String.valueOf(d));
    }

    public void a(float f) throws IOException {
        if (this.e || (a(Feature.d) && (Float.isNaN(f) || Float.isInfinite(f)))) {
            b(String.valueOf(f));
            return;
        }
        g("write number");
        c(String.valueOf(f));
    }

    public void a(BigDecimal bigDecimal) throws IOException {
        g("write number");
        if (bigDecimal == null) {
            j();
        } else if (this.e) {
            a((Object) bigDecimal);
        } else if (a(Feature.f)) {
            c(bigDecimal.toPlainString());
        } else {
            c(bigDecimal.toString());
        }
    }

    private void a(Object obj) throws IOException {
        if (this.r >= this.s) {
            i();
        }
        char[] cArr = this.p;
        int i = this.r;
        this.r = i + 1;
        cArr[i] = '\"';
        c(obj.toString());
        if (this.r >= this.s) {
            i();
        }
        cArr = this.p;
        i = this.r;
        this.r = i + 1;
        cArr[i] = '\"';
    }

    public void a(boolean z) throws IOException {
        g("write boolean value");
        if (this.r + 5 >= this.s) {
            i();
        }
        int i = this.r;
        char[] cArr = this.p;
        if (z) {
            cArr[i] = 't';
            i++;
            cArr[i] = 'r';
            i++;
            cArr[i] = 'u';
            i++;
            cArr[i] = 'e';
        } else {
            cArr[i] = 'f';
            i++;
            cArr[i] = 'a';
            i++;
            cArr[i] = 'l';
            i++;
            cArr[i] = 's';
            i++;
            cArr[i] = 'e';
        }
        this.r = i + 1;
    }

    public void e() throws IOException {
        g("write null value");
        j();
    }

    protected void g(String str) throws IOException {
        if (this.a != null) {
            h(str);
            return;
        }
        char c;
        int j = this.f.j();
        if (j == 5) {
            f("Can not " + str + ", expecting field name");
        }
        switch (j) {
            case p.View_android_focusable /*1*/:
                c = ',';
                break;
            case p.View_paddingStart /*2*/:
                c = ':';
                break;
            case p.View_paddingEnd /*3*/:
                if (this.m != null) {
                    c(this.m.a());
                    return;
                }
                return;
            default:
                return;
        }
        if (this.r >= this.s) {
            i();
        }
        this.p[this.r] = c;
        this.r++;
    }

    protected void h(String str) throws IOException {
        int j = this.f.j();
        if (j == 5) {
            f("Can not " + str + ", expecting field name");
        }
        switch (j) {
            case p.View_android_theme /*0*/:
                if (this.f.a()) {
                    this.a.g(this);
                } else if (this.f.c()) {
                    this.a.h(this);
                }
            case p.View_android_focusable /*1*/:
                this.a.f(this);
            case p.View_paddingStart /*2*/:
                this.a.d(this);
            case p.View_paddingEnd /*3*/:
                this.a.a(this);
            default:
                f();
        }
    }

    public void flush() throws IOException {
        i();
        if (this.o != null && a(Feature.g)) {
            this.o.flush();
        }
    }

    public void close() throws IOException {
        super.close();
        if (this.p != null && a(Feature.b)) {
            while (true) {
                hd g = g();
                if (!g.a()) {
                    if (!g.c()) {
                        break;
                    }
                    d();
                } else {
                    b();
                }
            }
        }
        i();
        if (this.o != null) {
            if (this.i.c() || a(Feature.a)) {
                this.o.close();
            } else if (a(Feature.g)) {
                this.o.flush();
            }
        }
        h();
    }

    protected void h() {
        char[] cArr = this.p;
        if (cArr != null) {
            this.p = null;
            this.i.b(cArr);
        }
    }

    private void j(String str) throws IOException {
        int length = str.length();
        if (length > this.s) {
            k(str);
            return;
        }
        if (this.r + length > this.s) {
            i();
        }
        str.getChars(0, length, this.p, this.r);
        if (this.l != null) {
            f(length);
        } else if (this.k != 0) {
            b(length, this.k);
        } else {
            d(length);
        }
    }

    private void d(int i) throws IOException {
        int i2 = this.r + i;
        int[] iArr = this.j;
        char length = iArr.length;
        while (this.r < i2) {
            char c;
            int i3;
            while (true) {
                c = this.p[this.r];
                if (c < length && iArr[c] != 0) {
                    break;
                }
                i3 = this.r + 1;
                this.r = i3;
                if (i3 >= i2) {
                    return;
                }
            }
            i3 = this.r - this.q;
            if (i3 > 0) {
                this.o.write(this.p, this.q, i3);
            }
            char[] cArr = this.p;
            int i4 = this.r;
            this.r = i4 + 1;
            c = cArr[i4];
            a(c, iArr[c]);
        }
    }

    private void k(String str) throws IOException {
        i();
        int length = str.length();
        int i = 0;
        do {
            int i2 = this.s;
            if (i + i2 > length) {
                i2 = length - i;
            }
            str.getChars(i, i + i2, this.p, 0);
            if (this.l != null) {
                g(i2);
            } else if (this.k != 0) {
                c(i2, this.k);
            } else {
                e(i2);
            }
            i += i2;
        } while (i < length);
    }

    private void e(int i) throws IOException {
        int[] iArr = this.j;
        char length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            char c;
            do {
                c = this.p[i2];
                if (c < length && iArr[c] != 0) {
                    break;
                }
                i2++;
            } while (i2 < i);
            int i4 = i2 - i3;
            if (i4 > 0) {
                this.o.write(this.p, i3, i4);
                if (i2 >= i) {
                    return;
                }
            }
            i4 = i2 + 1;
            i3 = a(this.p, i4, i, c, iArr[c]);
            i2 = i4;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(int r10, int r11) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
        r9 = this;
        r0 = r9.r;
        r1 = r0 + r10;
        r2 = r9.j;
        r0 = r2.length;
        r3 = r11 + 1;
        r3 = java.lang.Math.min(r0, r3);
    L_0x000d:
        r0 = r9.r;
        if (r0 >= r1) goto L_0x0043;
    L_0x0011:
        r0 = r9.p;
        r4 = r9.r;
        r4 = r0[r4];
        if (r4 >= r3) goto L_0x0037;
    L_0x0019:
        r0 = r2[r4];
        if (r0 == 0) goto L_0x003b;
    L_0x001d:
        r5 = r9.r;
        r6 = r9.q;
        r5 = r5 - r6;
        if (r5 <= 0) goto L_0x002d;
    L_0x0024:
        r6 = r9.o;
        r7 = r9.p;
        r8 = r9.q;
        r6.write(r7, r8, r5);
    L_0x002d:
        r5 = r9.r;
        r5 = r5 + 1;
        r9.r = r5;
        r9.a(r4, r0);
        goto L_0x000d;
    L_0x0037:
        if (r4 <= r11) goto L_0x003b;
    L_0x0039:
        r0 = -1;
        goto L_0x001d;
    L_0x003b:
        r0 = r9.r;
        r0 = r0 + 1;
        r9.r = r0;
        if (r0 < r1) goto L_0x0011;
    L_0x0043:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: hh.b(int, int):void");
    }

    private void c(int i, int i2) throws IOException, JsonGenerationException {
        int i3 = 0;
        int[] iArr = this.j;
        char min = Math.min(iArr.length, i2 + 1);
        int i4 = 0;
        int i5 = 0;
        while (i5 < i) {
            char c;
            int i6;
            do {
                c = this.p[i5];
                if (c < min) {
                    i6 = iArr[c];
                    if (i6 != 0) {
                        break;
                    }
                    i3 = i6;
                    i5++;
                } else {
                    if (c > i2) {
                        i6 = -1;
                        break;
                    }
                    i5++;
                }
            } while (i5 < i);
            i6 = i3;
            i3 = i5 - i4;
            if (i3 > 0) {
                this.o.write(this.p, i4, i3);
                if (i5 >= i) {
                    return;
                }
            }
            i4 = i5 + 1;
            i5 = i4;
            i4 = a(this.p, i4, i, c, i6);
            i3 = i6;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void f(int r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
        r11 = this;
        r0 = r11.r;
        r2 = r0 + r12;
        r3 = r11.j;
        r0 = r11.k;
        r1 = 1;
        if (r0 >= r1) goto L_0x0041;
    L_0x000b:
        r0 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
    L_0x000e:
        r1 = r3.length;
        r4 = r0 + 1;
        r4 = java.lang.Math.min(r1, r4);
        r5 = r11.l;
    L_0x0017:
        r1 = r11.r;
        if (r1 >= r2) goto L_0x005a;
    L_0x001b:
        r1 = r11.p;
        r6 = r11.r;
        r6 = r1[r6];
        if (r6 >= r4) goto L_0x0044;
    L_0x0023:
        r1 = r3[r6];
        if (r1 == 0) goto L_0x0052;
    L_0x0027:
        r7 = r11.r;
        r8 = r11.q;
        r7 = r7 - r8;
        if (r7 <= 0) goto L_0x0037;
    L_0x002e:
        r8 = r11.o;
        r9 = r11.p;
        r10 = r11.q;
        r8.write(r9, r10, r7);
    L_0x0037:
        r7 = r11.r;
        r7 = r7 + 1;
        r11.r = r7;
        r11.a(r6, r1);
        goto L_0x0017;
    L_0x0041:
        r0 = r11.k;
        goto L_0x000e;
    L_0x0044:
        if (r6 <= r0) goto L_0x0048;
    L_0x0046:
        r1 = -1;
        goto L_0x0027;
    L_0x0048:
        r1 = r5.a(r6);
        r11.u = r1;
        if (r1 == 0) goto L_0x0052;
    L_0x0050:
        r1 = -2;
        goto L_0x0027;
    L_0x0052:
        r1 = r11.r;
        r1 = r1 + 1;
        r11.r = r1;
        if (r1 < r2) goto L_0x001b;
    L_0x005a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: hh.f(int):void");
    }

    private void g(int i) throws IOException, JsonGenerationException {
        int i2 = 0;
        int[] iArr = this.j;
        char c = this.k < 1 ? '\uffff' : this.k;
        char min = Math.min(iArr.length, c + 1);
        CharacterEscapes characterEscapes = this.l;
        int i3 = 0;
        int i4 = 0;
        while (i2 < i) {
            char c2;
            int i5;
            do {
                c2 = this.p[i2];
                if (c2 < min) {
                    i5 = iArr[c2];
                    if (i5 != 0) {
                        break;
                    }
                    i4 = i5;
                    i2++;
                } else if (c2 > c) {
                    i5 = -1;
                    break;
                } else {
                    d a = characterEscapes.a(c2);
                    this.u = a;
                    if (a != null) {
                        i5 = -2;
                        break;
                    }
                    i2++;
                }
            } while (i2 < i);
            i5 = i4;
            i4 = i2 - i3;
            if (i4 > 0) {
                this.o.write(this.p, i3, i4);
                if (i2 >= i) {
                    return;
                }
            }
            i3 = i2 + 1;
            i2 = i3;
            i3 = a(this.p, i3, i, c2, i5);
            i4 = i5;
        }
    }

    private final void j() throws IOException {
        if (this.r + 4 >= this.s) {
            i();
        }
        int i = this.r;
        char[] cArr = this.p;
        cArr[i] = 'n';
        i++;
        cArr[i] = 'u';
        i++;
        cArr[i] = 'l';
        i++;
        cArr[i] = 'l';
        this.r = i + 1;
    }

    private void a(char c, int i) throws IOException, JsonGenerationException {
        int i2;
        int i3;
        char[] cArr;
        if (i >= 0) {
            if (this.r >= 2) {
                i2 = this.r - 2;
                this.q = i2;
                i3 = i2 + 1;
                this.p[i2] = '\\';
                this.p[i3] = (char) i;
                return;
            }
            cArr = this.t;
            if (cArr == null) {
                cArr = k();
            }
            this.q = this.r;
            cArr[1] = (char) i;
            this.o.write(cArr, 0, 2);
        } else if (i == -2) {
            String a;
            if (this.u == null) {
                a = this.l.a(c).a();
            } else {
                a = this.u.a();
                this.u = null;
            }
            r1 = a.length();
            if (this.r >= r1) {
                i3 = this.r - r1;
                this.q = i3;
                a.getChars(0, r1, this.p, i3);
                return;
            }
            this.q = this.r;
            this.o.write(a);
        } else if (this.r >= 6) {
            char[] cArr2 = this.p;
            i2 = this.r - 6;
            this.q = i2;
            cArr2[i2] = '\\';
            i2++;
            cArr2[i2] = 'u';
            if (c > '\u00ff') {
                i3 = (c >> 8) & 255;
                i2++;
                cArr2[i2] = n[i3 >> 4];
                i2++;
                cArr2[i2] = n[i3 & 15];
                c = (char) (c & 255);
            } else {
                i2++;
                cArr2[i2] = '0';
                i2++;
                cArr2[i2] = '0';
            }
            i2++;
            cArr2[i2] = n[c >> 4];
            cArr2[i2 + 1] = n[c & 15];
        } else {
            cArr = this.t;
            if (cArr == null) {
                cArr = k();
            }
            this.q = this.r;
            if (c > '\u00ff') {
                r1 = (c >> 8) & 255;
                i3 = c & 255;
                cArr[10] = n[r1 >> 4];
                cArr[11] = n[r1 & 15];
                cArr[12] = n[i3 >> 4];
                cArr[13] = n[i3 & 15];
                this.o.write(cArr, 8, 6);
                return;
            }
            cArr[6] = n[c >> 4];
            cArr[7] = n[c & 15];
            this.o.write(cArr, 2, 6);
        }
    }

    private int a(char[] cArr, int i, int i2, char c, int i3) throws IOException, JsonGenerationException {
        char[] cArr2;
        if (i3 >= 0) {
            if (i <= 1 || i >= i2) {
                cArr2 = this.t;
                if (cArr2 == null) {
                    cArr2 = k();
                }
                cArr2[1] = (char) i3;
                this.o.write(cArr2, 0, 2);
                return i;
            }
            i -= 2;
            cArr[i] = '\\';
            cArr[i + 1] = (char) i3;
            return i;
        } else if (i3 == -2) {
            String a;
            if (this.u == null) {
                a = this.l.a(c).a();
            } else {
                a = this.u.a();
                this.u = null;
            }
            r1 = a.length();
            if (i < r1 || i >= i2) {
                this.o.write(a);
                return i;
            }
            i -= r1;
            a.getChars(0, r1, cArr, i);
            return i;
        } else if (i <= 5 || i >= i2) {
            cArr2 = this.t;
            if (cArr2 == null) {
                cArr2 = k();
            }
            this.q = this.r;
            if (c > '\u00ff') {
                r1 = (c >> 8) & 255;
                r2 = c & 255;
                cArr2[10] = n[r1 >> 4];
                cArr2[11] = n[r1 & 15];
                cArr2[12] = n[r2 >> 4];
                cArr2[13] = n[r2 & 15];
                this.o.write(cArr2, 8, 6);
                return i;
            }
            cArr2[6] = n[c >> 4];
            cArr2[7] = n[c & 15];
            this.o.write(cArr2, 2, 6);
            return i;
        } else {
            int i4 = i - 6;
            r1 = i4 + 1;
            cArr[i4] = '\\';
            i4 = r1 + 1;
            cArr[r1] = 'u';
            if (c > '\u00ff') {
                r1 = (c >> 8) & 255;
                r2 = i4 + 1;
                cArr[i4] = n[r1 >> 4];
                i4 = r2 + 1;
                cArr[r2] = n[r1 & 15];
                c = (char) (c & 255);
            } else {
                r1 = i4 + 1;
                cArr[i4] = '0';
                i4 = r1 + 1;
                cArr[r1] = '0';
            }
            r1 = i4 + 1;
            cArr[i4] = n[c >> 4];
            cArr[r1] = n[c & 15];
            return r1 - 5;
        }
    }

    private char[] k() {
        char[] cArr = new char[14];
        cArr[0] = '\\';
        cArr[2] = '\\';
        cArr[3] = 'u';
        cArr[4] = '0';
        cArr[5] = '0';
        cArr[8] = '\\';
        cArr[9] = 'u';
        this.t = cArr;
        return cArr;
    }

    protected void i() throws IOException {
        int i = this.r - this.q;
        if (i > 0) {
            int i2 = this.q;
            this.q = 0;
            this.r = 0;
            this.o.write(this.p, i2, i);
        }
    }
}
