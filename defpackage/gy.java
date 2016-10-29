package defpackage;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.e;
import java.io.IOException;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: gy */
public abstract class gy extends JsonParser {
    protected JsonToken K;

    public abstract JsonToken a() throws IOException;

    public abstract String g() throws IOException;

    protected abstract void y() throws JsonParseException;

    protected gy() {
    }

    public JsonToken d() {
        return this.K;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.fasterxml.jackson.core.JsonParser c() throws java.io.IOException {
        /*
        r3 = this;
        r0 = r3.K;
        r1 = com.fasterxml.jackson.core.JsonToken.b;
        if (r0 == r1) goto L_0x000d;
    L_0x0006:
        r0 = r3.K;
        r1 = com.fasterxml.jackson.core.JsonToken.d;
        if (r0 == r1) goto L_0x000d;
    L_0x000c:
        return r3;
    L_0x000d:
        r0 = 1;
    L_0x000e:
        r1 = r3.a();
        if (r1 != 0) goto L_0x0018;
    L_0x0014:
        r3.y();
        goto L_0x000c;
    L_0x0018:
        r2 = r1.c();
        if (r2 == 0) goto L_0x0021;
    L_0x001e:
        r0 = r0 + 1;
        goto L_0x000e;
    L_0x0021:
        r1 = r1.d();
        if (r1 == 0) goto L_0x000e;
    L_0x0027:
        r0 = r0 + -1;
        if (r0 != 0) goto L_0x000e;
    L_0x002b:
        goto L_0x000c;
        */
        throw new UnsupportedOperationException("Method not decompiled: gy.c():com.fasterxml.jackson.core.JsonParser");
    }

    public boolean a(boolean z) throws IOException {
        JsonToken jsonToken = this.K;
        if (jsonToken != null) {
            switch (jsonToken.a()) {
                case p.Toolbar_contentInsetEnd /*6*/:
                    String trim = g().trim();
                    if ("true".equals(trim)) {
                        return true;
                    }
                    if ("false".equals(trim)) {
                        return false;
                    }
                    if (d(trim)) {
                        return false;
                    }
                    break;
                case p.Toolbar_contentInsetLeft /*7*/:
                    if (i() == 0) {
                        return false;
                    }
                    return true;
                case p.Toolbar_popupTheme /*9*/:
                    return true;
                case p.Toolbar_titleTextAppearance /*10*/:
                case p.Toolbar_subtitleTextAppearance /*11*/:
                    return false;
                case p.Toolbar_titleMargins /*12*/:
                    Object n = n();
                    if (n instanceof Boolean) {
                        return ((Boolean) n).booleanValue();
                    }
                    break;
            }
        }
        return z;
    }

    public int a(int i) throws IOException {
        JsonToken jsonToken = this.K;
        if (jsonToken == null) {
            return i;
        }
        switch (jsonToken.a()) {
            case p.Toolbar_contentInsetEnd /*6*/:
                String g = g();
                if (d(g)) {
                    return 0;
                }
                return e.a(g, i);
            case p.Toolbar_contentInsetLeft /*7*/:
            case p.Toolbar_contentInsetRight /*8*/:
                return i();
            case p.Toolbar_popupTheme /*9*/:
                return 1;
            case p.Toolbar_titleTextAppearance /*10*/:
                return 0;
            case p.Toolbar_subtitleTextAppearance /*11*/:
                return 0;
            case p.Toolbar_titleMargins /*12*/:
                Object n = n();
                if (n instanceof Number) {
                    return ((Number) n).intValue();
                }
                return i;
            default:
                return i;
        }
    }

    public long a(long j) throws IOException {
        JsonToken jsonToken = this.K;
        if (jsonToken == null) {
            return j;
        }
        switch (jsonToken.a()) {
            case p.Toolbar_contentInsetEnd /*6*/:
                String g = g();
                if (d(g)) {
                    return 0;
                }
                return e.a(g, j);
            case p.Toolbar_contentInsetLeft /*7*/:
            case p.Toolbar_contentInsetRight /*8*/:
                return j();
            case p.Toolbar_popupTheme /*9*/:
                return 1;
            case p.Toolbar_titleTextAppearance /*10*/:
            case p.Toolbar_subtitleTextAppearance /*11*/:
                return 0;
            case p.Toolbar_titleMargins /*12*/:
                Object n = n();
                if (n instanceof Number) {
                    return ((Number) n).longValue();
                }
                return j;
            default:
                return j;
        }
    }

    public double a(double d) throws IOException {
        JsonToken jsonToken = this.K;
        if (jsonToken == null) {
            return d;
        }
        switch (jsonToken.a()) {
            case p.Toolbar_contentInsetEnd /*6*/:
                String g = g();
                if (d(g)) {
                    return 0.0d;
                }
                return e.a(g, d);
            case p.Toolbar_contentInsetLeft /*7*/:
            case p.Toolbar_contentInsetRight /*8*/:
                return k();
            case p.Toolbar_popupTheme /*9*/:
                return 1.0d;
            case p.Toolbar_titleTextAppearance /*10*/:
            case p.Toolbar_subtitleTextAppearance /*11*/:
                return 0.0d;
            case p.Toolbar_titleMargins /*12*/:
                Object n = n();
                if (n instanceof Number) {
                    return ((Number) n).doubleValue();
                }
                return d;
            default:
                return d;
        }
    }

    public String a(String str) throws IOException {
        return (this.K == JsonToken.h || !(this.K == null || this.K == JsonToken.m || !this.K.e())) ? g() : str;
    }

    protected boolean d(String str) {
        return "null".equals(str);
    }

    protected void b(int i, String str) throws JsonParseException {
        if (i < 0) {
            H();
        }
        String str2 = "Unexpected character (" + gy.e(i) + ")";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        f(str2);
    }

    protected void H() throws JsonParseException {
        e(" in " + this.K);
    }

    protected void e(String str) throws JsonParseException {
        f("Unexpected end-of-input" + str);
    }

    protected void I() throws JsonParseException {
        e(" in a value");
    }

    protected void c(int i) throws JsonParseException {
        b(i, "Expected space separating root-level values");
    }

    protected void d(int i) throws JsonParseException {
        f("Illegal character (" + gy.e((char) i) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
    }

    protected void c(int i, String str) throws JsonParseException {
        if (!a(Feature.f) || i > 32) {
            f("Illegal unquoted character (" + gy.e((char) i) + "): has to be escaped using backslash to be included in " + str);
        }
    }

    protected char a(char c) throws JsonProcessingException {
        if (!(a(Feature.g) || (c == '\'' && a(Feature.e)))) {
            f("Unrecognized character escape " + gy.e((int) c));
        }
        return c;
    }

    protected static final String e(int i) {
        char c = (char) i;
        if (Character.isISOControl(c)) {
            return "(CTRL-CHAR, code " + i + ")";
        }
        if (i > 255) {
            return "'" + c + "' (code " + i + " / 0x" + Integer.toHexString(i) + ")";
        }
        return "'" + c + "' (code " + i + ")";
    }

    protected final void f(String str) throws JsonParseException {
        throw b(str);
    }

    protected final void a(String str, Throwable th) throws JsonParseException {
        throw b(str, th);
    }

    protected final void J() {
        com.fasterxml.jackson.core.util.e.a();
    }

    protected final JsonParseException b(String str, Throwable th) {
        return new JsonParseException(str, f(), th);
    }
}
