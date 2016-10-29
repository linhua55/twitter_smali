package defpackage;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.d;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.a;
import com.fasterxml.jackson.core.io.b;
import com.fasterxml.jackson.core.io.f;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: hf */
public class hf extends hb {
    static final byte[] n;
    private static final byte[] x;
    private static final byte[] y;
    private static final byte[] z;
    protected final OutputStream o;
    protected byte[] p;
    protected int q;
    protected final int r;
    protected final int s;
    protected char[] t;
    protected final int u;
    protected boolean v;
    protected boolean w;

    static {
        n = a.h();
        x = new byte[]{(byte) 110, (byte) 117, (byte) 108, (byte) 108};
        y = new byte[]{(byte) 116, (byte) 114, (byte) 117, (byte) 101};
        z = new byte[]{(byte) 102, (byte) 97, (byte) 108, (byte) 115, (byte) 101};
    }

    public hf(b bVar, int i, com.fasterxml.jackson.core.b bVar2, OutputStream outputStream) {
        boolean z = true;
        super(bVar, i, bVar2);
        this.q = 0;
        this.o = outputStream;
        this.v = true;
        this.p = bVar.f();
        this.r = this.p.length;
        this.s = this.r >> 3;
        this.t = bVar.h();
        this.u = this.t.length;
        if (a(Feature.h)) {
            a(127);
        }
        if (Feature.c.a(i)) {
            z = false;
        }
        this.w = z;
    }

    public void a(String str) throws IOException {
        if (this.a != null) {
            h(str);
            return;
        }
        int a = this.f.a(str);
        if (a == 4) {
            f("Can not write a field name, expecting a value");
        }
        if (a == 1) {
            if (this.q >= this.r) {
                i();
            }
            byte[] bArr = this.p;
            int i = this.q;
            this.q = i + 1;
            bArr[i] = (byte) 44;
        }
        if (this.w) {
            b(str, false);
            return;
        }
        a = str.length();
        if (a > this.u) {
            b(str, true);
            return;
        }
        if (this.q >= this.r) {
            i();
        }
        byte[] bArr2 = this.p;
        int i2 = this.q;
        this.q = i2 + 1;
        bArr2[i2] = (byte) 34;
        str.getChars(0, a, this.t, 0);
        if (a <= this.s) {
            if (this.q + a > this.r) {
                i();
            }
            e(this.t, 0, a);
        } else {
            d(this.t, 0, a);
        }
        if (this.q >= this.r) {
            i();
        }
        bArr = this.p;
        i = this.q;
        this.q = i + 1;
        bArr[i] = (byte) 34;
    }

    public final void a() throws IOException {
        g("start an array");
        this.f = this.f.g();
        if (this.a != null) {
            this.a.e(this);
            return;
        }
        if (this.q >= this.r) {
            i();
        }
        byte[] bArr = this.p;
        int i = this.q;
        this.q = i + 1;
        bArr[i] = (byte) 91;
    }

    public final void b() throws IOException {
        if (!this.f.a()) {
            f("Current context not an ARRAY but " + this.f.d());
        }
        if (this.a != null) {
            this.a.b(this, this.f.e());
        } else {
            if (this.q >= this.r) {
                i();
            }
            byte[] bArr = this.p;
            int i = this.q;
            this.q = i + 1;
            bArr[i] = (byte) 93;
        }
        this.f = this.f.i();
    }

    public final void c() throws IOException {
        g("start an object");
        this.f = this.f.h();
        if (this.a != null) {
            this.a.b(this);
            return;
        }
        if (this.q >= this.r) {
            i();
        }
        byte[] bArr = this.p;
        int i = this.q;
        this.q = i + 1;
        bArr[i] = (byte) 123;
    }

    public final void d() throws IOException {
        if (!this.f.c()) {
            f("Current context not an object but " + this.f.d());
        }
        if (this.a != null) {
            this.a.a(this, this.f.e());
        } else {
            if (this.q >= this.r) {
                i();
            }
            byte[] bArr = this.p;
            int i = this.q;
            this.q = i + 1;
            bArr[i] = (byte) 125;
        }
        this.f = this.f.i();
    }

