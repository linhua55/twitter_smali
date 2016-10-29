package defpackage;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.b;
import com.fasterxml.jackson.core.d;
import com.fasterxml.jackson.core.io.a;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: hg */
public class hg extends gx {
    protected static final int[] L;
    private static final int[] T;
    protected b M;
    protected final hi N;
    protected int[] O;
    protected boolean P;
    protected InputStream Q;
    protected byte[] R;
    protected boolean S;
    private int U;

    static {
        T = a.b();
        L = a.a();
    }

    public hg(com.fasterxml.jackson.core.io.b bVar, int i, InputStream inputStream, b bVar2, hi hiVar, byte[] bArr, int i2, int i3, boolean z) {
        super(bVar, i);
        this.O = new int[16];
        this.P = false;
        this.Q = inputStream;
        this.M = bVar2;
        this.N = hiVar;
        this.R = bArr;
        this.d = i2;
        this.e = i3;
        this.h = i2;
        this.f = (long) (-i2);
        this.S = z;
    }

    protected final boolean u() throws IOException {
        this.f += (long) this.e;
        this.h -= this.e;
        if (this.Q == null) {
            return false;
        }
        int length = this.R.length;
        if (length == 0) {
            return false;
        }
        length = this.Q.read(this.R, 0, length);
        if (length > 0) {
            this.d = 0;
            this.e = length;
            return true;
        }
        w();
        if (length != 0) {
            return false;
        }
        throw new IOException("InputStream.read() returned 0 characters when trying to read " + this.R.length + " bytes");
    }

    protected void w() throws IOException {
        if (this.Q != null) {
            if (this.b.c() || a(Feature.a)) {
                this.Q.close();
            }
            this.Q = null;
        }
    }

    protected void x() throws IOException {
        super.x();
        this.N.b();
        if (this.S) {
            byte[] bArr = this.R;
            if (bArr != null) {
                this.R = com.fasterxml.jackson.core.util.b.a;
                this.b.a(bArr);
            }
        }
    }

    public String g() throws IOException, JsonParseException {
        if (this.K != JsonToken.h) {
            return a(this.K);
        }
        if (this.P) {
            this.P = false;
            v();
        }
        return this.n.f();
    }

    public String s() throws IOException, JsonParseException {
        if (this.K != JsonToken.h) {
            return super.a(null);
        }
        if (this.P) {
            this.P = false;
            v();
        }
        return this.n.f();
    }

