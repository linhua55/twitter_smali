package defpackage;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.b;
import com.fasterxml.jackson.core.io.e;
import com.fasterxml.jackson.core.util.d;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* compiled from: Twttr */
/* renamed from: gx */
public abstract class gx extends gy {
    static final BigInteger s;
    static final BigInteger t;
    static final BigInteger u;
    static final BigInteger v;
    static final BigDecimal w;
    static final BigDecimal x;
    static final BigDecimal y;
    static final BigDecimal z;
    protected int A;
    protected int B;
    protected long C;
    protected double D;
    protected BigInteger E;
    protected BigDecimal F;
    protected boolean G;
    protected int H;
    protected int I;
    protected int J;
    protected final b b;
    protected boolean c;
    protected int d;
    protected int e;
    protected long f;
    protected int g;
    protected int h;
    protected long i;
    protected int j;
    protected int k;
    protected hc l;
    protected JsonToken m;
    protected final d n;
    protected char[] o;
    protected boolean p;
    protected com.fasterxml.jackson.core.util.b q;
    protected byte[] r;

    protected abstract boolean u() throws IOException;

    protected abstract void v() throws IOException;

    protected abstract void w() throws IOException;

    static {
        s = BigInteger.valueOf(-2147483648L);
        t = BigInteger.valueOf(2147483647L);
        u = BigInteger.valueOf(Long.MIN_VALUE);
        v = BigInteger.valueOf(Long.MAX_VALUE);
        w = new BigDecimal(u);
        x = new BigDecimal(v);
        y = new BigDecimal(s);
        z = new BigDecimal(t);
    }

    protected gx(b bVar, int i) {
        ha haVar = null;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 1;
        this.h = 0;
        this.i = 0;
        this.j = 1;
        this.k = 0;
        this.o = null;
        this.p = false;
        this.q = null;
        this.A = 0;
        this.a = i;
        this.b = bVar;
        this.n = bVar.d();
        if (Feature.j.a(i)) {
            haVar = ha.a((JsonParser) this);
        }
        this.l = hc.a(haVar);
    }

    public String e() throws IOException {
        if (this.K == JsonToken.b || this.K == JsonToken.d) {
            return this.l.h().g();
        }
        return this.l.g();
    }

    public void close() throws IOException {
        if (!this.c) {
            this.c = true;
            try {
                w();
            } finally {
                x();
            }
        }
    }

    public JsonLocation f() {
        return new JsonLocation(this.b.a(), -1, this.f + ((long) this.d), this.g, (this.d - this.h) + 1);
    }

    public Object n() throws IOException {
        return null;
    }

    protected final void t() throws IOException {
        if (!u()) {
            H();
        }
    }

    protected void x() throws IOException {
        this.n.a();
        char[] cArr = this.o;
        if (cArr != null) {
            this.o = null;
            this.b.c(cArr);
        }
    }

    protected void y() throws JsonParseException {
        if (!this.l.b()) {
            e(": expected close marker for " + this.l.d() + " (from " + this.l.a(this.b.a()) + ")");
        }
    }

    protected final int z() throws JsonParseException {
        y();
        return -1;
    }

    protected void a(int i, char c) throws JsonParseException {
        f("Unexpected close marker '" + ((char) i) + "': expected '" + c + "' (for " + this.l.d() + " starting at " + ("" + this.l.a(this.b.a())) + ")");
    }

    protected final JsonToken a(boolean z, int i, int i2, int i3) {
        if (i2 >= 1 || i3 >= 1) {
            return b(z, i, i2, i3);
        }
        return a(z, i);
    }

    protected final JsonToken a(boolean z, int i) {
        this.G = z;
        this.H = i;
        this.I = 0;
        this.J = 0;
        this.A = 0;
        return JsonToken.i;
    }

    protected final JsonToken b(boolean z, int i, int i2, int i3) {
        this.G = z;
        this.H = i;
        this.I = i2;
        this.J = i3;
        this.A = 0;
        return JsonToken.j;
    }

    protected final JsonToken a(String str, double d) {
        this.n.a(str);
        this.D = d;
        this.A = 8;
        return JsonToken.j;
    }

    public Number h() throws IOException {
        if (this.A == 0) {
            b(0);
        }
        if (this.K == JsonToken.i) {
            if ((this.A & 1) != 0) {
                return Integer.valueOf(this.B);
            }
            if ((this.A & 2) != 0) {
                return Long.valueOf(this.C);
            }
            if ((this.A & 4) != 0) {
                return this.E;
            }
            return this.F;
        } else if ((this.A & 16) != 0) {
            return this.F;
        } else {
            if ((this.A & 8) == 0) {
                J();
            }
            return Double.valueOf(this.D);
        }
    }

    public int i() throws IOException {
        if ((this.A & 1) == 0) {
            if (this.A == 0) {
                b(1);
            }
            if ((this.A & 1) == 0) {
                A();
            }
        }
        return this.B;
    }

    public long j() throws IOException {
        if ((this.A & 2) == 0) {
            if (this.A == 0) {
                b(2);
            }
            if ((this.A & 2) == 0) {
                B();
            }
        }
        return this.C;
    }

    public double k() throws IOException {
        if ((this.A & 8) == 0) {
            if (this.A == 0) {
                b(8);
            }
            if ((this.A & 8) == 0) {
                C();
            }
        }
        return this.D;
    }