    protected final void h(String str) throws IOException {
        int a = this.f.a(str);
        if (a == 4) {
            f("Can not write a field name, expecting a value");
        }
        if (a == 1) {
            this.a.c(this);
        } else {
            this.a.h(this);
        }
        if (this.w) {
            b(str, false);
            return;
        }
        a = str.length();
        if (a > this.u) {
            b(str, true);
            return;
        }
        if (this.q >= this.r) {
            i();
        }
        byte[] bArr = this.p;
        int i = this.q;
        this.q = i + 1;
        bArr[i] = (byte) 34;
        str.getChars(0, a, this.t, 0);
        if (a <= this.s) {
            if (this.q + a > this.r) {
                i();
            }
            e(this.t, 0, a);
        } else {
            d(this.t, 0, a);
        }
        if (this.q >= this.r) {
            i();
        }
        byte[] bArr2 = this.p;
        int i2 = this.q;
        this.q = i2 + 1;
        bArr2[i2] = (byte) 34;
    }

    public void b(String str) throws IOException {
        g("write text value");
        if (str == null) {
            j();
            return;
        }
        int length = str.length();
        if (length > this.u) {
            b(str, true);
            return;
        }
        str.getChars(0, length, this.t, 0);
        if (length > this.s) {
            b(this.t, 0, length);
            return;
        }
        if (this.q + length >= this.r) {
            i();
        }
        byte[] bArr = this.p;
        int i = this.q;
        this.q = i + 1;
        bArr[i] = (byte) 34;
        e(this.t, 0, length);
        if (this.q >= this.r) {
            i();
        }
        byte[] bArr2 = this.p;
        int i2 = this.q;
        this.q = i2 + 1;
        bArr2[i2] = (byte) 34;
    }

    private void b(char[] cArr, int i, int i2) throws IOException {
        if (this.q >= this.r) {
            i();
        }
        byte[] bArr = this.p;
        int i3 = this.q;
        this.q = i3 + 1;
        bArr[i3] = (byte) 34;
        d(this.t, 0, i2);
        if (this.q >= this.r) {
            i();
        }
        bArr = this.p;
        i3 = this.q;
        this.q = i3 + 1;
        bArr[i3] = (byte) 34;
    }

    public void c(String str) throws IOException, JsonGenerationException {
        int length = str.length();
        int i = 0;
        while (length > 0) {
            char[] cArr = this.t;
            int length2 = cArr.length;
            if (length < length2) {
                length2 = length;
            }
            str.getChars(i, i + length2, cArr, 0);
            a(cArr, 0, length2);
            i += length2;
            length -= length2;
        }
    }

    public void b(d dVar) throws IOException, JsonGenerationException {
        byte[] b = dVar.b();
        if (b.length > 0) {
            a(b);
        }
    }

    public final void a(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = (i2 + i2) + i2;
        if (this.q + i3 > this.r) {
            if (this.r < i3) {
                c(cArr, i, i2);
                return;
            }
            i();
        }
        int i4 = i2 + i;
        i3 = i;
        while (i3 < i4) {
            while (true) {
                char c = cArr[i3];
                if (c > '\u007f') {
                    break;
                }
                byte[] bArr = this.p;
                int i5 = this.q;
                this.q = i5 + 1;
                bArr[i5] = (byte) c;
                i3++;
                if (i3 >= i4) {
                    return;
                }
            }
            int i6 = i3 + 1;
            i3 = cArr[i3];
            if (i3 < '\u0800') {
                bArr = this.p;
                i5 = this.q;
                this.q = i5 + 1;
                bArr[i5] = (byte) ((i3 >> 6) | 192);
                bArr = this.p;
                i5 = this.q;
                this.q = i5 + 1;
                bArr[i5] = (byte) ((i3 & 63) | 128);
                i3 = i6;
            } else {
                i3 = a(i3, cArr, i6, i4);
            }
        }
    }