    public String a(String str) throws IOException, JsonParseException {
        if (this.K != JsonToken.h) {
            return super.a(str);
        }
        if (this.P) {
            this.P = false;
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

    public JsonLocation f() {
        return new JsonLocation(this.b.a(), this.f + ((long) this.d), -1, this.g, (this.d - this.h) + 1);
    }

    public JsonToken a() throws IOException {
        this.A = 0;
        if (this.K == JsonToken.f) {
            return Q();
        }
        if (this.P) {
            N();
        }
        int U = U();
        if (U < 0) {
            close();
            this.K = null;
            return null;
        }
        this.i = (this.f + ((long) this.d)) - 1;
        this.j = this.g;
        this.k = (this.d - this.h) - 1;
        this.r = null;
        JsonToken jsonToken;
        if (U == 93) {
            if (!this.l.a()) {
                a(U, '}');
            }
            this.l = this.l.h();
            jsonToken = JsonToken.e;
            this.K = jsonToken;
            return jsonToken;
        } else if (U == 125) {
            if (!this.l.c()) {
                a(U, ']');
            }
            this.l = this.l.h();
            jsonToken = JsonToken.c;
            this.K = jsonToken;
            return jsonToken;
        } else {
            if (this.l.i()) {
                if (U != 44) {
                    b(U, "was expecting comma to separate " + this.l.d() + " entries");
                }
                U = S();
            }
            if (!this.l.c()) {
                return o(U);
            }
            this.l.a(g(U).a());
            this.K = JsonToken.f;
            U = W();
            if (U == 34) {
                this.P = true;
                this.m = JsonToken.h;
                return this.K;
            }
            switch (U) {
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
                    jsonToken = f(U);
                    break;
                case cse.AppCompatTheme_alertDialogStyle /*91*/:
                    jsonToken = JsonToken.d;
                    break;
                case cse.AppCompatTheme_checkboxStyle /*102*/:
                    a("false", 1);
                    jsonToken = JsonToken.l;
                    break;
                case cse.AppCompatTheme_spinnerStyle /*110*/:
                    a("null", 1);
                    jsonToken = JsonToken.m;
                    break;
                case 116:
                    a("true", 1);
                    jsonToken = JsonToken.k;
                    break;
                case 123:
                    jsonToken = JsonToken.b;
                    break;
                default:
                    jsonToken = j(U);
                    break;
            }
            this.m = jsonToken;
            return this.K;
        }
    }

    private final JsonToken o(int i) throws IOException {
        if (i == 34) {
            this.P = true;
            JsonToken jsonToken = JsonToken.h;
            this.K = jsonToken;
            return jsonToken;
        }
        switch (i) {
            case ApiRunnable.ACTION_CODE_UPLOAD_PROFILE_IMAGE /*45*/:
                jsonToken = K();
                this.K = jsonToken;
                return jsonToken;
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
                jsonToken = f(i);
                this.K = jsonToken;
                return jsonToken;
            case cse.AppCompatTheme_alertDialogStyle /*91*/:
                this.l = this.l.a(this.j, this.k);
                jsonToken = JsonToken.d;
                this.K = jsonToken;
                return jsonToken;
            case cse.AppCompatTheme_checkboxStyle /*102*/:
                a("false", 1);
                jsonToken = JsonToken.l;
                this.K = jsonToken;
                return jsonToken;
            case cse.AppCompatTheme_spinnerStyle /*110*/:
                a("null", 1);
                jsonToken = JsonToken.m;
                this.K = jsonToken;
                return jsonToken;
            case 116:
                a("true", 1);
                jsonToken = JsonToken.k;
                this.K = jsonToken;
                return jsonToken;
            case 123:
                this.l = this.l.b(this.j, this.k);
                jsonToken = JsonToken.b;
                this.K = jsonToken;
                return jsonToken;
            default:
                jsonToken = j(i);
                this.K = jsonToken;
                return jsonToken;
        }
    }

    private final JsonToken Q() {
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

    public boolean a(d dVar) throws IOException {
        this.A = 0;
        if (this.K == JsonToken.f) {
            Q();
            return false;
        }
        if (this.P) {
            N();
        }
        int U = U();
        if (U < 0) {
            close();
            this.K = null;
            return false;
        }
        this.i = (this.f + ((long) this.d)) - 1;
        this.j = this.g;
        this.k = (this.d - this.h) - 1;
        this.r = null;
        if (U == 93) {
            if (!this.l.a()) {
                a(U, '}');
            }
            this.l = this.l.h();
            this.K = JsonToken.e;
            return false;
        } else if (U == 125) {
            if (!this.l.c()) {
                a(U, ']');
            }
            this.l = this.l.h();
            this.K = JsonToken.c;
            return false;
        } else {
            if (this.l.i()) {
                if (U != 44) {
                    b(U, "was expecting comma to separate " + this.l.d() + " entries");
                }
                U = S();
            }
            if (this.l.c()) {
                if (U == 34) {
                    byte[] c = dVar.c();
                    int length = c.length;
                    if ((this.d + length) + 4 < this.e) {
                        int i = this.d + length;
                        if (this.R[i] == (byte) 34) {
                            length = 0;
                            int i2 = this.d;
                            while (i2 != i) {
                                if (c[length] == this.R[i2]) {
                                    length++;
                                    i2++;
                                }
                            }
                            this.l.a(dVar.a());
                            q(p(i2 + 1));
                            return true;
                        }
                    }
                }
                return a(U, dVar);
            }
            o(U);
            return false;
        }
    }

    private final int p(int i) throws IOException {
        int i2 = i + 1;
        byte b = this.R[i];
        int i3;
        byte b2;
        if (b == (byte) 58) {
            i3 = i2 + 1;
            b2 = this.R[i2];
            if (b2 > (byte) 32) {
                if (!(b2 == (byte) 47 || b2 == (byte) 35)) {
                    this.d = i3;
                    return b2;
                }
            } else if (b2 == (byte) 32 || b2 == (byte) 9) {
                i2 = i3 + 1;
                i3 = this.R[i3];
                if (i3 <= 32 || i3 == 47 || i3 == 35) {
                    i3 = i2;
                } else {
                    this.d = i2;
                    return i3;
                }
            }
            this.d = i3 - 1;
            return b(true);
        }
        if (b == (byte) 32 || b == (byte) 9) {
            int i4 = i2 + 1;
            b = this.R[i2];
            i2 = i4;
        }
        if (b == (byte) 58) {
            i3 = i2 + 1;
            b2 = this.R[i2];
            if (b2 > (byte) 32) {
                if (!(b2 == (byte) 47 || b2 == (byte) 35)) {
                    this.d = i3;
                    return b2;
                }
            } else if (b2 == (byte) 32 || b2 == (byte) 9) {
                i2 = i3 + 1;
                i3 = this.R[i3];
                if (!(i3 <= 32 || i3 == 47 || i3 == 35)) {
                    this.d = i2;
                    return i3;
                }
            }
            this.d = i3 - 1;
            return b(false);
        }
        i3 = i2;
        this.d = i3 - 1;
        return b(false);
    }

    private final void q(int i) throws IOException {
        this.K = JsonToken.f;
        switch (i) {
            case ApiRunnable.ACTION_CODE_BROADCAST_SUMMARY /*34*/:
                this.P = true;
                this.m = JsonToken.h;
            case ApiRunnable.ACTION_CODE_UPLOAD_PROFILE_IMAGE /*45*/:
                this.m = K();
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
                this.m = f(i);
            case cse.AppCompatTheme_alertDialogStyle /*91*/:
                this.m = JsonToken.d;
            case cse.AppCompatTheme_checkboxStyle /*102*/:
                a("false", 1);
                this.m = JsonToken.l;
            case cse.AppCompatTheme_spinnerStyle /*110*/:
                a("null", 1);
                this.m = JsonToken.m;
            case 116:
                a("true", 1);
                this.m = JsonToken.k;
            case 123:
                this.m = JsonToken.b;
            default:
                this.m = j(i);
        }
    }

    private final boolean a(int i, d dVar) throws IOException {
        String a = g(i).a();
        this.l.a(a);
        boolean equals = a.equals(dVar.a());
        this.K = JsonToken.f;
        int W = W();
        if (W == 34) {
            this.P = true;
            this.m = JsonToken.h;
            return equals;
        }
        JsonToken K;
        switch (W) {
            case ApiRunnable.ACTION_CODE_UPLOAD_PROFILE_IMAGE /*45*/:
                K = K();
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
                K = f(W);
                break;
            case cse.AppCompatTheme_alertDialogStyle /*91*/:
                K = JsonToken.d;
                break;
            case cse.AppCompatTheme_checkboxStyle /*102*/:
                a("false", 1);
                K = JsonToken.l;
                break;
            case cse.AppCompatTheme_spinnerStyle /*110*/:
                a("null", 1);
                K = JsonToken.m;
                break;
            case 116:
                a("true", 1);
                K = JsonToken.k;
                break;
            case 123:
                K = JsonToken.b;
                break;
            default:
                K = j(W);
                break;
        }
        this.m = K;
        return equals;
    }

    public String b() throws IOException {
        if (this.K == JsonToken.f) {
            this.p = false;
            JsonToken jsonToken = this.m;
            this.m = null;
            this.K = jsonToken;
            if (jsonToken == JsonToken.h) {
                if (this.P) {
                    this.P = false;
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

    protected JsonToken f(int i) throws IOException {
        int i2;
        int i3 = 1;
        char[] k = this.n.k();
        if (i == 48) {
            i = R();
        }
        k[0] = (char) i;
        int length = (this.d + k.length) - 1;
        if (length > this.e) {
            length = this.e;
            i2 = 1;
        } else {
            i2 = 1;
        }
        while (this.d < length) {
            byte[] bArr = this.R;
            int i4 = this.d;
            this.d = i4 + 1;
            int i5 = bArr[i4] & 255;
            if (i5 >= 48 && i5 <= 57) {
                i4 = i2 + 1;
                i2 = i3 + 1;
                k[i3] = (char) i5;
                i3 = i2;
                i2 = i4;
            } else if (i5 == 46 || i5 == cse.AppCompatTheme_buttonStyleSmall || i5 == 69) {
                return a(k, i3, i5, false, i2);
            } else {
                this.d--;
                this.n.a(i3);
                if (this.l.b()) {
                    r(i5);
                }
                return a(false, i2);
            }
        }
        return a(k, i3, false, i2);
    }

    protected JsonToken K() throws IOException {
        char[] k = this.n.k();
        k[0] = '-';
        if (this.d >= this.e) {
            t();
        }
        byte[] bArr = this.R;
        int i = this.d;
        this.d = i + 1;
        int i2 = bArr[i] & 255;
        if (i2 < 48 || i2 > 57) {
            return a(i2, true);
        }
        int i3;
        if (i2 == 48) {
            i2 = R();
        }
        i = 2;
        k[1] = (char) i2;
        i2 = (this.d + k.length) - 2;
        if (i2 > this.e) {
            i2 = this.e;
            i3 = 1;
        } else {
            i3 = 1;
        }
        while (this.d < i2) {
            byte[] bArr2 = this.R;
            int i4 = this.d;
            this.d = i4 + 1;
            int i5 = bArr2[i4] & 255;
            if (i5 >= 48 && i5 <= 57) {
                i3++;
                i4 = i + 1;
                k[i] = (char) i5;
                i = i4;
            } else if (i5 == 46 || i5 == cse.AppCompatTheme_buttonStyleSmall || i5 == 69) {
                return a(k, i, i5, true, i3);
            } else {
                this.d--;
                this.n.a(i);
                if (this.l.b()) {
                    r(i5);
                }
                return a(true, i3);
            }
        }
        return a(k, i, true, i3);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.fasterxml.jackson.core.JsonToken a(char[] r7, int r8, boolean r9, int r10) throws java.io.IOException {
        /*
        r6 = this;
        r5 = r10;
        r2 = r8;
        r1 = r7;
    L_0x0003:
        r0 = r6.d;
        r3 = r6.e;
        if (r0 < r3) goto L_0x0019;
    L_0x0009:
        r0 = r6.u();
        if (r0 != 0) goto L_0x0019;
    L_0x000f:
        r0 = r6.n;
        r0.a(r2);
        r0 = r6.a(r9, r5);
    L_0x0018:
        return r0;
    L_0x0019:
        r0 = r6.R;
        r3 = r6.d;
        r4 = r3 + 1;
        r6.d = r4;
        r0 = r0[r3];
        r3 = r0 & 255;
        r0 = 57;
        if (r3 > r0) goto L_0x002d;
    L_0x0029:
        r0 = 48;
        if (r3 >= r0) goto L_0x0040;
    L_0x002d:
        r0 = 46;
        if (r3 == r0) goto L_0x0039;
    L_0x0031:
        r0 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
        if (r3 == r0) goto L_0x0039;
    L_0x0035:
        r0 = 69;
        if (r3 != r0) goto L_0x0053;
    L_0x0039:
        r0 = r6;
        r4 = r9;
        r0 = r0.a(r1, r2, r3, r4, r5);
        goto L_0x0018;
    L_0x0040:
        r0 = r1.length;
        if (r2 < r0) goto L_0x007a;
    L_0x0043:
        r0 = r6.n;
        r1 = r0.m();
        r2 = 0;
        r0 = r2;
    L_0x004b:
        r2 = r0 + 1;
        r3 = (char) r3;
        r1[r0] = r3;
        r5 = r5 + 1;
        goto L_0x0003;
    L_0x0053:
        r0 = r6.d;
        r0 = r0 + -1;
        r6.d = r0;
        r0 = r6.n;
        r0.a(r2);
        r0 = r6.l;
        r0 = r0.b();
        if (r0 == 0) goto L_0x0075;
    L_0x0066:
        r0 = r6.R;
        r1 = r6.d;
        r2 = r1 + 1;
        r6.d = r2;
        r0 = r0[r1];
        r0 = r0 & 255;
        r6.r(r0);
    L_0x0075:
        r0 = r6.a(r9, r5);
        goto L_0x0018;
    L_0x007a:
        r0 = r2;
        goto L_0x004b;
        */
        throw new UnsupportedOperationException("Method not decompiled: hg.a(char[], int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    private final int R() throws IOException {
        if (this.d >= this.e && !u()) {
            return 48;
        }
        int i = this.R[this.d] & 255;
        if (i < 48 || i > 57) {
            return 48;
        }
        if (!a(Feature.h)) {
            c("Leading zeroes not allowed");
        }
        this.d++;
        if (i != 48) {
            return i;
        }
        do {
            if (this.d >= this.e && !u()) {
                return i;
            }
            i = this.R[this.d] & 255;
            if (i < 48 || i > 57) {
                return 48;
            }
            this.d++;
        } while (i == 48);
        return i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.fasterxml.jackson.core.JsonToken a(char[] r10, int r11, int r12, boolean r13, int r14) throws java.io.IOException {
        /*
        r9 = this;
        r0 = 0;
        r4 = 0;
        r1 = 46;
        if (r12 != r1) goto L_0x011d;
    L_0x0006:
        r1 = r11 + 1;
        r2 = (char) r12;
        r10[r11] = r2;
    L_0x000b:
        r2 = r9.d;
        r3 = r9.e;
        if (r2 < r3) goto L_0x00cc;
    L_0x0011:
        r2 = r9.u();
        if (r2 != 0) goto L_0x00cc;
    L_0x0017:
        r4 = 1;
        r5 = r12;
    L_0x0019:
        if (r0 != 0) goto L_0x0021;
    L_0x001b:
        r2 = "Decimal point not followed by a digit";
        r9.a(r5, r2);
    L_0x0021:
        r7 = r0;
        r0 = r1;
        r1 = r10;
    L_0x0024:
        r3 = 0;
        r2 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
        if (r5 == r2) goto L_0x002d;
    L_0x0029:
        r2 = 69;
        if (r5 != r2) goto L_0x0112;
    L_0x002d:
        r2 = r1.length;
        if (r0 < r2) goto L_0x0037;
    L_0x0030:
        r0 = r9.n;
        r1 = r0.m();
        r0 = 0;
    L_0x0037:
        r2 = r0 + 1;
        r5 = (char) r5;
        r1[r0] = r5;
        r0 = r9.d;
        r5 = r9.e;
        if (r0 < r5) goto L_0x0045;
    L_0x0042:
        r9.t();
    L_0x0045:
        r0 = r9.R;
        r5 = r9.d;
        r6 = r5 + 1;
        r9.d = r6;
        r0 = r0[r5];
        r5 = r0 & 255;
        r0 = 45;
        if (r5 == r0) goto L_0x0059;
    L_0x0055:
        r0 = 43;
        if (r5 != r0) goto L_0x010e;
    L_0x0059:
        r0 = r1.length;
        if (r2 < r0) goto L_0x010b;
    L_0x005c:
        r0 = r9.n;
        r1 = r0.m();
        r0 = 0;
    L_0x0063:
        r6 = r0 + 1;
        r2 = (char) r5;
        r1[r0] = r2;
        r0 = r9.d;
        r2 = r9.e;
        if (r0 < r2) goto L_0x0071;
    L_0x006e:
        r9.t();
    L_0x0071:
        r0 = r9.R;
        r2 = r9.d;
        r5 = r2 + 1;
        r9.d = r5;
        r0 = r0[r2];
        r2 = r0 & 255;
        r0 = r6;
    L_0x007e:
        r5 = 57;
        if (r2 > r5) goto L_0x0106;
    L_0x0082:
        r5 = 48;
        if (r2 < r5) goto L_0x0106;
    L_0x0086:
        r3 = r3 + 1;
        r5 = r1.length;
        if (r0 < r5) goto L_0x0092;
    L_0x008b:
        r0 = r9.n;
        r1 = r0.m();
        r0 = 0;
    L_0x0092:
        r5 = r0 + 1;
        r6 = (char) r2;
        r1[r0] = r6;
        r0 = r9.d;
        r6 = r9.e;
        if (r0 < r6) goto L_0x00f7;
    L_0x009d:
        r0 = r9.u();
        if (r0 != 0) goto L_0x00f7;
    L_0x00a3:
        r4 = 1;
        r0 = r3;
        r1 = r4;
        r3 = r5;
    L_0x00a7:
        if (r0 != 0) goto L_0x00af;
    L_0x00a9:
        r4 = "Exponent indicator not followed by a digit";
        r9.a(r2, r4);
    L_0x00af:
        if (r1 != 0) goto L_0x00c2;
    L_0x00b1:
        r1 = r9.d;
        r1 = r1 + -1;
        r9.d = r1;
        r1 = r9.l;
        r1 = r1.b();
        if (r1 == 0) goto L_0x00c2;
    L_0x00bf:
        r9.r(r2);
    L_0x00c2:
        r1 = r9.n;
        r1.a(r3);
        r0 = r9.b(r13, r14, r7, r0);
        return r0;
    L_0x00cc:
        r2 = r9.R;
        r3 = r9.d;
        r5 = r3 + 1;
        r9.d = r5;
        r2 = r2[r3];
        r12 = r2 & 255;
        r2 = 48;
        if (r12 < r2) goto L_0x011a;
    L_0x00dc:
        r2 = 57;
        if (r12 <= r2) goto L_0x00e3;
    L_0x00e0:
        r5 = r12;
        goto L_0x0019;
    L_0x00e3:
        r0 = r0 + 1;
        r2 = r10.length;
        if (r1 < r2) goto L_0x0118;
    L_0x00e8:
        r1 = r9.n;
        r10 = r1.m();
        r1 = 0;
        r2 = r1;
    L_0x00f0:
        r1 = r2 + 1;
        r3 = (char) r12;
        r10[r2] = r3;
        goto L_0x000b;
    L_0x00f7:
        r0 = r9.R;
        r2 = r9.d;
        r6 = r2 + 1;
        r9.d = r6;
        r0 = r0[r2];
        r2 = r0 & 255;
        r0 = r5;
        goto L_0x007e;
    L_0x0106:
        r1 = r4;
        r8 = r3;
        r3 = r0;
        r0 = r8;
        goto L_0x00a7;
    L_0x010b:
        r0 = r2;
        goto L_0x0063;
    L_0x010e:
        r0 = r2;
        r2 = r5;
        goto L_0x007e;
    L_0x0112:
        r1 = r4;
        r2 = r5;
        r8 = r3;
        r3 = r0;
        r0 = r8;
        goto L_0x00af;
    L_0x0118:
        r2 = r1;
        goto L_0x00f0;
    L_0x011a:
        r5 = r12;
        goto L_0x0019;
    L_0x011d:
        r7 = r0;
        r5 = r12;
        r1 = r10;
        r0 = r11;
        goto L_0x0024;
        */
        throw new UnsupportedOperationException("Method not decompiled: hg.a(char[], int, int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    private final void r(int i) throws IOException {
        this.d++;
        switch (i) {
            case p.Toolbar_popupTheme /*9*/:
            case ApiRunnable.ACTION_CODE_PING_BROADCAST /*32*/:
            case p.Toolbar_titleTextAppearance /*10*/:
                this.g++;
                this.h = this.d;
            case p.Toolbar_titleMarginStart /*13*/:
                P();
            default:
                c(i);
        }
    }

    protected final hn g(int i) throws IOException {
        if (i != 34) {
            return i(i);
        }
        if (this.d + 9 > this.e) {
            return L();
        }
        byte[] bArr = this.R;
        int[] iArr = L;
        int i2 = this.d;
        this.d = i2 + 1;
        i2 = bArr[i2] & 255;
        if (iArr[i2] == 0) {
            int i3 = this.d;
            this.d = i3 + 1;
            i3 = bArr[i3] & 255;
            if (iArr[i3] == 0) {
                i2 = (i2 << 8) | i3;
                i3 = this.d;
                this.d = i3 + 1;
                i3 = bArr[i3] & 255;
                if (iArr[i3] == 0) {
                    i2 = (i2 << 8) | i3;
                    i3 = this.d;
                    this.d = i3 + 1;
                    i3 = bArr[i3] & 255;
                    if (iArr[i3] == 0) {
                        i2 = (i2 << 8) | i3;
                        i3 = this.d;
                        this.d = i3 + 1;
                        int i4 = bArr[i3] & 255;
                        if (iArr[i4] == 0) {
                            this.U = i2;
                            return h(i4);
                        } else if (i4 == 34) {
                            return c(i2, 4);
                        } else {
                            return a(i2, i4, 4);
                        }
                    } else if (i3 == 34) {
                        return c(i2, 3);
                    } else {
                        return a(i2, i3, 3);
                    }
                } else if (i3 == 34) {
                    return c(i2, 2);
                } else {
                    return a(i2, i3, 2);
                }
            } else if (i3 == 34) {
                return c(i2, 1);
            } else {
                return a(i2, i3, 1);
            }
        } else if (i2 == 34) {
            return hi.d();
        } else {
            return a(0, i2, 0);
        }
    }

    protected final hn h(int i) throws IOException {
        byte[] bArr = this.R;
        int[] iArr = L;
        int i2 = this.d;
        this.d = i2 + 1;
        i2 = bArr[i2] & 255;
        if (iArr[i2] == 0) {
            i2 |= i << 8;
            int i3 = this.d;
            this.d = i3 + 1;
            i3 = bArr[i3] & 255;
            if (iArr[i3] == 0) {
                i2 = (i2 << 8) | i3;
                i3 = this.d;
                this.d = i3 + 1;
                i3 = bArr[i3] & 255;
                if (iArr[i3] == 0) {
                    i2 = (i2 << 8) | i3;
                    i3 = this.d;
                    this.d = i3 + 1;
                    int i4 = bArr[i3] & 255;
                    if (iArr[i4] == 0) {
                        return a(i4, i2);
                    }
                    if (i4 == 34) {
                        return b(this.U, i2, 4);
                    }
                    return a(this.U, i2, i4, 4);
                } else if (i3 == 34) {
                    return b(this.U, i2, 3);
                } else {
                    return a(this.U, i2, i3, 3);
                }
            } else if (i3 == 34) {
                return b(this.U, i2, 2);
            } else {
                return a(this.U, i2, i3, 2);
            }
        } else if (i2 == 34) {
            return b(this.U, i, 1);
        } else {
            return a(this.U, i, i2, 1);
        }
    }

    protected final hn a(int i, int i2) throws IOException {
        this.O[0] = this.U;
        this.O[1] = i2;
        byte[] bArr = this.R;
        int[] iArr = L;
        int i3 = 2;
        int i4 = i;
        while (this.d + 4 <= this.e) {
            int i5 = this.d;
            this.d = i5 + 1;
            int i6 = bArr[i5] & 255;
            if (iArr[i6] == 0) {
                i4 = (i4 << 8) | i6;
                i5 = this.d;
                this.d = i5 + 1;
                i6 = bArr[i5] & 255;
                if (iArr[i6] == 0) {
                    i4 = (i4 << 8) | i6;
                    i5 = this.d;
                    this.d = i5 + 1;
                    i6 = bArr[i5] & 255;
                    if (iArr[i6] == 0) {
                        i4 = (i4 << 8) | i6;
                        i5 = this.d;
                        this.d = i5 + 1;
                        i6 = bArr[i5] & 255;
                        if (iArr[i6] == 0) {
                            if (i3 >= this.O.length) {
                                this.O = hg.a(this.O, i3);
                            }
                            i5 = i3 + 1;
                            this.O[i3] = i4;
                            i3 = i5;
                            i4 = i6;
                        } else if (i6 == 34) {
                            return a(this.O, i3, i4, 4);
                        } else {
                            return a(this.O, i3, i4, i6, 4);
                        }
                    } else if (i6 == 34) {
                        return a(this.O, i3, i4, 3);
                    } else {
                        return a(this.O, i3, i4, i6, 3);
                    }
                } else if (i6 == 34) {
                    return a(this.O, i3, i4, 2);
                } else {
                    return a(this.O, i3, i4, i6, 2);
                }
            } else if (i6 == 34) {
                return a(this.O, i3, i4, 1);
            } else {
                return a(this.O, i3, i4, i6, 1);
            }
        }
        return a(this.O, i3, 0, i4, 0);
    }

    protected hn L() throws IOException {
        if (this.d >= this.e && !u()) {
            e(": was expecting closing '\"' for name");
        }
        byte[] bArr = this.R;
        int i = this.d;
        this.d = i + 1;
        int i2 = bArr[i] & 255;
        if (i2 == 34) {
            return hi.d();
        }
        return a(this.O, 0, 0, i2, 0);
    }

    private final hn a(int i, int i2, int i3) throws IOException {
        return a(this.O, 0, i, i2, i3);
    }

    private final hn a(int i, int i2, int i3, int i4) throws IOException {
        this.O[0] = i;
        return a(this.O, 1, i2, i3, i4);
    }

    protected final hn a(int[] iArr, int i, int i2, int i3, int i4) throws IOException {
        int[] iArr2 = L;
        while (true) {
            int[] iArr3;
            int i5;
            int i6;
            int i7;
            byte[] bArr;
            if (iArr2[i3] != 0) {
                if (i3 == 34) {
                    break;
                }
                if (i3 != 92) {
                    c(i3, "name");
                } else {
                    i3 = G();
                }
                if (i3 > 127) {
                    int i8;
                    int[] iArr4;
                    if (i4 >= 4) {
                        if (i >= iArr.length) {
                            iArr = hg.a(iArr, iArr.length);
                            this.O = iArr;
                        }
                        i8 = i + 1;
                        iArr[i] = i2;
                        i4 = 0;
                        i2 = 0;
                        iArr3 = iArr;
                    } else {
                        i8 = i;
                        iArr3 = iArr;
                    }
                    if (i3 < 2048) {
                        i5 = ((i3 >> 6) | 192) | (i2 << 8);
                        iArr4 = iArr3;
                        i6 = i4 + 1;
                    } else {
                        int[] iArr5;
                        int i9;
                        i7 = ((i3 >> 12) | 224) | (i2 << 8);
                        i5 = i4 + 1;
                        if (i5 >= 4) {
                            if (i8 >= iArr3.length) {
                                iArr3 = hg.a(iArr3, iArr3.length);
                                this.O = iArr3;
                            }
                            i5 = i8 + 1;
                            iArr3[i8] = i7;
                            i7 = i5;
                            iArr5 = iArr3;
                            i6 = 0;
                            i5 = 0;
                        } else {
                            i9 = i5;
                            i5 = i7;
                            i7 = i8;
                            iArr5 = iArr3;
                            i6 = i9;
                        }
                        i5 = (i5 << 8) | (((i3 >> 6) & 63) | 128);
                        i6++;
                        i9 = i7;
                        iArr4 = iArr5;
                        i8 = i9;
                    }
                    i2 = (i3 & 63) | 128;
                    i4 = i6;
                    i = i8;
                    iArr3 = iArr4;
                    i7 = i5;
                    if (i4 >= 4) {
                        i4++;
                        i2 |= i7 << 8;
                        iArr = iArr3;
                    } else {
                        if (i >= iArr3.length) {
                            iArr3 = hg.a(iArr3, iArr3.length);
                            this.O = iArr3;
                        }
                        i5 = i + 1;
                        iArr3[i] = i7;
                        i4 = 1;
                        i = i5;
                        iArr = iArr3;
                    }
                    if (this.d >= this.e && !u()) {
                        e(" in field name");
                    }
                    bArr = this.R;
                    i5 = this.d;
                    this.d = i5 + 1;
                    i3 = bArr[i5] & 255;
                }
            }
            i7 = i2;
            iArr3 = iArr;
            i2 = i3;
            if (i4 >= 4) {
                if (i >= iArr3.length) {
                    iArr3 = hg.a(iArr3, iArr3.length);
                    this.O = iArr3;
                }
                i5 = i + 1;
                iArr3[i] = i7;
                i4 = 1;
                i = i5;
                iArr = iArr3;
            } else {
                i4++;
                i2 |= i7 << 8;
                iArr = iArr3;
            }
            e(" in field name");
            bArr = this.R;
            i5 = this.d;
            this.d = i5 + 1;
            i3 = bArr[i5] & 255;
        }
        if (i4 > 0) {
            if (i >= iArr.length) {
                iArr = hg.a(iArr, iArr.length);
                this.O = iArr;
            }
            i6 = i + 1;
            iArr[i] = hg.d(i2, i4);
            i = i6;
        }
        hn a = this.N.a(iArr, i);
        if (a == null) {
            return a(iArr, i, i4);
        }
        return a;
    }

    protected hn i(int i) throws IOException {
        if (i == 39 && a(Feature.e)) {
            return M();
        }
        int[] iArr;
        int i2;
        if (!a(Feature.d)) {
            b((int) (char) k(i), "was expecting double-quote to start field name");
        }
        int[] d = a.d();
        if (d[i] != 0) {
            b(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = i;
        int i6 = 0;
        int[] iArr2 = this.O;
        while (true) {
            if (i3 < 4) {
                int i7 = i3 + 1;
                i3 = i5 | (i4 << 8);
                i5 = i6;
                iArr = iArr2;
                i2 = i7;
            } else {
                if (i6 >= iArr2.length) {
                    iArr2 = hg.a(iArr2, iArr2.length);
                    this.O = iArr2;
                }
                int i8 = i6 + 1;
                iArr2[i6] = i4;
                iArr = iArr2;
                i2 = 1;
                i3 = i5;
                i5 = i8;
            }
            if (this.d >= this.e && !u()) {
                e(" in field name");
            }
            i = this.R[this.d] & 255;
            if (d[i] != 0) {
                break;
            }
            this.d++;
            i4 = i3;
            i3 = i2;
            iArr2 = iArr;
            i6 = i5;
            i5 = i;
        }
        if (i2 > 0) {
            if (i5 >= iArr.length) {
                iArr = hg.a(iArr, iArr.length);
                this.O = iArr;
            }
            i8 = i5 + 1;
            iArr[i5] = i3;
            i5 = i8;
        }
        hn a = this.N.a(iArr, i5);
        if (a == null) {
            return a(iArr, i5, i2);
        }
        return a;
    }

    protected hn M() throws IOException {
        if (this.d >= this.e && !u()) {
            e(": was expecting closing ''' for name");
        }
        byte[] bArr = this.R;
        int i = this.d;
        this.d = i + 1;
        int i2 = bArr[i] & 255;
        if (i2 == 39) {
            return hi.d();
        }
        int i3;
        int[] iArr;
        int[] iArr2 = this.O;
        int[] iArr3 = L;
        int i4 = 0;
        int i5 = 0;
        i = 0;
        while (i2 != 39) {
            int i6;
            int[] iArr4;
            int i7;
            byte[] bArr2;
            if (!(i2 == 34 || iArr3[i2] == 0)) {
                if (i2 != 92) {
                    c(i2, "name");
                } else {
                    i2 = G();
                }
                if (i2 > 127) {
                    int[] iArr5;
                    if (i4 >= 4) {
                        if (i >= iArr2.length) {
                            iArr2 = hg.a(iArr2, iArr2.length);
                            this.O = iArr2;
                        }
                        i4 = i + 1;
                        iArr2[i] = i5;
                        i = 0;
                        i5 = i4;
                        i4 = 0;
                    } else {
                        i6 = i4;
                        i4 = i5;
                        i5 = i;
                        i = i6;
                    }
                    if (i2 < 2048) {
                        i6 = i + 1;
                        i = (i4 << 8) | ((i2 >> 6) | 192);
                        iArr5 = iArr2;
                        i3 = i6;
                    } else {
                        i4 = (i4 << 8) | ((i2 >> 12) | 224);
                        i++;
                        if (i >= 4) {
                            if (i5 >= iArr2.length) {
                                iArr2 = hg.a(iArr2, iArr2.length);
                                this.O = iArr2;
                            }
                            i = i5 + 1;
                            iArr2[i5] = i4;
                            i4 = i;
                            iArr4 = iArr2;
                            i3 = 0;
                            i = 0;
                        } else {
                            i6 = i;
                            i = i4;
                            i4 = i5;
                            iArr4 = iArr2;
                            i3 = i6;
                        }
                        i = (i << 8) | (((i2 >> 6) & 63) | 128);
                        i3++;
                        i6 = i4;
                        iArr5 = iArr4;
                        i5 = i6;
                    }
                    i7 = i;
                    i = i3;
                    iArr2 = iArr5;
                    i4 = (i2 & 63) | 128;
                    if (i >= 4) {
                        i6 = i + 1;
                        i = i4 | (i7 << 8);
                        i4 = i5;
                        iArr4 = iArr2;
                        i3 = i6;
                    } else {
                        if (i5 >= iArr2.length) {
                            iArr2 = hg.a(iArr2, iArr2.length);
                            this.O = iArr2;
                        }
                        i2 = i5 + 1;
                        iArr2[i5] = i7;
                        iArr4 = iArr2;
                        i3 = 1;
                        i = i4;
                        i4 = i2;
                    }
                    if (this.d >= this.e && !u()) {
                        e(" in field name");
                    }
                    bArr2 = this.R;
                    i7 = this.d;
                    this.d = i7 + 1;
                    i2 = bArr2[i7] & 255;
                    i6 = i3;
                    iArr2 = iArr4;
                    i5 = i;
                    i = i4;
                    i4 = i6;
                }
            }
            i7 = i5;
            i5 = i;
            i = i4;
            i4 = i2;
            if (i >= 4) {
                if (i5 >= iArr2.length) {
                    iArr2 = hg.a(iArr2, iArr2.length);
                    this.O = iArr2;
                }
                i2 = i5 + 1;
                iArr2[i5] = i7;
                iArr4 = iArr2;
                i3 = 1;
                i = i4;
                i4 = i2;
            } else {
                i6 = i + 1;
                i = i4 | (i7 << 8);
                i4 = i5;
                iArr4 = iArr2;
                i3 = i6;
            }
            e(" in field name");
            bArr2 = this.R;
            i7 = this.d;
            this.d = i7 + 1;
            i2 = bArr2[i7] & 255;
            i6 = i3;
            iArr2 = iArr4;
            i5 = i;
            i = i4;
            i4 = i6;
        }
        if (i4 > 0) {
            if (i >= iArr2.length) {
                iArr2 = hg.a(iArr2, iArr2.length);
                this.O = iArr2;
            }
            int i8 = i + 1;
            iArr2[i] = hg.d(i5, i4);
            i6 = i8;
            iArr = iArr2;
            i3 = i6;
        } else {
            iArr = iArr2;
            i3 = i;
        }
        hn a = this.N.a(iArr, i3);
        if (a == null) {
            return a(iArr, i3, i4);
        }
        return a;
    }

    private final hn c(int i, int i2) throws JsonParseException {
        int d = hg.d(i, i2);
        hn c = this.N.c(d);
        if (c != null) {
            return c;
        }
        this.O[0] = d;
        return a(this.O, 1, i2);
    }

    private final hn b(int i, int i2, int i3) throws JsonParseException {
        int d = hg.d(i2, i3);
        hn a = this.N.a(i, d);
        if (a != null) {
            return a;
        }
        this.O[0] = i;
        this.O[1] = d;
        return a(this.O, 2, i3);
    }

    private final hn a(int[] iArr, int i, int i2, int i3) throws JsonParseException {
        if (i >= iArr.length) {
            iArr = hg.a(iArr, iArr.length);
            this.O = iArr;
        }
        int i4 = i + 1;
        iArr[i] = hg.d(i2, i3);
        hn a = this.N.a(iArr, i4);
        if (a == null) {
            return a(iArr, i4, i3);
        }
        return a;
    }

    private final hn a(int[] iArr, int i, int i2) throws JsonParseException {
        int i3;
        int i4 = ((i << 2) - 4) + i2;
        if (i2 < 4) {
            i3 = iArr[i - 1];
            iArr[i - 1] = i3 << ((4 - i2) << 3);
        } else {
            i3 = 0;
        }
        char[] k = this.n.k();
        int i5 = 0;
        int i6 = 0;
        while (i6 < i4) {
            char[] cArr;
            int i7;
            int i8 = (iArr[i6 >> 2] >> ((3 - (i6 & 3)) << 3)) & 255;
            i6++;
            if (i8 > 127) {
                int i9;
                if ((i8 & 224) == 192) {
                    i8 &= 31;
                    i9 = 1;
                } else if ((i8 & 240) == 224) {
                    i8 &= 15;
                    i9 = 2;
                } else if ((i8 & 248) == 240) {
                    i8 &= 7;
                    i9 = 3;
                } else {
                    m(i8);
                    i8 = 1;
                    i9 = 1;
                }
                if (i6 + i9 > i4) {
                    e(" in field name");
                }
                int i10 = iArr[i6 >> 2] >> ((3 - (i6 & 3)) << 3);
                i6++;
                if ((i10 & 192) != 128) {
                    n(i10);
                }
                i8 = (i8 << 6) | (i10 & 63);
                if (i9 > 1) {
                    i10 = iArr[i6 >> 2] >> ((3 - (i6 & 3)) << 3);
                    i6++;
                    if ((i10 & 192) != 128) {
                        n(i10);
                    }
                    i8 = (i8 << 6) | (i10 & 63);
                    if (i9 > 2) {
                        i10 = iArr[i6 >> 2] >> ((3 - (i6 & 3)) << 3);
                        i6++;
                        if ((i10 & 192) != 128) {
                            n(i10 & 255);
                        }
                        i8 = (i8 << 6) | (i10 & 63);
                    }
                }
                if (i9 > 2) {
                    i8 -= 65536;
                    if (i5 >= k.length) {
                        k = this.n.n();
                    }
                    i9 = i5 + 1;
                    k[i5] = (char) (55296 + (i8 >> 10));
                    int i11 = (i8 & 1023) | 56320;
                    i8 = i6;
                    i6 = i9;
                    cArr = k;
                    i7 = i11;
                    if (i6 >= cArr.length) {
                        cArr = this.n.n();
                    }
                    i5 = i6 + 1;
                    cArr[i6] = (char) i7;
                    i6 = i8;
                    k = cArr;
                }
            }
            cArr = k;
            i7 = i8;
            i8 = i6;
            i6 = i5;
            if (i6 >= cArr.length) {
                cArr = this.n.n();
            }
            i5 = i6 + 1;
            cArr[i6] = (char) i7;
            i6 = i8;
            k = cArr;
        }
        String str = new String(k, 0, i5);
        if (i2 < 4) {
            iArr[i - 1] = i3;
        }
        return this.N.a(str, iArr, i);
    }

    protected void v() throws IOException {
        int i = this.d;
        if (i >= this.e) {
            t();
            i = this.d;
        }
        char[] k = this.n.k();
        int[] iArr = T;
        int min = Math.min(this.e, k.length + i);
        byte[] bArr = this.R;
        int i2 = i;
        i = 0;
        while (i2 < min) {
            int i3 = bArr[i2] & 255;
            if (iArr[i3] != 0) {
                if (i3 == 34) {
                    this.d = i2 + 1;
                    this.n.a(i);
                    return;
                }
                this.d = i2;
                a(k, i);
            }
            int i4 = i2 + 1;
            i2 = i + 1;
            k[i] = (char) i3;
            i = i2;
            i2 = i4;
        }
        this.d = i2;
        a(k, i);
    }

    private final void a(char[] cArr, int i) throws IOException {
        int[] iArr = T;
        byte[] bArr = this.R;
        while (true) {
            int i2 = this.d;
            if (i2 >= this.e) {
                t();
                i2 = this.d;
            }
            if (i >= cArr.length) {
                cArr = this.n.m();
                i = 0;
            }
            int min = Math.min(this.e, (cArr.length - i) + i2);
            while (i2 < min) {
                int i3 = i2 + 1;
                i2 = bArr[i2] & 255;
                if (iArr[i2] != 0) {
                    this.d = i3;
                    if (i2 == 34) {
                        this.n.a(i);
                        return;
                    }
                    switch (iArr[i2]) {
                        case p.View_android_focusable /*1*/:
                            i2 = G();
                            break;
                        case p.View_paddingStart /*2*/:
                            i2 = s(i2);
                            break;
                        case p.View_paddingEnd /*3*/:
                            if (this.e - this.d < 2) {
                                i2 = t(i2);
                                break;
                            } else {
                                i2 = u(i2);
                                break;
                            }
                        case p.View_theme /*4*/:
                            i3 = v(i2);
                            i2 = i + 1;
                            cArr[i] = (char) (55296 | (i3 >> 10));
                            if (i2 >= cArr.length) {
                                cArr = this.n.m();
                                i2 = 0;
                            }
                            i = i2;
                            i2 = (i3 & 1023) | 56320;
                            break;
                        default:
                            if (i2 >= 32) {
                                l(i2);
                                break;
                            } else {
                                c(i2, "string value");
                                break;
                            }
                    }
                    if (i >= cArr.length) {
                        cArr = this.n.m();
                        i3 = 0;
                    } else {
                        i3 = i;
                    }
                    i = i3 + 1;
                    cArr[i3] = (char) i2;
                } else {
                    int i4 = i + 1;
                    cArr[i] = (char) i2;
                    i2 = i3;
                    i = i4;
                }
            }
            this.d = i2;
        }
    }

    protected void N() throws IOException {
        this.P = false;
        int[] iArr = T;
        byte[] bArr = this.R;
        while (true) {
            int i = this.d;
            int i2 = this.e;
            if (i >= i2) {
                t();
                i = this.d;
                i2 = this.e;
            }
            while (i < i2) {
                int i3 = i + 1;
                i = bArr[i] & 255;
                if (iArr[i] != 0) {
                    this.d = i3;
                    if (i != 34) {
                        switch (iArr[i]) {
                            case p.View_android_focusable /*1*/:
                                G();
                                break;
                            case p.View_paddingStart /*2*/:
                                w(i);
                                break;
                            case p.View_paddingEnd /*3*/:
                                x(i);
                                break;
                            case p.View_theme /*4*/:
                                y(i);
                                break;
                            default:
                                if (i >= 32) {
                                    l(i);
                                    break;
                                } else {
                                    c(i, "string value");
                                    break;
                                }
                        }
                    }
                    return;
                }
                i = i3;
            }
            this.d = i;
        }
    }

    protected JsonToken j(int i) throws IOException {
        switch (i) {
            case ApiRunnable.ACTION_CODE_GET_BROADCAST_ID_FROM_URL /*39*/:
                break;
            case ApiRunnable.ACTION_CODE_DELETE_BROADCAST /*43*/:
                if (this.d >= this.e && !u()) {
                    I();
                }
                byte[] bArr = this.R;
                int i2 = this.d;
                this.d = i2 + 1;
                return a(bArr[i2] & 255, false);
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
            case cse.AppCompatTheme_alertDialogCenterButtons /*93*/:
            case 125:
                b(i, "expected a value");
                break;
        }
        if (a(Feature.e)) {
            return O();
        }
        if (Character.isJavaIdentifierStart(i)) {
            a("" + ((char) i), "('true', 'false' or 'null')");
        }
        b(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected com.fasterxml.jackson.core.JsonToken O() throws java.io.IOException {
        /*
        r10 = this;
        r9 = 39;
        r2 = 0;
        r0 = r10.n;
        r0 = r0.k();
        r6 = T;
        r7 = r10.R;
        r1 = r2;
    L_0x000e:
        r3 = r10.d;
        r4 = r10.e;
        if (r3 < r4) goto L_0x0017;
    L_0x0014:
        r10.t();
    L_0x0017:
        r3 = r0.length;
        if (r1 < r3) goto L_0x0021;
    L_0x001a:
        r0 = r10.n;
        r0 = r0.m();
        r1 = r2;
    L_0x0021:
        r4 = r10.e;
        r3 = r10.d;
        r5 = r0.length;
        r5 = r5 - r1;
        r3 = r3 + r5;
        if (r3 >= r4) goto L_0x00b4;
    L_0x002a:
        r4 = r10.d;
        if (r4 >= r3) goto L_0x000e;
    L_0x002e:
        r4 = r10.d;
        r5 = r4 + 1;
        r10.d = r5;
        r4 = r7[r4];
        r5 = r4 & 255;
        if (r5 == r9) goto L_0x003e;
    L_0x003a:
        r4 = r6[r5];
        if (r4 == 0) goto L_0x0048;
    L_0x003e:
        if (r5 != r9) goto L_0x004f;
    L_0x0040:
        r0 = r10.n;
        r0.a(r1);
        r0 = com.fasterxml.jackson.core.JsonToken.h;
        return r0;
    L_0x0048:
        r4 = r1 + 1;
        r5 = (char) r5;
        r0[r1] = r5;
        r1 = r4;
        goto L_0x002a;
    L_0x004f:
        r3 = r6[r5];
        switch(r3) {
            case 1: goto L_0x0072;
            case 2: goto L_0x0079;
            case 3: goto L_0x007e;
            case 4: goto L_0x0090;
            default: goto L_0x0054;
        };
    L_0x0054:
        r3 = 32;
        if (r5 >= r3) goto L_0x005e;
    L_0x0058:
        r3 = "string value";
        r10.c(r5, r3);
    L_0x005e:
        r10.l(r5);
    L_0x0061:
        r3 = r5;
    L_0x0062:
        r4 = r0.length;
        if (r1 < r4) goto L_0x00b0;
    L_0x0065:
        r0 = r10.n;
        r0 = r0.m();
        r4 = r2;
    L_0x006c:
        r1 = r4 + 1;
        r3 = (char) r3;
        r0[r4] = r3;
        goto L_0x000e;
    L_0x0072:
        if (r5 == r9) goto L_0x0061;
    L_0x0074:
        r3 = r10.G();
        goto L_0x0062;
    L_0x0079:
        r3 = r10.s(r5);
        goto L_0x0062;
    L_0x007e:
        r3 = r10.e;
        r4 = r10.d;
        r3 = r3 - r4;
        r4 = 2;
        if (r3 < r4) goto L_0x008b;
    L_0x0086:
        r3 = r10.u(r5);
        goto L_0x0062;
    L_0x008b:
        r3 = r10.t(r5);
        goto L_0x0062;
    L_0x0090:
        r4 = r10.v(r5);
        r3 = r1 + 1;
        r5 = 55296; // 0xd800 float:7.7486E-41 double:2.732E-319;
        r8 = r4 >> 10;
        r5 = r5 | r8;
        r5 = (char) r5;
        r0[r1] = r5;
        r1 = r0.length;
        if (r3 < r1) goto L_0x00b2;
    L_0x00a2:
        r0 = r10.n;
        r0 = r0.m();
        r1 = r2;
    L_0x00a9:
        r3 = 56320; // 0xdc00 float:7.8921E-41 double:2.7826E-319;
        r4 = r4 & 1023;
        r3 = r3 | r4;
        goto L_0x0062;
    L_0x00b0:
        r4 = r1;
        goto L_0x006c;
    L_0x00b2:
        r1 = r3;
        goto L_0x00a9;
    L_0x00b4:
        r3 = r4;
        goto L_0x002a;
        */
        throw new UnsupportedOperationException("Method not decompiled: hg.O():com.fasterxml.jackson.core.JsonToken");
    }

    protected JsonToken a(int i, boolean z) throws IOException {
        int i2 = i;
        while (i2 == 73) {
            String str;
            if (this.d >= this.e && !u()) {
                I();
            }
            byte[] bArr = this.R;
            int i3 = this.d;
            this.d = i3 + 1;
            byte b = bArr[i3];
            if (b != 78) {
                if (b != 110) {
                    i2 = b;
                    break;
                }
                str = z ? "-Infinity" : "+Infinity";
            } else {
                str = z ? "-INF" : "+INF";
            }
            a(str, 3);
            if (a(Feature.i)) {
                return a(str, z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            f("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            byte b2 = b;
        }
        a(i2, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    protected final void a(String str, int i) throws IOException {
        int length = str.length();
        if (this.d + length >= this.e) {
            b(str, i);
            return;
        }
        do {
            if (this.R[this.d] != str.charAt(i)) {
                g(str.substring(0, i));
            }
            this.d++;
            i++;
        } while (i < length);
        length = this.R[this.d] & 255;
        if (length >= 48 && length != 93 && length != 125) {
            a(str, i, length);
        }
    }

    private final void b(String str, int i) throws IOException {
        int length = str.length();
        do {
            if ((this.d >= this.e && !u()) || this.R[this.d] != str.charAt(i)) {
                g(str.substring(0, i));
            }
            this.d++;
            i++;
        } while (i < length);
        if (this.d < this.e || u()) {
            length = this.R[this.d] & 255;
            if (length >= 48 && length != 93 && length != 125) {
                a(str, i, length);
            }
        }
    }

    private final void a(String str, int i, int i2) throws IOException {
        if (Character.isJavaIdentifierPart((char) k(i2))) {
            g(str.substring(0, i));
        }
    }

    private final int S() throws IOException {
        while (this.d < this.e) {
            byte[] bArr = this.R;
            int i = this.d;
            this.d = i + 1;
            int i2 = bArr[i] & 255;
            if (i2 > 32) {
                if (i2 != 47 && i2 != 35) {
                    return i2;
                }
                this.d--;
                return T();
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this.g++;
                    this.h = this.d;
                } else if (i2 == 13) {
                    P();
                } else if (i2 != 9) {
                    d(i2);
                }
            }
        }
        return T();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final int T() throws java.io.IOException {
        /*
        r4 = this;
        r3 = 32;
    L_0x0002:
        r0 = r4.d;
        r1 = r4.e;
        if (r0 < r1) goto L_0x000e;
    L_0x0008:
        r0 = r4.u();
        if (r0 == 0) goto L_0x0050;
    L_0x000e:
        r0 = r4.R;
        r1 = r4.d;
        r2 = r1 + 1;
        r4.d = r2;
        r0 = r0[r1];
        r0 = r0 & 255;
        if (r0 <= r3) goto L_0x002f;
    L_0x001c:
        r1 = 47;
        if (r0 != r1) goto L_0x0024;
    L_0x0020:
        r4.X();
        goto L_0x0002;
    L_0x0024:
        r1 = 35;
        if (r0 != r1) goto L_0x002e;
    L_0x0028:
        r1 = r4.Z();
        if (r1 != 0) goto L_0x0002;
    L_0x002e:
        return r0;
    L_0x002f:
        if (r0 == r3) goto L_0x0002;
    L_0x0031:
        r1 = 10;
        if (r0 != r1) goto L_0x0040;
    L_0x0035:
        r0 = r4.g;
        r0 = r0 + 1;
        r4.g = r0;
        r0 = r4.d;
        r4.h = r0;
        goto L_0x0002;
    L_0x0040:
        r1 = 13;
        if (r0 != r1) goto L_0x0048;
    L_0x0044:
        r4.P();
        goto L_0x0002;
    L_0x0048:
        r1 = 9;
        if (r0 == r1) goto L_0x0002;
    L_0x004c:
        r4.d(r0);
        goto L_0x0002;
    L_0x0050:
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
        throw new UnsupportedOperationException("Method not decompiled: hg.T():int");
    }

    private final int U() throws IOException {
        if (this.d >= this.e && !u()) {
            return z();
        }
        byte[] bArr = this.R;
        int i = this.d;
        this.d = i + 1;
        int i2 = bArr[i] & 255;
        if (i2 <= 32) {
            if (i2 != 32) {
                if (i2 == 10) {
                    this.g++;
                    this.h = this.d;
                } else if (i2 == 13) {
                    P();
                } else if (i2 != 9) {
                    d(i2);
                }
            }
            while (this.d < this.e) {
                bArr = this.R;
                i = this.d;
                this.d = i + 1;
                i2 = bArr[i] & 255;
                if (i2 > 32) {
                    if (i2 != 47 && i2 != 35) {
                        return i2;
                    }
                    this.d--;
                    return V();
                } else if (i2 != 32) {
                    if (i2 == 10) {
                        this.g++;
                        this.h = this.d;
                    } else if (i2 == 13) {
                        P();
                    } else if (i2 != 9) {
                        d(i2);
                    }
                }
            }
            return V();
        } else if (i2 != 47 && i2 != 35) {
            return i2;
        } else {
            this.d--;
            return V();
        }
    }

    private final int V() throws IOException {
        while (true) {
            if (this.d >= this.e && !u()) {
                return z();
            }
            byte[] bArr = this.R;
            int i = this.d;
            this.d = i + 1;
            int i2 = bArr[i] & 255;
            if (i2 > 32) {
                if (i2 == 47) {
                    X();
                } else if (i2 != 35 || !Z()) {
                    return i2;
                }
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this.g++;
                    this.h = this.d;
                } else if (i2 == 13) {
                    P();
                } else if (i2 != 9) {
                    d(i2);
                }
            }
        }
    }

    private final int W() throws IOException {
        if (this.d + 4 >= this.e) {
            return b(false);
        }
        byte b = this.R[this.d];
        byte[] bArr;
        int i;
        int i2;
        if (b == 58) {
            bArr = this.R;
            i = this.d + 1;
            this.d = i;
            i2 = bArr[i];
            if (i2 <= 32) {
                if (i2 == 32 || i2 == 9) {
                    bArr = this.R;
                    i = this.d + 1;
                    this.d = i;
                    i2 = bArr[i];
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
        if (b == (byte) 32 || b == (byte) 9) {
            bArr = this.R;
            i = this.d + 1;
            this.d = i;
            b = bArr[i];
        }
        if (b != 58) {
            return b(false);
        }
        bArr = this.R;
        i = this.d + 1;
        this.d = i;
        i2 = bArr[i];
        if (i2 <= 32) {
            if (i2 == 32 || i2 == 9) {
                bArr = this.R;
                i = this.d + 1;
                this.d = i;
                i2 = bArr[i];
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
            if (this.d >= this.e && !u()) {
                break;
            }
            byte[] bArr = this.R;
            int i = this.d;
            this.d = i + 1;
            int i2 = bArr[i] & 255;
            if (i2 > 32) {
                if (i2 == 47) {
                    X();
                } else if (i2 != 35 || !Z()) {
                    if (z) {
                        return i2;
                    }
                    if (i2 != 58) {
                        if (i2 < 32) {
                            d(i2);
                        }
                        b(i2, "was expecting a colon to separate field name and value");
                    }
                    z = true;
                }
            } else if (i2 != 32) {
                if (i2 == 10) {
                    this.g++;
                    this.h = this.d;
                } else if (i2 == 13) {
                    P();
                } else if (i2 != 9) {
                    d(i2);
                }
            }
        }
        throw b("Unexpected end-of-input within/between " + this.l.d() + " entries");
    }

    private final void X() throws IOException {
        if (!a(Feature.b)) {
            b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this.d >= this.e && !u()) {
            e(" in a comment");
        }
        byte[] bArr = this.R;
        int i = this.d;
        this.d = i + 1;
        int i2 = bArr[i] & 255;
        if (i2 == 47) {
            aa();
        } else if (i2 == 42) {
            Y();
        } else {
            b(i2, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void Y() throws IOException {
        int[] e = a.e();
        while (true) {
            if (this.d < this.e || u()) {
                byte[] bArr = this.R;
                int i = this.d;
                this.d = i + 1;
                int i2 = bArr[i] & 255;
                i = e[i2];
                if (i != 0) {
                    switch (i) {
                        case p.View_paddingStart /*2*/:
                            w(i2);
                            continue;
                        case p.View_paddingEnd /*3*/:
                            x(i2);
                            continue;
                        case p.View_theme /*4*/:
                            y(i2);
                            continue;
                        case p.Toolbar_titleTextAppearance /*10*/:
                            this.g++;
                            this.h = this.d;
                            continue;
                        case p.Toolbar_titleMarginStart /*13*/:
                            P();
                            continue;
                        case cse.AppCompatTheme_dialogTheme /*42*/:
                            if (this.d >= this.e && !u()) {
                                break;
                            } else if (this.R[this.d] == 47) {
                                this.d++;
                                return;
                            } else {
                                continue;
                            }
                        default:
                            l(i2);
                            continue;
                    }
                }
            }
            e(" in a comment");
            return;
        }
    }

    private final boolean Z() throws IOException {
        if (!a(Feature.c)) {
            return false;
        }
        aa();
        return true;
    }

    private final void aa() throws IOException {
        int[] e = a.e();
        while (true) {
            if (this.d < this.e || u()) {
                byte[] bArr = this.R;
                int i = this.d;
                this.d = i + 1;
                int i2 = bArr[i] & 255;
                i = e[i2];
                if (i != 0) {
                    switch (i) {
                        case p.View_paddingStart /*2*/:
                            w(i2);
                            break;
                        case p.View_paddingEnd /*3*/:
                            x(i2);
                            break;
                        case p.View_theme /*4*/:
                            y(i2);
                            break;
                        case p.Toolbar_titleTextAppearance /*10*/:
                            this.g++;
                            this.h = this.d;
                            return;
                        case p.Toolbar_titleMarginStart /*13*/:
                            P();
                            return;
                        case cse.AppCompatTheme_dialogTheme /*42*/:
                            break;
                        default:
                            if (i >= 0) {
                                break;
                            }
                            l(i2);
                            break;
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
        byte[] bArr = this.R;
        int i2 = this.d;
        this.d = i2 + 1;
        byte b = bArr[i2];
        switch (b) {
            case ApiRunnable.ACTION_CODE_BROADCAST_SUMMARY /*34*/:
            case ApiRunnable.ACTION_CODE_UPDATE_PROFILE_DISPLAY_NAME /*47*/:
            case cse.AppCompatTheme_alertDialogButtonGroupStyle /*92*/:
                return (char) b;
            case cse.AppCompatTheme_buttonBarNeutralButtonStyle /*98*/:
                return '\b';
            case cse.AppCompatTheme_checkboxStyle /*102*/:
                return '\f';
            case cse.AppCompatTheme_spinnerStyle /*110*/:
                return '\n';
            case (byte) 114:
                return '\r';
            case (byte) 116:
                return '\t';
            case (byte) 117:
                int i3 = 0;
                while (i < 4) {
                    if (this.d >= this.e && !u()) {
                        e(" in character escape sequence");
                    }
                    byte[] bArr2 = this.R;
                    int i4 = this.d;
                    this.d = i4 + 1;
                    byte b2 = bArr2[i4];
                    i4 = a.a(b2);
                    if (i4 < 0) {
                        b((int) b2, "expected a hex-digit for character escape sequence");
                    }
                    i3 = (i3 << 4) | i4;
                    i++;
                }
                return (char) i3;
            default:
                return a((char) k(b));
        }
    }

    protected int k(int i) throws IOException {
        int i2 = i & 255;
        if (i2 <= 127) {
            return i2;
        }
        int i3;
        Object obj;
        if ((i2 & 224) == 192) {
            i3 = i2 & 31;
            obj = 1;
        } else if ((i2 & 240) == 224) {
            i3 = i2 & 15;
            i2 = 2;
        } else if ((i2 & 248) == 240) {
            i3 = i2 & 7;
            obj = 3;
        } else {
            m(i2 & 255);
            i3 = i2;
            i2 = 1;
        }
        int ab = ab();
        if ((ab & 192) != 128) {
            n(ab & 255);
        }
        i3 = (i3 << 6) | (ab & 63);
        if (obj <= 1) {
            return i3;
        }
        int ab2 = ab();
        if ((ab2 & 192) != 128) {
            n(ab2 & 255);
        }
        ab2 = (ab2 & 63) | (i3 << 6);
        if (obj <= 2) {
            return ab2;
        }
        i2 = ab();
        if ((i2 & 192) != 128) {
            n(i2 & 255);
        }
        return (i2 & 63) | (ab2 << 6);
    }

    private final int s(int i) throws IOException {
        if (this.d >= this.e) {
            t();
        }
        byte[] bArr = this.R;
        int i2 = this.d;
        this.d = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
        return (b & 63) | ((i & 31) << 6);
    }

    private final int t(int i) throws IOException {
        if (this.d >= this.e) {
            t();
        }
        int i2 = i & 15;
        byte[] bArr = this.R;
        int i3 = this.d;
        this.d = i3 + 1;
        byte b = bArr[i3];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
        i2 = (i2 << 6) | (b & 63);
        if (this.d >= this.e) {
            t();
        }
        bArr = this.R;
        i3 = this.d;
        this.d = i3 + 1;
        b = bArr[i3];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
        return (i2 << 6) | (b & 63);
    }

    private final int u(int i) throws IOException {
        int i2 = i & 15;
        byte[] bArr = this.R;
        int i3 = this.d;
        this.d = i3 + 1;
        byte b = bArr[i3];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
        i2 = (i2 << 6) | (b & 63);
        bArr = this.R;
        i3 = this.d;
        this.d = i3 + 1;
        b = bArr[i3];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
        return (i2 << 6) | (b & 63);
    }

    private final int v(int i) throws IOException {
        if (this.d >= this.e) {
            t();
        }
        byte[] bArr = this.R;
        int i2 = this.d;
        this.d = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
        int i3 = (b & 63) | ((i & 7) << 6);
        if (this.d >= this.e) {
            t();
        }
        byte[] bArr2 = this.R;
        int i4 = this.d;
        this.d = i4 + 1;
        byte b2 = bArr2[i4];
        if ((b2 & 192) != 128) {
            b(b2 & 255, this.d);
        }
        i3 = (i3 << 6) | (b2 & 63);
        if (this.d >= this.e) {
            t();
        }
        bArr2 = this.R;
        i4 = this.d;
        this.d = i4 + 1;
        b2 = bArr2[i4];
        if ((b2 & 192) != 128) {
            b(b2 & 255, this.d);
        }
        return ((i3 << 6) | (b2 & 63)) - 65536;
    }

    private final void w(int i) throws IOException {
        if (this.d >= this.e) {
            t();
        }
        byte[] bArr = this.R;
        int i2 = this.d;
        this.d = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
    }

    private final void x(int i) throws IOException {
        if (this.d >= this.e) {
            t();
        }
        byte[] bArr = this.R;
        int i2 = this.d;
        this.d = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
        if (this.d >= this.e) {
            t();
        }
        bArr = this.R;
        i2 = this.d;
        this.d = i2 + 1;
        b = bArr[i2];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
    }

    private final void y(int i) throws IOException {
        if (this.d >= this.e) {
            t();
        }
        byte[] bArr = this.R;
        int i2 = this.d;
        this.d = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
        if (this.d >= this.e) {
            t();
        }
        bArr = this.R;
        i2 = this.d;
        this.d = i2 + 1;
        b = bArr[i2];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
        if (this.d >= this.e) {
            t();
        }
        bArr = this.R;
        i2 = this.d;
        this.d = i2 + 1;
        b = bArr[i2];
        if ((b & 192) != 128) {
            b(b & 255, this.d);
        }
    }

    protected final void P() throws IOException {
        if ((this.d < this.e || u()) && this.R[this.d] == 10) {
            this.d++;
        }
        this.g++;
        this.h = this.d;
    }

    private int ab() throws IOException {
        if (this.d >= this.e) {
            t();
        }
        byte[] bArr = this.R;
        int i = this.d;
        this.d = i + 1;
        return bArr[i] & 255;
    }

    protected void g(String str) throws IOException {
        a(str, "'null', 'true', 'false' or NaN");
    }

    protected void a(String str, String str2) throws IOException {
        StringBuilder stringBuilder = new StringBuilder(str);
        while (true) {
            if (this.d >= this.e && !u()) {
                break;
            }
            byte[] bArr = this.R;
            int i = this.d;
            this.d = i + 1;
            char k = (char) k(bArr[i]);
            if (!Character.isJavaIdentifierPart(k)) {
                break;
            }
            stringBuilder.append(k);
        }
        f("Unrecognized token '" + stringBuilder.toString() + "': was expecting " + str2);
    }

    protected void l(int i) throws JsonParseException {
        if (i < 32) {
            d(i);
        }
        m(i);
    }

    protected void m(int i) throws JsonParseException {
        f("Invalid UTF-8 start byte 0x" + Integer.toHexString(i));
    }

    protected void n(int i) throws JsonParseException {
        f("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }

    protected void b(int i, int i2) throws JsonParseException {
        this.d = i2;
        n(i);
    }

    public static int[] a(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        return Arrays.copyOf(iArr, iArr.length + i);
    }

    private static final int d(int i, int i2) {
        return i2 == 4 ? i : i | (-1 << (i2 << 3));
    }
}