    public BigDecimal l() throws IOException {
        if ((this.A & 16) == 0) {
            if (this.A == 0) {
                b(16);
            }
            if ((this.A & 16) == 0) {
                D();
            }
        }
        return this.F;
    }

    protected void b(int i) throws IOException {
        if (this.K == JsonToken.i) {
            char[] e = this.n.e();
            int d = this.n.d();
            int i2 = this.H;
            if (this.G) {
                d++;
            }
            if (i2 <= 9) {
                d = e.a(e, d, i2);
                if (this.G) {
                    d = -d;
                }
                this.B = d;
                this.A = 1;
            } else if (i2 <= 18) {
                long b = e.b(e, d, i2);
                if (this.G) {
                    b = -b;
                }
                if (i2 == 10) {
                    if (this.G) {
                        if (b >= -2147483648L) {
                            this.B = (int) b;
                            this.A = 1;
                            return;
                        }
                    } else if (b <= 2147483647L) {
                        this.B = (int) b;
                        this.A = 1;
                        return;
                    }
                }
                this.C = b;
                this.A = 2;
            } else {
                a(i, e, d, i2);
            }
        } else if (this.K == JsonToken.j) {
            f(i);
        } else {
            f("Current token (" + this.K + ") not numeric, can not use numeric value accessors");
        }
    }

    private void f(int i) throws IOException {
        if (i == 16) {
            try {
                this.F = this.n.h();
                this.A = 16;
                return;
            } catch (Throwable e) {
                a("Malformed numeric value '" + this.n.f() + "'", e);
                return;
            }
        }
        this.D = this.n.i();
        this.A = 8;
    }

    private void a(int i, char[] cArr, int i2, int i3) throws IOException {
        String f = this.n.f();
        try {
            if (e.a(cArr, i2, i3, this.G)) {
                this.C = Long.parseLong(f);
                this.A = 2;
                return;
            }
            this.E = new BigInteger(f);
            this.A = 4;
        } catch (Throwable e) {
            a("Malformed numeric value '" + f + "'", e);
        }
    }

    protected void A() throws IOException {
        if ((this.A & 2) != 0) {
            int i = (int) this.C;
            if (((long) i) != this.C) {
                f("Numeric value (" + g() + ") out of range of int");
            }
            this.B = i;
        } else if ((this.A & 4) != 0) {
            if (s.compareTo(this.E) > 0 || t.compareTo(this.E) < 0) {
                E();
            }
            this.B = this.E.intValue();
        } else if ((this.A & 8) != 0) {
            if (this.D < -2.147483648E9d || this.D > 2.147483647E9d) {
                E();
            }
            this.B = (int) this.D;
        } else if ((this.A & 16) != 0) {
            if (y.compareTo(this.F) > 0 || z.compareTo(this.F) < 0) {
                E();
            }
            this.B = this.F.intValue();
        } else {
            J();
        }
        this.A |= 1;
    }

    protected void B() throws IOException {
        if ((this.A & 1) != 0) {
            this.C = (long) this.B;
        } else if ((this.A & 4) != 0) {
            if (u.compareTo(this.E) > 0 || v.compareTo(this.E) < 0) {
                F();
            }
            this.C = this.E.longValue();
        } else if ((this.A & 8) != 0) {
            if (this.D < -9.223372036854776E18d || this.D > 9.223372036854776E18d) {
                F();
            }
            this.C = (long) this.D;
        } else if ((this.A & 16) != 0) {
            if (w.compareTo(this.F) > 0 || x.compareTo(this.F) < 0) {
                F();
            }
            this.C = this.F.longValue();
        } else {
            J();
        }
        this.A |= 2;
    }

    protected void C() throws IOException {
        if ((this.A & 16) != 0) {
            this.D = this.F.doubleValue();
        } else if ((this.A & 4) != 0) {
            this.D = this.E.doubleValue();
        } else if ((this.A & 2) != 0) {
            this.D = (double) this.C;
        } else if ((this.A & 1) != 0) {
            this.D = (double) this.B;
        } else {
            J();
        }
        this.A |= 8;
    }

    protected void D() throws IOException {
        if ((this.A & 8) != 0) {
            this.F = e.b(g());
        } else if ((this.A & 4) != 0) {
            this.F = new BigDecimal(this.E);
        } else if ((this.A & 2) != 0) {
            this.F = BigDecimal.valueOf(this.C);
        } else if ((this.A & 1) != 0) {
            this.F = BigDecimal.valueOf((long) this.B);
        } else {
            J();
        }
        this.A |= 16;
    }

    protected void a(int i, String str) throws JsonParseException {
        String str2 = "Unexpected character (" + gy.e(i) + ") in numeric value";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        f(str2);
    }

    protected void c(String str) throws JsonParseException {
        f("Invalid numeric value: " + str);
    }

    protected void E() throws IOException {
        f("Numeric value (" + g() + ") out of range of int (" + Integer.MIN_VALUE + " - " + Integer.MAX_VALUE + ")");
    }

    protected void F() throws IOException {
        f("Numeric value (" + g() + ") out of range of long (" + Long.MIN_VALUE + " - " + Long.MAX_VALUE + ")");
    }

    protected char G() throws IOException {
        throw new UnsupportedOperationException();
    }
}
