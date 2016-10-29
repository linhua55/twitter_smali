package defpackage;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory.Feature;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.io.b;
import com.fasterxml.jackson.core.io.d;
import com.fasterxml.jackson.core.io.g;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: gz */
public final class gz {
    protected final b a;
    protected final InputStream b;
    protected final byte[] c;
    protected int d;
    protected boolean e;
    protected int f;
    private int g;
    private int h;
    private final boolean i;

    public gz(b bVar, InputStream inputStream) {
        this.e = true;
        this.f = 0;
        this.a = bVar;
        this.b = inputStream;
        this.c = bVar.e();
        this.g = 0;
        this.h = 0;
        this.d = 0;
        this.i = true;
    }

    public gz(b bVar, byte[] bArr, int i, int i2) {
        this.e = true;
        this.f = 0;
        this.a = bVar;
        this.b = null;
        this.c = bArr;
        this.g = i;
        this.h = i + i2;
        this.d = -i;
        this.i = false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.fasterxml.jackson.core.JsonEncoding a() throws java.io.IOException {
        /*
        r5 = this;
        r0 = 1;
        r1 = 0;
        r2 = 4;
        r2 = r5.a(r2);
        if (r2 == 0) goto L_0x0056;
    L_0x0009:
        r2 = r5.c;
        r3 = r5.g;
        r2 = r2[r3];
        r2 = r2 << 24;
        r3 = r5.c;
        r4 = r5.g;
        r4 = r4 + 1;
        r3 = r3[r4];
        r3 = r3 & 255;
        r3 = r3 << 16;
        r2 = r2 | r3;
        r3 = r5.c;
        r4 = r5.g;
        r4 = r4 + 2;
        r3 = r3[r4];
        r3 = r3 & 255;
        r3 = r3 << 8;
        r2 = r2 | r3;
        r3 = r5.c;
        r4 = r5.g;
        r4 = r4 + 3;
        r3 = r3[r4];
        r3 = r3 & 255;
        r2 = r2 | r3;
        r3 = r5.b(r2);
        if (r3 == 0) goto L_0x0046;
    L_0x003c:
        if (r0 != 0) goto L_0x0079;
    L_0x003e:
        r0 = com.fasterxml.jackson.core.JsonEncoding.a;
    L_0x0040:
        r1 = r5.a;
        r1.a(r0);
        return r0;
    L_0x0046:
        r3 = r5.c(r2);
        if (r3 != 0) goto L_0x003c;
    L_0x004c:
        r2 = r2 >>> 16;
        r2 = r5.d(r2);
        if (r2 != 0) goto L_0x003c;
    L_0x0054:
        r0 = r1;
        goto L_0x003c;
    L_0x0056:
        r2 = 2;
        r2 = r5.a(r2);
        if (r2 == 0) goto L_0x0054;
    L_0x005d:
        r2 = r5.c;
        r3 = r5.g;
        r2 = r2[r3];
        r2 = r2 & 255;
        r2 = r2 << 8;
        r3 = r5.c;
        r4 = r5.g;
        r4 = r4 + 1;
        r3 = r3[r4];
        r3 = r3 & 255;
        r2 = r2 | r3;
        r2 = r5.d(r2);
        if (r2 == 0) goto L_0x0054;
    L_0x0078:
        goto L_0x003c;
    L_0x0079:
        r0 = r5.f;
        switch(r0) {
            case 1: goto L_0x0087;
            case 2: goto L_0x008a;
            case 3: goto L_0x007e;
            case 4: goto L_0x0094;
            default: goto L_0x007e;
        };
    L_0x007e:
        r0 = new java.lang.RuntimeException;
        r1 = "Internal error";
        r0.<init>(r1);
        throw r0;
    L_0x0087:
        r0 = com.fasterxml.jackson.core.JsonEncoding.a;
        goto L_0x0040;
    L_0x008a:
        r0 = r5.e;
        if (r0 == 0) goto L_0x0091;
    L_0x008e:
        r0 = com.fasterxml.jackson.core.JsonEncoding.b;
        goto L_0x0040;
    L_0x0091:
        r0 = com.fasterxml.jackson.core.JsonEncoding.c;
        goto L_0x0040;
    L_0x0094:
        r0 = r5.e;
        if (r0 == 0) goto L_0x009b;
    L_0x0098:
        r0 = com.fasterxml.jackson.core.JsonEncoding.d;
        goto L_0x0040;
    L_0x009b:
        r0 = com.fasterxml.jackson.core.JsonEncoding.e;
        goto L_0x0040;
        */
        throw new UnsupportedOperationException("Method not decompiled: gz.a():com.fasterxml.jackson.core.JsonEncoding");
    }

    public Reader b() throws IOException {
        JsonEncoding b = this.a.b();
        switch (b.c()) {
            case p.Toolbar_contentInsetRight /*8*/:
            case p.Toolbar_titleMarginBottom /*16*/:
                InputStream byteArrayInputStream;
                InputStream inputStream = this.b;
                if (inputStream == null) {
                    byteArrayInputStream = new ByteArrayInputStream(this.c, this.g, this.h);
                } else if (this.g < this.h) {
                    byteArrayInputStream = new d(this.a, inputStream, this.c, this.g, this.h);
                } else {
                    byteArrayInputStream = inputStream;
                }
                return new InputStreamReader(byteArrayInputStream, b.a());
            case ApiRunnable.ACTION_CODE_PING_BROADCAST /*32*/:
                return new g(this.a, this.b, this.c, this.g, this.h, this.a.b().b());
            default:
                throw new RuntimeException("Internal error");
        }
    }

    public JsonParser a(int i, com.fasterxml.jackson.core.b bVar, hi hiVar, hl hlVar, int i2) throws IOException {
        if (a() == JsonEncoding.a && Feature.b.a(i2)) {
            return new hg(this.a, i, this.b, bVar, hiVar.b(i2), this.c, this.g, this.h, this.i);
        }
        return new he(this.a, i, b(), bVar, hlVar.b(i2));
    }

    private boolean b(int i) throws IOException {
        switch (i) {
            case -16842752:
                break;
            case -131072:
                this.g += 4;
                this.f = 4;
                this.e = false;
                return true;
            case 65279:
                this.e = true;
                this.g += 4;
                this.f = 4;
                return true;
            case 65534:
                a("2143");
                break;
        }
        a("3412");
        int i2 = i >>> 16;
        if (i2 == 65279) {
            this.g += 2;
            this.f = 2;
            this.e = true;
            return true;
        } else if (i2 == 65534) {
            this.g += 2;
            this.f = 2;
            this.e = false;
            return true;
        } else if ((i >>> 8) != 15711167) {
            return false;
        } else {
            this.g += 3;
            this.f = 1;
            this.e = true;
            return true;
        }
    }

    private boolean c(int i) throws IOException {
        if ((i >> 8) == 0) {
            this.e = true;
        } else if ((16777215 & i) == 0) {
            this.e = false;
        } else if ((-16711681 & i) == 0) {
            a("3412");
        } else if ((-65281 & i) != 0) {
            return false;
        } else {
            a("2143");
        }
        this.f = 4;
        return true;
    }

    private boolean d(int i) {
        if ((65280 & i) == 0) {
            this.e = true;
        } else if ((i & 255) != 0) {
            return false;
        } else {
            this.e = false;
        }
        this.f = 2;
        return true;
    }

    private void a(String str) throws IOException {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }

    protected boolean a(int i) throws IOException {
        int i2 = this.h - this.g;
        while (i2 < i) {
            int i3;
            if (this.b == null) {
                i3 = -1;
            } else {
                i3 = this.b.read(this.c, this.h, this.c.length - this.h);
            }
            if (i3 < 1) {
                return false;
            }
            this.h += i3;
            i2 = i3 + i2;
        }
        return true;
    }
}