    public void a(char c) throws IOException, JsonGenerationException {
        if (this.q + 3 >= this.r) {
            i();
        }
        byte[] bArr = this.p;
        int i;
        if (c <= '\u007f') {
            i = this.q;
            this.q = i + 1;
            bArr[i] = (byte) c;
        } else if (c < '\u0800') {
            i = this.q;
            this.q = i + 1;
            bArr[i] = (byte) ((c >> 6) | 192);
            i = this.q;
            this.q = i + 1;
            bArr[i] = (byte) ((c & 63) | 128);
        } else {
            a((int) c, null, 0, 0);
        }
    }

    private final void c(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = this.r;
        byte[] bArr = this.p;
        int i4 = i;
        while (i4 < i2) {
            while (true) {
                char c = cArr[i4];
                if (c >= '\u0080') {
                    break;
                }
                if (this.q >= i3) {
                    i();
                }
                int i5 = this.q;
                this.q = i5 + 1;
                bArr[i5] = (byte) c;
                i4++;
                if (i4 >= i2) {
                    return;
                }
            }
            if (this.q + 3 >= this.r) {
                i();
            }
            int i6 = i4 + 1;
            i4 = cArr[i4];
            if (i4 < '\u0800') {
                i5 = this.q;
                this.q = i5 + 1;
                bArr[i5] = (byte) ((i4 >> 6) | 192);
                i5 = this.q;
                this.q = i5 + 1;
                bArr[i5] = (byte) ((i4 & 63) | 128);
                i4 = i6;
            } else {
                i4 = a(i4, cArr, i6, i2);
            }
        }
    }

    public void b(int i) throws IOException, JsonGenerationException {
        g("write number");
        if (this.q + 11 >= this.r) {
            i();
        }
        if (this.e) {
            c(i);
        } else {
            this.q = f.a(i, this.p, this.q);
        }
    }

    private final void c(int i) throws IOException {
        if (this.q + 13 >= this.r) {
            i();
        }
        byte[] bArr = this.p;
        int i2 = this.q;
        this.q = i2 + 1;
        bArr[i2] = (byte) 34;
        this.q = f.a(i, this.p, this.q);
        bArr = this.p;
        i2 = this.q;
        this.q = i2 + 1;
        bArr[i2] = (byte) 34;
    }

    public void a(long j) throws IOException, JsonGenerationException {
        g("write number");
        if (this.e) {
            b(j);
            return;
        }
        if (this.q + 21 >= this.r) {
            i();
        }
        this.q = f.a(j, this.p, this.q);
    }

    private final void b(long j) throws IOException {
        if (this.q + 23 >= this.r) {
            i();
        }
        byte[] bArr = this.p;
        int i = this.q;
        this.q = i + 1;
        bArr[i] = (byte) 34;
        this.q = f.a(j, this.p, this.q);
        bArr = this.p;
        i = this.q;
        this.q = i + 1;
        bArr[i] = (byte) 34;
    }

    public void a(double d) throws IOException, JsonGenerationException {
        if (this.e || ((Double.isNaN(d) || Double.isInfinite(d)) && a(Feature.d))) {
            b(String.valueOf(d));
            return;
        }
        g("write number");
        c(String.valueOf(d));
    }

    public void a(float f) throws IOException, JsonGenerationException {
        if (this.e || ((Float.isNaN(f) || Float.isInfinite(f)) && a(Feature.d))) {
            b(String.valueOf(f));
            return;
        }
        g("write number");
        c(String.valueOf(f));
    }

