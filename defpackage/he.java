package defpackage;

import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.b;
import com.fasterxml.jackson.core.io.a;
import com.fasterxml.jackson.core.util.d;
import java.io.IOException;
import java.io.Reader;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: he */
public class he extends gx {
    protected static final int[] L;
    protected Reader M;
    protected char[] N;
    protected boolean O;
    protected b P;
    protected final hl Q;
    protected final int R;
    protected boolean S;

    static {
        L = a.a();
    }

    public he(com.fasterxml.jackson.core.io.b bVar, int i, Reader reader, b bVar2, hl hlVar, char[] cArr, int i2, int i3, boolean z) {
        super(bVar, i);
        this.S = false;
        this.M = reader;
        this.N = cArr;
        this.d = i2;
        this.e = i3;
        this.P = bVar2;
        this.Q = hlVar;
        this.R = hlVar.e();
        this.O = z;
    }

    public he(com.fasterxml.jackson.core.io.b bVar, int i, Reader reader, b bVar2, hl hlVar) {
        super(bVar, i);
        this.S = false;
        this.M = reader;
        this.N = bVar.g();
        this.d = 0;
        this.e = 0;
        this.P = bVar2;
        this.Q = hlVar;
        this.R = hlVar.e();
        this.O = true;
    }

    protected boolean u() throws IOException {
        this.f += (long) this.e;
        this.h -= this.e;
        if (this.M == null) {
            return false;
        }
        int read = this.M.read(this.N, 0, this.N.length);
        if (read > 0) {
            this.d = 0;
            this.e = read;
            return true;
        }
        w();
        if (read != 0) {
            return false;
        }
        throw new IOException("Reader returned 0 characters when trying to read " + this.e);
    }

    protected char g(String str) throws IOException {
        if (this.d >= this.e && !u()) {
            e(str);
        }
        char[] cArr = this.N;
        int i = this.d;
        this.d = i + 1;
        return cArr[i];
    }

    protected void w() throws IOException {
        if (this.M != null) {
            if (this.b.c() || a(Feature.a)) {
                this.M.close();
            }
            this.M = null;
        }
    }

    protected void x() throws IOException {
        super.x();
        this.Q.b();
        if (this.O) {
            char[] cArr = this.N;
            if (cArr != null) {
                this.N = null;
                this.b.a(cArr);
            }
        }
    }

    public final String g() throws IOException {
        JsonToken jsonToken = this.K;
        if (jsonToken != JsonToken.h) {
            return a(jsonToken);
        }
        if (this.S) {
            this.S = false;
            v();
        }
        return this.n.f();
    }

    public final String s() throws IOException {
        if (this.K != JsonToken.h) {
            return super.a(null);
        }
        if (this.S) {
            this.S = false;
            v();
        }
        return this.n.f();
    }

    public final String a(String str) throws IOException {
        if (this.K != JsonToken.h) {
            return super.a(str);
        }
        if (this.S) {
            this.S = false;
            v();
        }
        return this.n.f();
    }

    protected final String a(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (jsonToken.a()) {
            case p.Toolbar_contentInsetStart /*5*/:
                return this.l.g();
            case p.Toolbar_contentInsetEnd /*6*/:
            case p.Toolbar_contentInsetLeft /*7*/:
            case p.Toolbar_contentInsetRight /*8*/:
                return this.n.f();
            default:
                return jsonToken.b();
        }
    }

    public final JsonToken a() throws IOException {
        this.A = 0;
        if (this.K == JsonToken.f) {
            return R();
        }
        if (this.S) {
            P();
        }
        int W = W();
        if (W < 0) {
            close();
            this.K = null;
            return null;
        }
        this.i = (this.f + ((long) this.d)) - 1;
        this.j = this.g;
        this.k = (this.d - this.h) - 1;
        this.r = null;
        JsonToken jsonToken;
        if (W == 93) {
            if (!this.l.a()) {
                a(W, '}');
            }
            this.l = this.l.h();
            jsonToken = JsonToken.e;
            this.K = jsonToken;
            return jsonToken;
        } else if (W == 125) {
            if (!this.l.c()) {
                a(W, ']');
            }
            this.l = this.l.h();
            jsonToken = JsonToken.c;
            this.K = jsonToken;
            return jsonToken;
        } else {
            if (this.l.i()) {
                W = j(W);
            }
            boolean c = this.l.c();
            if (c) {
                this.l.a(W == 34 ? L() : g(W));
                this.K = JsonToken.f;
                W = U();
            }
            switch (W) {
                case ApiRunnable.ACTION_CODE_BROADCAST_SUMMARY /*34*/:
                    this.S = true;
                    jsonToken = JsonToken.h;
                    break;
                case ApiRunnable.ACTION_CODE_UPLOAD_PROFILE_IMAGE /*45*/:
                    jsonToken = K();
                    break;
                case cse.AppCompatTheme_homeAsUpIndicator /*48*/:
                case ApiRunnable.ACTION_CODE_GET_RANK_PARAMETERS /*49*/:
                case ApiRunnable.ACTION_CODE_SET_RANK_PARAMETERS /*50*/:
                case ApiRunnable.ACTION_CODE_BROADCAST_RANK /*51*/:
                case ApiRunnable.ACTION_CODE_MAIN_GLOBAL_MAP /*52*/:
                case ApiRunnable.ACTION_CODE_PLAYBACK_META /*53*/:
                case ApiRunnable.ACTION_CODE_BROADCAST_META /*54*/:
                case ApiRunnable.ACTION_CODE_MUTE /*55*/:
                case ApiRunnable.ACTION_CODE_UNMUTE /*56*/:
                case ApiRunnable.ACTION_CODE_SUPPORTED_LANGUAGES /*57*/:
                    jsonToken = f(W);
                    break;
                case cse.AppCompatTheme_alertDialogStyle /*91*/:
                    if (!c) {
                        this.l = this.l.a(this.j, this.k);
                    }
                    jsonToken = JsonToken.d;
                    break;
                case cse.AppCompatTheme_alertDialogCenterButtons /*93*/:
                case 125:
                    b(W, "expected a value");
                    break;
                case cse.AppCompatTheme_checkboxStyle /*102*/:
                    ad();
                    jsonToken = JsonToken.l;
                    break;
                case cse.AppCompatTheme_spinnerStyle /*110*/:
                    ae();
                    jsonToken = JsonToken.m;
                    break;
                case 116:
                    break;
                case 123:
                    if (!c) {
                        this.l = this.l.b(this.j, this.k);
                    }
                    jsonToken = JsonToken.b;
                    break;
                default:
                    jsonToken = h(W);
                    break;
            }
            ac();
            jsonToken = JsonToken.k;
            if (c) {
                this.m = jsonToken;
                return this.K;
            }
            this.K = jsonToken;
            return jsonToken;
        }
    }

