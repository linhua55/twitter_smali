package com.caverock.androidsvg;

import com.caverock.androidsvg.SVG.Unit;
import java.util.Locale;

/* compiled from: Twttr */
public class cb {
    protected String a;
    protected int b;
    protected int c;

    public cb(String str) {
        this.b = 0;
        this.c = 0;
        this.a = str.trim();
        this.c = this.a.length();
    }

    public boolean c() {
        return this.b == this.c;
    }

    protected boolean a(int i) {
        return i == 32 || i == 10 || i == 13 || i == 9;
    }

    public void d() {
        while (this.b < this.c && a(this.a.charAt(this.b))) {
            this.b++;
        }
    }

    protected boolean b(int i) {
        return i == 10 || i == 13;
    }

    public boolean e() {
        d();
        if (this.b == this.c || this.a.charAt(this.b) != ',') {
            return false;
        }
        this.b++;
        d();
        return true;
    }

    public Float f() {
        h a = h.a(this.a, this.b, this.c);
        if (a == null) {
            return null;
        }
        this.b = a.a();
        return Float.valueOf(a.b());
    }

    public Float g() {
        e();
        h a = h.a(this.a, this.b, this.c);
        if (a == null) {
            return null;
        }
        this.b = a.a();
        return Float.valueOf(a.b());
    }

    public Float a(Object obj) {
        if (obj == null) {
            return null;
        }
        e();
        return f();
    }

    public Integer h() {
        if (this.b == this.c) {
            return null;
        }
        String str = this.a;
        int i = this.b;
        this.b = i + 1;
        return Integer.valueOf(str.charAt(i));
    }

    public x i() {
        Float f = f();
        if (f == null) {
            return null;
        }
        Unit o = o();
        if (o == null) {
            return new x(f.floatValue(), Unit.px);
        }
        return new x(f.floatValue(), o);
    }

    public Boolean j() {
        if (this.b == this.c) {
            return null;
        }
        char charAt = this.a.charAt(this.b);
        if (charAt != '0' && charAt != '1') {
            return null;
        }
        this.b++;
        return Boolean.valueOf(charAt == '1');
    }

    public Boolean b(Object obj) {
        if (obj == null) {
            return null;
        }
        e();
        return j();
    }

    public boolean a(char c) {
        boolean z = this.b < this.c && this.a.charAt(this.b) == c;
        if (z) {
            this.b++;
        }
        return z;
    }

    public boolean a(String str) {
        int length = str.length();
        boolean z = this.b <= this.c - length && this.a.substring(this.b, this.b + length).equals(str);
        if (z) {
            this.b = length + this.b;
        }
        return z;
    }

    protected int k() {
        if (this.b == this.c) {
            return -1;
        }
        this.b++;
        if (this.b < this.c) {
            return this.a.charAt(this.b);
        }
        return -1;
    }

    public String l() {
        return b(' ');
    }

    public String b(char c) {
        if (c()) {
            return null;
        }
        char charAt = this.a.charAt(this.b);
        if (a((int) charAt) || charAt == c) {
            return null;
        }
        int i = this.b;
        int k = k();
        while (k != -1 && k != c && !a(k)) {
            k = k();
        }
        return this.a.substring(i, this.b);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String m() {
        /*
        r5 = this;
        r1 = 0;
        r0 = r5.c();
        if (r0 == 0) goto L_0x0009;
    L_0x0007:
        r0 = r1;
    L_0x0008:
        return r0;
    L_0x0009:
        r2 = r5.b;
        r0 = r5.a;
        r3 = r5.b;
        r0 = r0.charAt(r3);
    L_0x0013:
        r3 = 97;
        if (r0 < r3) goto L_0x001b;
    L_0x0017:
        r3 = 122; // 0x7a float:1.71E-43 double:6.03E-322;
        if (r0 <= r3) goto L_0x003c;
    L_0x001b:
        r3 = 65;
        if (r0 < r3) goto L_0x0023;
    L_0x001f:
        r3 = 90;
        if (r0 <= r3) goto L_0x003c;
    L_0x0023:
        r3 = r5.b;
    L_0x0025:
        r4 = r5.a(r0);
        if (r4 != 0) goto L_0x0041;
    L_0x002b:
        r4 = 40;
        if (r0 != r4) goto L_0x0046;
    L_0x002f:
        r0 = r5.b;
        r0 = r0 + 1;
        r5.b = r0;
        r0 = r5.a;
        r0 = r0.substring(r2, r3);
        goto L_0x0008;
    L_0x003c:
        r0 = r5.k();
        goto L_0x0013;
    L_0x0041:
        r0 = r5.k();
        goto L_0x0025;
    L_0x0046:
        r5.b = r2;
        r0 = r1;
        goto L_0x0008;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.cb.m():java.lang.String");
    }

    public String n() {
        int i = this.b;
        while (!c() && !a(this.a.charAt(this.b))) {
            this.b++;
        }
        String substring = this.a.substring(i, this.b);
        this.b = i;
        return substring;
    }

    public Unit o() {
        if (c()) {
            return null;
        }
        if (this.a.charAt(this.b) == '%') {
            this.b++;
            return Unit.percent;
        } else if (this.b > this.c - 2) {
            return null;
        } else {
            try {
                Unit valueOf = Unit.valueOf(this.a.substring(this.b, this.b + 2).toLowerCase(Locale.US));
                this.b += 2;
                return valueOf;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
    }

    public boolean p() {
        if (this.b == this.c) {
            return false;
        }
        char charAt = this.a.charAt(this.b);
        if ((charAt < 'a' || charAt > 'z') && (charAt < 'A' || charAt > 'Z')) {
            return false;
        }
        return true;
    }

    public String q() {
        if (c()) {
            return null;
        }
        int i = this.b;
        char charAt = this.a.charAt(this.b);
        if (charAt != '\'' && charAt != '\"') {
            return null;
        }
        char k = k();
        while (k != '\uffff' && k != charAt) {
            k = k();
        }
        if (k == '\uffff') {
            this.b = i;
            return null;
        }
        this.b++;
        return this.a.substring(i + 1, this.b - 1);
    }

    public String r() {
        if (c()) {
            return null;
        }
        int i = this.b;
        this.b = this.c;
        return this.a.substring(i);
    }
}