    public void a(BigDecimal bigDecimal) throws IOException, JsonGenerationException {
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

    private final void a(Object obj) throws IOException {
        if (this.q >= this.r) {
            i();
        }
        byte[] bArr = this.p;
        int i = this.q;
        this.q = i + 1;
        bArr[i] = (byte) 34;
        c(obj.toString());
        if (this.q >= this.r) {
            i();
        }
        bArr = this.p;
        i = this.q;
        this.q = i + 1;
        bArr[i] = (byte) 34;
    }

    public void a(boolean z) throws IOException, JsonGenerationException {
        g("write boolean value");
        if (this.q + 5 >= this.r) {
            i();
        }
        Object obj = z ? y : z;
        int length = obj.length;
        System.arraycopy(obj, 0, this.p, this.q, length);
        this.q += length;
    }

    public void e() throws IOException, JsonGenerationException {
        g("write null value");
        j();
    }

    protected final void g(String str) throws IOException, JsonGenerationException {
        int j = this.f.j();
        if (j == 5) {
            f("Can not " + str + ", expecting field name");
        }
        if (this.a == null) {
            byte b;
            switch (j) {
                case p.View_android_focusable /*1*/:
                    b = (byte) 44;
                    break;
                case p.View_paddingStart /*2*/:
                    b = (byte) 58;
                    break;
                case p.View_paddingEnd /*3*/:
                    if (this.m != null) {
                        byte[] b2 = this.m.b();
                        if (b2.length > 0) {
                            a(b2);
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
            if (this.q >= this.r) {
                i();
            }
            this.p[this.q] = b;
            this.q++;
            return;
        }
        b(str, j);
    }

    protected final void b(String str, int i) throws IOException, JsonGenerationException {
        switch (i) {
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
        byte[] bArr = this.p;
        if (bArr != null && this.v) {
            this.p = null;
            this.i.b(bArr);
        }
        char[] cArr = this.t;
        if (cArr != null) {
            this.t = null;
            this.i.b(cArr);
        }
    }

    private final void a(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.q + length > this.r) {
            i();
            if (length > 512) {
                this.o.write(bArr, 0, length);
                return;
            }
        }
        System.arraycopy(bArr, 0, this.p, this.q, length);
        this.q = length + this.q;
    }

    private final void b(String str, boolean z) throws IOException {
        int i;
        if (z) {
            if (this.q >= this.r) {
                i();
            }
            byte[] bArr = this.p;
            i = this.q;
            this.q = i + 1;
            bArr[i] = (byte) 34;
        }
        int length = str.length();
        char[] cArr = this.t;
        i = length;
        length = 0;
        while (i > 0) {
            int min = Math.min(this.s, i);
            str.getChars(length, length + min, cArr, 0);
            if (this.q + min > this.r) {
                i();
            }
            e(cArr, 0, min);
            length += min;
            i -= min;
        }
        if (z) {
            if (this.q >= this.r) {
                i();
            }
            bArr = this.p;
            int i2 = this.q;
            this.q = i2 + 1;
            bArr[i2] = (byte) 34;
        }
    }

    private final void d(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        do {
            int min = Math.min(this.s, i2);
            if (this.q + min > this.r) {
                i();
            }
            e(cArr, i, min);
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void e(char[] r7, int r8, int r9) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
        r6 = this;
        r2 = r9 + r8;
        r0 = r6.q;
        r3 = r6.p;
        r4 = r6.j;
    L_0x0008:
        if (r8 >= r2) goto L_0x0014;
    L_0x000a:
        r5 = r7[r8];
        r1 = 127; // 0x7f float:1.78E-43 double:6.27E-322;
        if (r5 > r1) goto L_0x0014;
    L_0x0010:
        r1 = r4[r5];
        if (r1 == 0) goto L_0x0020;
    L_0x0014:
        r6.q = r0;
        if (r8 >= r2) goto L_0x001f;
    L_0x0018:
        r0 = r6.l;
        if (r0 == 0) goto L_0x0029;
    L_0x001c:
        r6.h(r7, r8, r2);
    L_0x001f:
        return;
    L_0x0020:
        r1 = r0 + 1;
        r5 = (byte) r5;
        r3[r0] = r5;
        r8 = r8 + 1;
        r0 = r1;
        goto L_0x0008;
    L_0x0029:
        r0 = r6.k;
        if (r0 != 0) goto L_0x0031;
    L_0x002d:
        r6.f(r7, r8, r2);
        goto L_0x001f;
    L_0x0031:
        r6.g(r7, r8, r2);
        goto L_0x001f;
        */
        throw new UnsupportedOperationException("Method not decompiled: hf.e(char[], int, int):void");
    }

    private final void f(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        if (this.q + ((i2 - i) * 6) > this.r) {
            i();
        }
        int i3 = this.q;
        byte[] bArr = this.p;
        int[] iArr = this.j;
        while (i < i2) {
            int i4 = i + 1;
            char c = cArr[i];
            int i5;
            if (c > '\u007f') {
                if (c <= '\u07ff') {
                    i5 = i3 + 1;
                    bArr[i3] = (byte) ((c >> 6) | 192);
                    i3 = i5 + 1;
                    bArr[i5] = (byte) ((c & 63) | 128);
                } else {
                    i3 = c(c, i3);
                }
                i = i4;
            } else if (iArr[c] == 0) {
                i5 = i3 + 1;
                bArr[i3] = (byte) c;
                i3 = i5;
                i = i4;
            } else {
                i5 = iArr[c];
                if (i5 > 0) {
                    int i6 = i3 + 1;
                    bArr[i3] = (byte) 92;
                    i3 = i6 + 1;
                    bArr[i6] = (byte) i5;
                    i = i4;
                } else {
                    i3 = d(c, i3);
                    i = i4;
                }
            }
        }
        this.q = i3;
    }

    private final void g(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        if (this.q + ((i2 - i) * 6) > this.r) {
            i();
        }
        int i3 = this.q;
        byte[] bArr = this.p;
        int[] iArr = this.j;
        char c = this.k;
        while (i < i2) {
            int i4 = i + 1;
            char c2 = cArr[i];
            int i5;
            if (c2 <= '\u007f') {
                if (iArr[c2] == 0) {
                    i5 = i3 + 1;
                    bArr[i3] = (byte) c2;
                    i3 = i5;
                    i = i4;
                } else {
                    i5 = iArr[c2];
                    if (i5 > 0) {
                        int i6 = i3 + 1;
                        bArr[i3] = (byte) 92;
                        i3 = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else {
                        i3 = d(c2, i3);
                        i = i4;
                    }
                }
            } else if (c2 > c) {
                i3 = d(c2, i3);
                i = i4;
            } else {
                if (c2 <= '\u07ff') {
                    i5 = i3 + 1;
                    bArr[i3] = (byte) ((c2 >> 6) | 192);
                    i3 = i5 + 1;
                    bArr[i5] = (byte) ((c2 & 63) | 128);
                } else {
                    i3 = c(c2, i3);
                }
                i = i4;
            }
        }
        this.q = i3;
    }

    private final void h(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        if (this.q + ((i2 - i) * 6) > this.r) {
            i();
        }
        int i3 = this.q;
        byte[] bArr = this.p;
        int[] iArr = this.j;
        char c = this.k <= 0 ? '\uffff' : this.k;
        CharacterEscapes characterEscapes = this.l;
        while (i < i2) {
            int i4 = i + 1;
            char c2 = cArr[i];
            int i5;
            d a;
            if (c2 <= '\u007f') {
                if (iArr[c2] == 0) {
                    i5 = i3 + 1;
                    bArr[i3] = (byte) c2;
                    i3 = i5;
                    i = i4;
                } else {
                    i5 = iArr[c2];
                    if (i5 > 0) {
                        int i6 = i3 + 1;
                        bArr[i3] = (byte) 92;
                        i3 = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else if (i5 == -2) {
                        a = characterEscapes.a(c2);
                        if (a == null) {
                            f("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(c2) + ", although was supposed to have one");
                        }
                        i3 = a(bArr, i3, a, i2 - i4);
                        i = i4;
                    } else {
                        i3 = d(c2, i3);
                        i = i4;
                    }
                }
            } else if (c2 > c) {
                i3 = d(c2, i3);
                i = i4;
            } else {
                a = characterEscapes.a(c2);
                if (a != null) {
                    i3 = a(bArr, i3, a, i2 - i4);
                    i = i4;
                } else {
                    if (c2 <= '\u07ff') {
                        i5 = i3 + 1;
                        bArr[i3] = (byte) ((c2 >> 6) | 192);
                        i3 = i5 + 1;
                        bArr[i5] = (byte) ((c2 & 63) | 128);
                    } else {
                        i3 = c(c2, i3);
                    }
                    i = i4;
                }
            }
        }
        this.q = i3;
    }

    private final int a(byte[] bArr, int i, d dVar, int i2) throws IOException, JsonGenerationException {
        Object b = dVar.b();
        int length = b.length;
        if (length > 6) {
            return a(bArr, i, this.r, b, i2);
        }
        System.arraycopy(b, 0, bArr, i, length);
        return length + i;
    }

    private final int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IOException, JsonGenerationException {
        int i4;
        int length = bArr2.length;
        if (i + length > i2) {
            this.q = i;
            i();
            i4 = this.q;
            if (length > bArr.length) {
                this.o.write(bArr2, 0, length);
                return i4;
            }
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        } else {
            i4 = i;
        }
        if ((i3 * 6) + i4 <= i2) {
            return i4;
        }
        i();
        return this.q;
    }

    private final int a(int i, char[] cArr, int i2, int i3) throws IOException {
        if (i < 55296 || i > 57343) {
            byte[] bArr = this.p;
            int i4 = this.q;
            this.q = i4 + 1;
            bArr[i4] = (byte) ((i >> 12) | 224);
            i4 = this.q;
            this.q = i4 + 1;
            bArr[i4] = (byte) (((i >> 6) & 63) | 128);
            i4 = this.q;
            this.q = i4 + 1;
            bArr[i4] = (byte) ((i & 63) | 128);
            return i2;
        }
        if (i2 >= i3 || cArr == null) {
            f("Split surrogate on writeRaw() input (last character)");
        }
        b(i, cArr[i2]);
        return i2 + 1;
    }

    protected final void b(int i, int i2) throws IOException {
        int a = a(i, i2);
        if (this.q + 4 > this.r) {
            i();
        }
        byte[] bArr = this.p;
        int i3 = this.q;
        this.q = i3 + 1;
        bArr[i3] = (byte) ((a >> 18) | 240);
        i3 = this.q;
        this.q = i3 + 1;
        bArr[i3] = (byte) (((a >> 12) & 63) | 128);
        i3 = this.q;
        this.q = i3 + 1;
        bArr[i3] = (byte) (((a >> 6) & 63) | 128);
        i3 = this.q;
        this.q = i3 + 1;
        bArr[i3] = (byte) ((a & 63) | 128);
    }

    private final int c(int i, int i2) throws IOException {
        byte[] bArr = this.p;
        if (i < 55296 || i > 57343) {
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((i >> 12) | 224);
            int i4 = i3 + 1;
            bArr[i3] = (byte) (((i >> 6) & 63) | 128);
            i3 = i4 + 1;
            bArr[i4] = (byte) ((i & 63) | 128);
            return i3;
        }
        i3 = i2 + 1;
        bArr[i2] = (byte) 92;
        i4 = i3 + 1;
        bArr[i3] = (byte) 117;
        i3 = i4 + 1;
        bArr[i4] = n[(i >> 12) & 15];
        i4 = i3 + 1;
        bArr[i3] = n[(i >> 8) & 15];
        int i5 = i4 + 1;
        bArr[i4] = n[(i >> 4) & 15];
        i3 = i5 + 1;
        bArr[i5] = n[i & 15];
        return i3;
    }

    private final void j() throws IOException {
        if (this.q + 4 >= this.r) {
            i();
        }
        System.arraycopy(x, 0, this.p, this.q, 4);
        this.q += 4;
    }

    private int d(int i, int i2) throws IOException {
        byte[] bArr = this.p;
        int i3 = i2 + 1;
        bArr[i2] = (byte) 92;
        int i4 = i3 + 1;
        bArr[i3] = (byte) 117;
        int i5;
        if (i > 255) {
            i5 = (i >> 8) & 255;
            int i6 = i4 + 1;
            bArr[i4] = n[i5 >> 4];
            i3 = i6 + 1;
            bArr[i6] = n[i5 & 15];
            i &= 255;
        } else {
            i5 = i4 + 1;
            bArr[i4] = (byte) 48;
            i3 = i5 + 1;
            bArr[i5] = (byte) 48;
        }
        i4 = i3 + 1;
        bArr[i3] = n[i >> 4];
        i3 = i4 + 1;
        bArr[i4] = n[i & 15];
        return i3;
    }

    protected final void i() throws IOException {
        int i = this.q;
        if (i > 0) {
            this.q = 0;
            this.o.write(this.p, 0, i);
        }
    }
}