    private final JsonToken R() {
        this.p = false;
        JsonToken jsonToken = this.m;
        this.m = null;
        if (jsonToken == JsonToken.d) {
            this.l = this.l.a(this.j, this.k);
        } else if (jsonToken == JsonToken.b) {
            this.l = this.l.b(this.j, this.k);
        }
        this.K = jsonToken;
        return jsonToken;
    }

    public final String b() throws IOException {
        if (this.K == JsonToken.f) {
            this.p = false;
            JsonToken jsonToken = this.m;
            this.m = null;
            this.K = jsonToken;
            if (jsonToken == JsonToken.h) {
                if (this.S) {
                    this.S = false;
                    v();
                }
                return this.n.f();
            } else if (jsonToken == JsonToken.d) {
                this.l = this.l.a(this.j, this.k);
                return null;
            } else if (jsonToken != JsonToken.b) {
                return null;
            } else {
                this.l = this.l.b(this.j, this.k);
                return null;
            }
        } else if (a() == JsonToken.h) {
            return g();
        } else {
            return null;
        }
    }

    protected final JsonToken f(int i) throws IOException {
        int i2 = this.d;
        int i3 = i2 - 1;
        int i4 = this.e;
        if (i == 48) {
            return b(false, i3);
        }
        int i5 = 1;
        int i6 = i2;
        while (i6 < i4) {
            i2 = i6 + 1;
            char c = this.N[i6];
            if (c >= '0' && c <= '9') {
                i5++;
                i6 = i2;
            } else if (c == '.' || c == 'e' || c == 'E') {
                this.d = i2;
                return a(c, i3, i2, false, i5);
            } else {
                i6 = i2 - 1;
                this.d = i6;
                if (this.l.b()) {
                    i(c);
                }
                this.n.a(this.N, i3, i6 - i3);
                return a(false, i5);
            }
        }
        this.d = i3;
        return b(false, i3);
    }

    private final JsonToken a(int i, int i2, int i3, boolean z, int i4) throws IOException {
        int i5;
        int i6;
        int i7;
        int i8 = 0;
        int i9 = this.e;
        if (i == 46) {
            i5 = 0;
            i6 = i3;
            while (i6 < i9) {
                i3 = i6 + 1;
                i6 = this.N[i6];
                if (i6 < 48 || i6 > 57) {
                    if (i5 == 0) {
                        a(i6, "Decimal point not followed by a digit");
                    }
                    i7 = i5;
                    i5 = i3;
                } else {
                    i5++;
                    i6 = i3;
                }
            }
            return b(z, i2);
        }
        i7 = 0;
        i5 = i3;
        i6 = i;
        if (i6 == cse.AppCompatTheme_buttonStyleSmall || i6 == 69) {
            if (i5 >= i9) {
                this.d = i2;
                return b(z, i2);
            }
            int i10;
            char c;
            i6 = i5 + 1;
            char c2 = this.N[i5];
            if (c2 != '-' && c2 != '+') {
                i10 = i6;
                c = c2;
                i5 = i10;
            } else if (i6 >= i9) {
                this.d = i2;
                return b(z, i2);
            } else {
                i5 = i6 + 1;
                i6 = this.N[i6];
            }
            while (i6 <= 57 && i6 >= 48) {
                i8++;
                if (i5 >= i9) {
                    this.d = i2;
                    return b(z, i2);
                }
                i10 = i5 + 1;
                c = this.N[i5];
                i5 = i10;
            }
            if (i8 == 0) {
                a(i6, "Exponent indicator not followed by a digit");
            }
        }
        i5--;
        this.d = i5;
        if (this.l.b()) {
            i(i6);
        }
        this.n.a(this.N, i2, i5 - i2);
        return b(z, i4, i7, i8);
    }

    protected final JsonToken K() throws IOException {
        int i = this.d;
        int i2 = i - 1;
        int i3 = this.e;
        if (i >= i3) {
            return b(true, i2);
        }
        int i4 = i + 1;
        char c = this.N[i];
        if (c > '9' || c < '0') {
            this.d = i4;
            return a((int) c, true);
        } else if (c == '0') {
            return b(true, i2);
        } else {
            int i5 = 1;
            i = i4;
            while (i < i3) {
                i4 = i + 1;
                char c2 = this.N[i];
                if (c2 >= '0' && c2 <= '9') {
                    i5++;
                    i = i4;
                } else if (c2 == '.' || c2 == 'e' || c2 == 'E') {
                    this.d = i4;
                    return a(c2, i2, i4, true, i5);
                } else {
                    i = i4 - 1;
                    this.d = i;
                    if (this.l.b()) {
                        i(c2);
                    }
                    this.n.a(this.N, i2, i - i2);
                    return a(true, i5);
                }
            }
            return b(true, i2);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.fasterxml.jackson.core.JsonToken b(boolean r11, int r12) throws java.io.IOException {
        /*
        r10 = this;
        if (r11 == 0) goto L_0x0004;
    L_0x0002:
        r12 = r12 + 1;
    L_0x0004:
        r10.d = r12;
        r0 = r10.n;
        r2 = r0.k();
        r1 = 0;
        if (r11 == 0) goto L_0x01c3;
    L_0x000f:
        r0 = 1;
        r3 = 45;
        r2[r1] = r3;
    L_0x0014:
        r3 = 0;
        r1 = r10.d;
        r4 = r10.e;
        if (r1 >= r4) goto L_0x013e;
    L_0x001b:
        r1 = r10.N;
        r4 = r10.d;
        r5 = r4 + 1;
        r10.d = r5;
        r1 = r1[r4];
    L_0x0025:
        r4 = 48;
        if (r1 != r4) goto L_0x002d;
    L_0x0029:
        r1 = r10.S();
    L_0x002d:
        r5 = 0;
        r9 = r1;
        r1 = r2;
        r2 = r9;
    L_0x0031:
        r4 = 48;
        if (r2 < r4) goto L_0x01bd;
    L_0x0035:
        r4 = 57;
        if (r2 > r4) goto L_0x01bd;
    L_0x0039:
        r3 = r3 + 1;
        r4 = r1.length;
        if (r0 < r4) goto L_0x0045;
    L_0x003e:
        r0 = r10.n;
        r1 = r0.m();
        r0 = 0;
    L_0x0045:
        r4 = r0 + 1;
        r1[r0] = r2;
        r0 = r10.d;
        r2 = r10.e;
        if (r0 < r2) goto L_0x0147;
    L_0x004f:
        r0 = r10.u();
        if (r0 != 0) goto L_0x0147;
    L_0x0055:
        r0 = 0;
        r5 = 1;
        r7 = r3;
        r3 = r1;
        r1 = r0;
    L_0x005a:
        if (r7 != 0) goto L_0x007e;
    L_0x005c:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r2 = "Missing integer part (next char ";
        r0 = r0.append(r2);
        r2 = defpackage.gy.e(r1);
        r0 = r0.append(r2);
        r2 = ")";
        r0 = r0.append(r2);
        r0 = r0.toString();
        r10.c(r0);
    L_0x007e:
        r0 = 0;
        r2 = 46;
        if (r1 != r2) goto L_0x01b6;
    L_0x0083:
        r2 = r4 + 1;
        r3[r4] = r1;
    L_0x0087:
        r4 = r10.d;
        r6 = r10.e;
        if (r4 < r6) goto L_0x0154;
    L_0x008d:
        r4 = r10.u();
        if (r4 != 0) goto L_0x0154;
    L_0x0093:
        r5 = 1;
        r4 = r5;
        r5 = r1;
    L_0x0096:
        if (r0 != 0) goto L_0x009e;
    L_0x0098:
        r1 = "Decimal point not followed by a digit";
        r10.a(r5, r1);
    L_0x009e:
        r6 = r0;
        r1 = r3;
        r0 = r2;
    L_0x00a1:
        r3 = 0;
        r2 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
        if (r5 == r2) goto L_0x00aa;
    L_0x00a6:
        r2 = 69;
        if (r5 != r2) goto L_0x01a9;
    L_0x00aa:
        r2 = r1.length;
        if (r0 < r2) goto L_0x00b4;
    L_0x00ad:
        r0 = r10.n;
        r1 = r0.m();
        r0 = 0;
    L_0x00b4:
        r2 = r0 + 1;
        r1[r0] = r5;
        r0 = r10.d;
        r5 = r10.e;
        if (r0 >= r5) goto L_0x017d;
    L_0x00be:
        r0 = r10.N;
        r5 = r10.d;
        r8 = r5 + 1;
        r10.d = r8;
        r5 = r0[r5];
    L_0x00c8:
        r0 = 45;
        if (r5 == r0) goto L_0x00d0;
    L_0x00cc:
        r0 = 43;
        if (r5 != r0) goto L_0x01a5;
    L_0x00d0:
        r0 = r1.length;
        if (r2 < r0) goto L_0x01a2;
    L_0x00d3:
        r0 = r10.n;
        r1 = r0.m();
        r0 = 0;
    L_0x00da:
        r2 = r0 + 1;
        r1[r0] = r5;
        r0 = r10.d;
        r5 = r10.e;
        if (r0 >= r5) goto L_0x0186;
    L_0x00e4:
        r0 = r10.N;
        r5 = r10.d;
        r8 = r5 + 1;
        r10.d = r8;
        r0 = r0[r5];
    L_0x00ee:
        r9 = r0;
        r0 = r2;
        r2 = r9;
    L_0x00f1:
        r5 = 57;
        if (r2 > r5) goto L_0x019c;
    L_0x00f5:
        r5 = 48;
        if (r2 < r5) goto L_0x019c;
    L_0x00f9:
        r3 = r3 + 1;
        r5 = r1.length;
        if (r0 < r5) goto L_0x0105;
    L_0x00fe:
        r0 = r10.n;
        r1 = r0.m();
        r0 = 0;
    L_0x0105:
        r5 = r0 + 1;
        r1[r0] = r2;
        r0 = r10.d;
        r8 = r10.e;
        if (r0 < r8) goto L_0x018f;
    L_0x010f:
        r0 = r10.u();
        if (r0 != 0) goto L_0x018f;
    L_0x0115:
        r4 = 1;
        r0 = r3;
        r1 = r4;
        r3 = r5;
    L_0x0119:
        if (r0 != 0) goto L_0x0121;
    L_0x011b:
        r4 = "Exponent indicator not followed by a digit";
        r10.a(r2, r4);
    L_0x0121:
        if (r1 != 0) goto L_0x0134;
    L_0x0123:
        r1 = r10.d;
        r1 = r1 + -1;
        r10.d = r1;
        r1 = r10.l;
        r1 = r1.b();
        if (r1 == 0) goto L_0x0134;
    L_0x0131:
        r10.i(r2);
    L_0x0134:
        r1 = r10.n;
        r1.a(r3);
        r0 = r10.a(r11, r7, r6, r0);
        return r0;
    L_0x013e:
        r1 = "No digit following minus sign";
        r1 = r10.g(r1);
        goto L_0x0025;
    L_0x0147:
        r0 = r10.N;
        r2 = r10.d;
        r6 = r2 + 1;
        r10.d = r6;
        r2 = r0[r2];
        r0 = r4;
        goto L_0x0031;
    L_0x0154:
        r1 = r10.N;
        r4 = r10.d;
        r6 = r4 + 1;
        r10.d = r6;
        r1 = r1[r4];
        r4 = 48;
        if (r1 < r4) goto L_0x01b2;
    L_0x0162:
        r4 = 57;
        if (r1 <= r4) goto L_0x016a;
    L_0x0166:
        r4 = r5;
        r5 = r1;
        goto L_0x0096;
    L_0x016a:
        r0 = r0 + 1;
        r4 = r3.length;
        if (r2 < r4) goto L_0x01b0;
    L_0x016f:
        r2 = r10.n;
        r3 = r2.m();
        r2 = 0;
        r4 = r2;
    L_0x0177:
        r2 = r4 + 1;
        r3[r4] = r1;
        goto L_0x0087;
    L_0x017d:
        r0 = "expected a digit for number exponent";
        r5 = r10.g(r0);
        goto L_0x00c8;
    L_0x0186:
        r0 = "expected a digit for number exponent";
        r0 = r10.g(r0);
        goto L_0x00ee;
    L_0x018f:
        r0 = r10.N;
        r2 = r10.d;
        r8 = r2 + 1;
        r10.d = r8;
        r2 = r0[r2];
        r0 = r5;
        goto L_0x00f1;
    L_0x019c:
        r1 = r4;
        r9 = r3;
        r3 = r0;
        r0 = r9;
        goto L_0x0119;
    L_0x01a2:
        r0 = r2;
        goto L_0x00da;
    L_0x01a5:
        r0 = r2;
        r2 = r5;
        goto L_0x00f1;
    L_0x01a9:
        r1 = r4;
        r2 = r5;
        r9 = r3;
        r3 = r0;
        r0 = r9;
        goto L_0x0121;
    L_0x01b0:
        r4 = r2;
        goto L_0x0177;
    L_0x01b2:
        r4 = r5;
        r5 = r1;
        goto L_0x0096;
    L_0x01b6:
        r6 = r0;
        r0 = r4;
        r4 = r5;
        r5 = r1;
        r1 = r3;
        goto L_0x00a1;
    L_0x01bd:
        r7 = r3;
        r4 = r0;
        r3 = r1;
        r1 = r2;
        goto L_0x005a;
    L_0x01c3:
        r0 = r1;
        goto L_0x0014;
        */
        throw new UnsupportedOperationException("Method not decompiled: he.b(boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    private final char S() throws IOException {
        if (this.d < this.e) {
            char c = this.N[this.d];
            if (c < '0' || c > '9') {
                return '0';
            }
        }
        return T();
    }

    private char T() throws IOException {
        if (this.d >= this.e && !u()) {
            return '0';
        }
        char c = this.N[this.d];
        if (c < '0' || c > '9') {
            return '0';
        }
        if (!a(Feature.h)) {
            c("Leading zeroes not allowed");
        }
        this.d++;
        if (c != '0') {
            return c;
        }
        do {
            if (this.d >= this.e && !u()) {
                return c;
            }
            c = this.N[this.d];
            if (c < '0' || c > '9') {
                return '0';
            }
            this.d++;
        } while (c == '0');
        return c;
    }

    protected JsonToken a(int i, boolean z) throws IOException {
        double d = Double.NEGATIVE_INFINITY;
        if (i == 73) {
            if (this.d >= this.e && !u()) {
                I();
            }
            char[] cArr = this.N;
            int i2 = this.d;
            this.d = i2 + 1;
            i = cArr[i2];
            String str;
            if (i == 78) {
                str = z ? "-INF" : "+INF";
                a(str, 3);
                if (a(Feature.i)) {
                    if (!z) {
                        d = Double.POSITIVE_INFINITY;
                    }
                    return a(str, d);
                }
                f("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            } else if (i == cse.AppCompatTheme_spinnerStyle) {
                str = z ? "-Infinity" : "+Infinity";
                a(str, 3);
                if (a(Feature.i)) {
                    if (!z) {
                        d = Double.POSITIVE_INFINITY;
                    }
                    return a(str, d);
                }
                f("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            }
        }
        a(i, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    private final void i(int i) throws IOException {
        this.d++;
        switch (i) {
            case p.Toolbar_popupTheme /*9*/:
            case ApiRunnable.ACTION_CODE_PING_BROADCAST /*32*/:
            case p.Toolbar_titleTextAppearance /*10*/:
                this.g++;
                this.h = this.d;
            case p.Toolbar_titleMarginStart /*13*/:
                Q();
            default:
                c(i);
        }
    }

    protected final String L() throws IOException {
        int i;
        int i2 = this.d;
        int i3 = this.R;
        int[] iArr = L;
        while (i2 < this.e) {
            char c = this.N[i2];
            if (c >= iArr.length || iArr[c] == 0) {
                i3 = (i3 * 33) + c;
                i2++;
            } else {
                if (c == '\"') {
                    i = this.d;
                    this.d = i2 + 1;
                    return this.Q.a(this.N, i, i2 - i, i3);
                }
                i = this.d;
                this.d = i2;
                return a(i, i3, 34);
            }
        }
        i = this.d;
        this.d = i2;
        return a(i, i3, 34);
    }

    private String a(int i, int i2, int i3) throws IOException {
        this.n.a(this.N, i, this.d - i);
        char[] j = this.n.j();
        int l = this.n.l();
        while (true) {
            char G;
            if (this.d >= this.e && !u()) {
                e(": was expecting closing '" + ((char) i3) + "' for name");
            }
            char[] cArr = this.N;
            int i4 = this.d;
            this.d = i4 + 1;
            char c = cArr[i4];
            if (c <= '\\') {
                if (c == '\\') {
                    G = G();
                    i2 = (i2 * 33) + c;
                    i4 = l + 1;
                    j[l] = G;
                    if (i4 < j.length) {
                        j = this.n.m();
                        l = 0;
                    } else {
                        l = i4;
                    }
                } else if (c <= i3) {
                    if (c == i3) {
                        this.n.a(l);
                        d dVar = this.n;
                        return this.Q.a(dVar.e(), dVar.d(), dVar.c(), i2);
                    } else if (c < ' ') {
                        c(c, "name");
                    }
                }
            }
            G = c;
            i2 = (i2 * 33) + c;
            i4 = l + 1;
            j[l] = G;
            if (i4 < j.length) {
                l = i4;
            } else {
                j = this.n.m();
                l = 0;
            }
        }
    }

    protected String g(int i) throws IOException {
        if (i == 39 && a(Feature.e)) {
            return M();
        }
        if (!a(Feature.d)) {
            b(i, "was expecting double-quote to start field name");
        }
        int[] c = a.c();
        char length = c.length;
        boolean isJavaIdentifierPart = i < length ? c[i] == 0 : Character.isJavaIdentifierPart((char) i);
        if (!isJavaIdentifierPart) {
            b(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i2 = this.d;
        int i3 = this.R;
        int i4 = this.e;
        if (i2 < i4) {
            do {
                char c2 = this.N[i2];
                int i5;
                if (c2 < length) {
                    if (c[c2] != 0) {
                        i5 = this.d - 1;
                        this.d = i2;
                        return this.Q.a(this.N, i5, i2 - i5, i3);
                    }
                } else if (!Character.isJavaIdentifierPart((char) c2)) {
                    i5 = this.d - 1;
                    this.d = i2;
                    return this.Q.a(this.N, i5, i2 - i5, i3);
                }
                i3 = (i3 * 33) + c2;
                i2++;
            } while (i2 < i4);
        }
        int i6 = this.d - 1;
        this.d = i2;
        return a(i6, i3, c);
    }

    protected String M() throws IOException {
        int i = this.d;
        int i2 = this.R;
        int i3 = this.e;
        if (i < i3) {
            int[] iArr = L;
            char length = iArr.length;
            do {
                char c = this.N[i];
                if (c != '\'') {
                    if (c < length && iArr[c] != 0) {
                        break;
                    }
                    i2 = (i2 * 33) + c;
                    i++;
                } else {
                    i3 = this.d;
                    this.d = i + 1;
                    return this.Q.a(this.N, i3, i - i3, i2);
                }
            } while (i < i3);
        }
        i3 = this.d;
        this.d = i;
        return a(i3, i2, 39);
    }

    protected JsonToken h(int i) throws IOException {
        switch (i) {
            case ApiRunnable.ACTION_CODE_GET_BROADCAST_ID_FROM_URL /*39*/:
                if (a(Feature.e)) {
                    return N();
                }
                break;
            case ApiRunnable.ACTION_CODE_DELETE_BROADCAST /*43*/:
                if (this.d >= this.e && !u()) {
                    I();
                }
                char[] cArr = this.N;
                int i2 = this.d;
                this.d = i2 + 1;
                return a(cArr[i2], false);
            case ApiRunnable.ACTION_CODE_REPORT_COMMENT /*73*/:
                a("Infinity", 1);
                if (!a(Feature.i)) {
                    f("Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    break;
                }
                return a("Infinity", Double.POSITIVE_INFINITY);
            case ApiRunnable.ACTION_CODE_CREATE_BROADCAST_PERSISTENT /*78*/:
                a("NaN", 1);
                if (!a(Feature.i)) {
                    f("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    break;
                }
                return a("NaN", Double.NaN);
        }
        if (Character.isJavaIdentifierStart(i)) {
            a("" + ((char) i), "('true', 'false' or 'null')");
        }
        b(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }

    protected JsonToken N() throws IOException {
        char[] k = this.n.k();
        int l = this.n.l();
        while (true) {
            if (this.d >= this.e && !u()) {
                e(": was expecting closing quote for a string value");
            }
            char[] cArr = this.N;
            int i = this.d;
            this.d = i + 1;
            char c = cArr[i];
            if (c <= '\\') {
                if (c == '\\') {
                    c = G();
                } else if (c <= '\'') {
                    if (c == '\'') {
                        this.n.a(l);
                        return JsonToken.h;
                    } else if (c < ' ') {
                        c(c, "string value");
                    }
                }
            }
            if (l >= k.length) {
                k = this.n.m();
                i = 0;
            } else {
                i = l;
            }
            l = i + 1;
            k[i] = c;
        }
    }

    private String a(int i, int i2, int[] iArr) throws IOException {
        this.n.a(this.N, i, this.d - i);
        char[] j = this.n.j();
        int l = this.n.l();
        char length = iArr.length;
        while (true) {
            if (this.d >= this.e && !u()) {
                break;
            }
            char c = this.N[this.d];
            if (c > length) {
                if (!Character.isJavaIdentifierPart(c)) {
                    break;
                }
            } else if (iArr[c] != 0) {
                break;
            }
            this.d++;
            i2 = (i2 * 33) + c;
            int i3 = l + 1;
            j[l] = c;
            if (i3 >= j.length) {
                j = this.n.m();
                l = 0;
            } else {
                l = i3;
            }
        }
        this.n.a(l);
        d dVar = this.n;
        return this.Q.a(dVar.e(), dVar.d(), dVar.c(), i2);
    }

    protected final void v() throws IOException {
        int i = this.d;
        int i2 = this.e;
        if (i < i2) {
            int[] iArr = L;
            char length = iArr.length;
            do {
                char c = this.N[i];
                if (c >= length || iArr[c] == 0) {
                    i++;
                } else if (c == '\"') {
                    this.n.a(this.N, this.d, i - this.d);
                    this.d = i + 1;
                    return;
                }
            } while (i < i2);
        }
        this.n.b(this.N, this.d, i - this.d);
        this.d = i;
        O();
    }

    protected void O() throws IOException {
        char[] j = this.n.j();
        int l = this.n.l();
        int[] iArr = L;
        char length = iArr.length;
        while (true) {
            if (this.d >= this.e && !u()) {
                e(": was expecting closing quote for a string value");
            }
            char[] cArr = this.N;
            int i = this.d;
            this.d = i + 1;
            char c = cArr[i];
            if (c < length && iArr[c] != 0) {
                if (c == '\"') {
                    this.n.a(l);
                    return;
                } else if (c == '\\') {
                    c = G();
                } else if (c < ' ') {
                    c(c, "string value");
                }
            }
            if (l >= j.length) {
                j = this.n.m();
                i = 0;
            } else {
                i = l;
            }
            l = i + 1;
            j[i] = c;
        }
    }

    protected final void P() throws IOException {
        this.S = false;
        int i = this.d;
        int i2 = this.e;
        char[] cArr = this.N;
        while (true) {
            if (i >= i2) {
                this.d = i;
                if (!u()) {
                    e(": was expecting closing quote for a string value");
                }
                i = this.d;
                i2 = this.e;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c <= '\\') {
                if (c == '\\') {
                    this.d = i3;
                    G();
                    i = this.d;
                    i2 = this.e;
                } else if (c <= '\"') {
                    if (c == '\"') {
                        this.d = i3;
                        return;
                    } else if (c < ' ') {
                        this.d = i3;
                        c(c, "string value");
                    }
                }
            }
            i = i3;
        }
    }

    protected final void Q() throws IOException {
        if ((this.d < this.e || u()) && this.N[this.d] == '\n') {
            this.d++;
        }
        this.g++;
        this.h = this.d;
    }

    private final int U() throws IOException {
        if (this.d + 4 >= this.e) {
            return b(false);
        }
        char c = this.N[this.d];
        char[] cArr;
        int i;
        int i2;
        if (c == ':') {
            cArr = this.N;
            i = this.d + 1;
            this.d = i;
            i2 = cArr[i];
            if (i2 <= 32) {
                if (i2 == 32 || i2 == 9) {
                    cArr = this.N;
                    i = this.d + 1;
                    this.d = i;
                    i2 = cArr[i];
                    if (i2 > 32) {
                        if (i2 == 47 || i2 == 35) {
                            return b(true);
                        }
                        this.d++;
                        return i2;
                    }
                }
                return b(true);
            } else if (i2 == 47 || i2 == 35) {
                return b(true);
            } else {
                this.d++;
                return i2;
            }
        }
        if (c == ' ' || c == '\t') {
            cArr = this.N;
            i = this.d + 1;
            this.d = i;
            c = cArr[i];
        }
        if (c != ':') {
            return b(false);
        }
        cArr = this.N;
        i = this.d + 1;
        this.d = i;
        i2 = cArr[i];
        if (i2 <= 32) {
            if (i2 == 32 || i2 == 9) {
                cArr = this.N;
                i = this.d + 1;
                this.d = i;
                i2 = cArr[i];
                if (i2 > 32) {
                    if (i2 == 47 || i2 == 35) {
                        return b(true);
                    }
                    this.d++;
                    return i2;
                }
            }
            return b(true);
        } else if (i2 == 47 || i2 == 35) {
            return b(true);
        } else {
            this.d++;
            return i2;
        }
    }

    private final int b(boolean z) throws IOException {
        while (true) {
            if (this.d >= this.e) {
                t();
            }
            char[] cArr = this.N;
            int i = this.d;
            this.d = i + 1;
            char c = cArr[i];
            if (c > ' ') {
                if (c == '/') {
                    Y();
                } else if (c != '#' || !aa()) {
                    if (z) {
                        return c;
                    }
                    if (c != ':') {
                        if (c < ' ') {
                            d((int) c);
                        }
                        b((int) c, "was expecting a colon to separate field name and value");
                    }
                    z = true;
                }
            } else if (c < ' ') {
                if (c == '\n') {
                    this.g++;
                    this.h = this.d;
                } else if (c == '\r') {
                    Q();
                } else if (c != '\t') {
                    d((int) c);
                }
            }
        }
    }

    private final int j(int i) throws IOException {
        if (i != 44) {
            b(i, "was expecting comma to separate " + this.l.d() + " entries");
        }
        while (this.d < this.e) {
            char[] cArr = this.N;
            int i2 = this.d;
            this.d = i2 + 1;
            int i3 = cArr[i2];
            if (i3 > 32) {
                if (i3 != 47 && i3 != 35) {
                    return i3;
                }
                this.d--;
                return V();
            } else if (i3 < 32) {
                if (i3 == 10) {
                    this.g++;
                    this.h = this.d;
                } else if (i3 == 13) {
                    Q();
                } else if (i3 != 9) {
                    d(i3);
                }
            }
        }
        return V();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int V() throws java.io.IOException {
        /*
        r4 = this;
        r3 = 32;
    L_0x0002:
        r0 = r4.d;
        r1 = r4.e;
        if (r0 < r1) goto L_0x000e;
    L_0x0008:
        r0 = r4.u();
        if (r0 == 0) goto L_0x004e;
    L_0x000e:
        r0 = r4.N;
        r1 = r4.d;
        r2 = r1 + 1;
        r4.d = r2;
        r0 = r0[r1];
        if (r0 <= r3) goto L_0x002d;
    L_0x001a:
        r1 = 47;
        if (r0 != r1) goto L_0x0022;
    L_0x001e:
        r4.Y();
        goto L_0x0002;
    L_0x0022:
        r1 = 35;
        if (r0 != r1) goto L_0x002c;
    L_0x0026:
        r1 = r4.aa();
        if (r1 != 0) goto L_0x0002;
    L_0x002c:
        return r0;
    L_0x002d:
        if (r0 >= r3) goto L_0x0002;
    L_0x002f:
        r1 = 10;
        if (r0 != r1) goto L_0x003e;
    L_0x0033:
        r0 = r4.g;
        r0 = r0 + 1;
        r4.g = r0;
        r0 = r4.d;
        r4.h = r0;
        goto L_0x0002;
    L_0x003e:
        r1 = 13;
        if (r0 != r1) goto L_0x0046;
    L_0x0042:
        r4.Q();
        goto L_0x0002;
    L_0x0046:
        r1 = 9;
        if (r0 == r1) goto L_0x0002;
    L_0x004a:
        r4.d(r0);
        goto L_0x0002;
    L_0x004e:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "Unexpected end-of-input within/between ";
        r0 = r0.append(r1);
        r1 = r4.l;
        r1 = r1.d();
        r0 = r0.append(r1);
        r1 = " entries";
        r0 = r0.append(r1);
        r0 = r0.toString();
        r0 = r4.b(r0);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: he.V():int");
    }

    private final int W() throws IOException {
        if (this.d >= this.e && !u()) {
            return z();
        }
        char[] cArr = this.N;
        int i = this.d;
        this.d = i + 1;
        int i2 = cArr[i];
        if (i2 <= 32) {
            if (i2 != 32) {
                if (i2 == 10) {
                    this.g++;
                    this.h = this.d;
                } else if (i2 == 13) {
                    Q();
                } else if (i2 != 9) {
                    d(i2);
                }
            }
            while (this.d < this.e) {
                cArr = this.N;
                i = this.d;
                this.d = i + 1;
                i2 = cArr[i];
                if (i2 > 32) {
                    if (i2 != 47 && i2 != 35) {
                        return i2;
                    }
                    this.d--;
                    return X();
                } else if (i2 != 32) {
                    if (i2 == 10) {
                        this.g++;
                        this.h = this.d;
                    } else if (i2 == 13) {
                        Q();
                    } else if (i2 != 9) {
                        d(i2);
                    }
                }
            }
            return X();
        } else if (i2 != 47 && i2 != 35) {
            return i2;
        } else {
            this.d--;
            return X();
        }
    }

    private int X() throws IOException {
        while (true) {
            if (this.d >= this.e && !u()) {
                return z();
            }
            char[] cArr = this.N;
            int i = this.d;
            this.d = i + 1;
            int i2 = cArr[i];
            if (i2 > 32) {
                if (i2 == 47) {
                    Y();
                } else if (i2 != 35 || !aa()) {
                    return i2;
                }
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this.g++;
                    this.h = this.d;
                } else if (i2 == 13) {
                    Q();
                } else if (i2 != 9) {
                    d(i2);
                }
            }
        }
    }

    private void Y() throws IOException {
        if (!a(Feature.b)) {
            b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this.d >= this.e && !u()) {
            e(" in a comment");
        }
        char[] cArr = this.N;
        int i = this.d;
        this.d = i + 1;
        char c = cArr[i];
        if (c == '/') {
            ab();
        } else if (c == '*') {
            Z();
        } else {
            b((int) c, "was expecting either '*' or '/' for a comment");
        }
    }

    private void Z() throws IOException {
        while (true) {
            if (this.d >= this.e && !u()) {
                break;
            }
            char[] cArr = this.N;
            int i = this.d;
            this.d = i + 1;
            char c = cArr[i];
            if (c <= '*') {
                if (c == '*') {
                    if (this.d >= this.e && !u()) {
                        break;
                    } else if (this.N[this.d] == '/') {
                        this.d++;
                        return;
                    }
                } else if (c < ' ') {
                    if (c == '\n') {
                        this.g++;
                        this.h = this.d;
                    } else if (c == '\r') {
                        Q();
                    } else if (c != '\t') {
                        d((int) c);
                    }
                }
            }
        }
        e(" in a comment");
    }

    private boolean aa() throws IOException {
        if (!a(Feature.c)) {
            return false;
        }
        ab();
        return true;
    }

    private void ab() throws IOException {
        while (true) {
            if (this.d < this.e || u()) {
                char[] cArr = this.N;
                int i = this.d;
                this.d = i + 1;
                char c = cArr[i];
                if (c < ' ') {
                    if (c == '\n') {
                        this.g++;
                        this.h = this.d;
                        return;
                    } else if (c == '\r') {
                        Q();
                        return;
                    } else if (c != '\t') {
                        d((int) c);
                    }
                }
            } else {
                return;
            }
        }
    }

    protected char G() throws IOException {
        int i = 0;
        if (this.d >= this.e && !u()) {
            e(" in character escape sequence");
        }
        char[] cArr = this.N;
        int i2 = this.d;
        this.d = i2 + 1;
        char c = cArr[i2];
        switch (c) {
            case ApiRunnable.ACTION_CODE_BROADCAST_SUMMARY /*34*/:
            case ApiRunnable.ACTION_CODE_UPDATE_PROFILE_DISPLAY_NAME /*47*/:
            case cse.AppCompatTheme_alertDialogButtonGroupStyle /*92*/:
                return c;
            case cse.AppCompatTheme_buttonBarNeutralButtonStyle /*98*/:
                return '\b';
            case cse.AppCompatTheme_checkboxStyle /*102*/:
                return '\f';
            case cse.AppCompatTheme_spinnerStyle /*110*/:
                return '\n';
            case 'r':
                return '\r';
            case 't':
                return '\t';
            case 'u':
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this.d >= this.e && !u()) {
                        e(" in character escape sequence");
                    }
                    char[] cArr2 = this.N;
                    int i4 = this.d;
                    this.d = i4 + 1;
                    char c2 = cArr2[i4];
                    i4 = a.a(c2);
                    if (i4 < 0) {
                        b((int) c2, "expected a hex-digit for character escape sequence");
                    }
                    i = (i << 4) | i4;
                }
                return (char) i;
            default:
                return a(c);
        }
    }

    private final void ac() throws IOException {
        int i = this.d;
        if (i + 3 < this.e) {
            char[] cArr = this.N;
            if (cArr[i] == 'r') {
                i++;
                if (cArr[i] == 'u') {
                    i++;
                    if (cArr[i] == 'e') {
                        i++;
                        char c = cArr[i];
                        if (c < '0' || c == ']' || c == '}') {
                            this.d = i;
                            return;
                        }
                    }
                }
            }
        }
        a("true", 1);
    }

    private final void ad() throws IOException {
        int i = this.d;
        if (i + 4 < this.e) {
            char[] cArr = this.N;
            if (cArr[i] == 'a') {
                i++;
                if (cArr[i] == 'l') {
                    i++;
                    if (cArr[i] == 's') {
                        i++;
                        if (cArr[i] == 'e') {
                            i++;
                            char c = cArr[i];
                            if (c < '0' || c == ']' || c == '}') {
                                this.d = i;
                                return;
                            }
                        }
                    }
                }
            }
        }
        a("false", 1);
    }

    private final void ae() throws IOException {
        int i = this.d;
        if (i + 3 < this.e) {
            char[] cArr = this.N;
            if (cArr[i] == 'u') {
                i++;
                if (cArr[i] == 'l') {
                    i++;
                    if (cArr[i] == 'l') {
                        i++;
                        char c = cArr[i];
                        if (c < '0' || c == ']' || c == '}') {
                            this.d = i;
                            return;
                        }
                    }
                }
            }
        }
        a("null", 1);
    }

    protected final void a(String str, int i) throws IOException {
        int length = str.length();
        do {
            if (this.d >= this.e && !u()) {
                h(str.substring(0, i));
            }
            if (this.N[this.d] != str.charAt(i)) {
                h(str.substring(0, i));
            }
            this.d++;
            i++;
        } while (i < length);
        if (this.d < this.e || u()) {
            char c = this.N[this.d];
            if (c >= '0' && c != ']' && c != '}' && Character.isJavaIdentifierPart(c)) {
                h(str.substring(0, i));
            }
        }
    }

    protected void h(String str) throws IOException {
        a(str, "'null', 'true', 'false' or NaN");
    }

    protected void a(String str, String str2) throws IOException {
        StringBuilder stringBuilder = new StringBuilder(str);
        while (true) {
            if (this.d >= this.e && !u()) {
                break;
            }
            char c = this.N[this.d];
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            this.d++;
            stringBuilder.append(c);
        }
        f("Unrecognized token '" + stringBuilder.toString() + "': was expecting " + str2);
    }
}
