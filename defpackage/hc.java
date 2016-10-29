package defpackage;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.a;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: hc */
public final class hc extends a {
    protected final hc c;
    protected ha d;
    protected hc e;
    protected String f;
    protected Object g;
    protected int h;
    protected int i;

    public hc(hc hcVar, ha haVar, int i, int i2, int i3) {
        this.e = null;
        this.c = hcVar;
        this.d = haVar;
        this.a = i;
        this.h = i2;
        this.i = i3;
        this.b = -1;
    }

    protected void a(int i, int i2, int i3) {
        this.a = i;
        this.b = -1;
        this.h = i2;
        this.i = i3;
        this.f = null;
        this.g = null;
        if (this.d != null) {
            this.d.b();
        }
    }

    public static hc a(ha haVar) {
        return new hc(null, haVar, 0, 1, 0);
    }

    public hc a(int i, int i2) {
        hc hcVar = this.e;
        if (hcVar == null) {
            hcVar = new hc(this, this.d == null ? null : this.d.a(), 1, i, i2);
            this.e = hcVar;
        } else {
            hcVar.a(1, i, i2);
        }
        return hcVar;
    }

    public hc b(int i, int i2) {
        hc hcVar = this.e;
        if (hcVar == null) {
            hcVar = new hc(this, this.d == null ? null : this.d.a(), 2, i, i2);
            this.e = hcVar;
        } else {
            hcVar.a(2, i, i2);
        }
        return hcVar;
    }

    public String g() {
        return this.f;
    }

    public hc h() {
        return this.c;
    }

    public JsonLocation a(Object obj) {
        return new JsonLocation(obj, -1, this.h, this.i);
    }

    public boolean i() {
        int i = this.b + 1;
        this.b = i;
        return this.a != 0 && i > 0;
    }

    public void a(String str) throws JsonProcessingException {
        this.f = str;
        if (this.d != null) {
            a(this.d, str);
        }
    }

    private void a(ha haVar, String str) throws JsonProcessingException {
        if (haVar.a(str)) {
            throw new JsonParseException("Duplicate field '" + str + "'", haVar.c());
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(64);
        switch (this.a) {
            case p.View_android_theme /*0*/:
                stringBuilder.append("/");
                break;
            case p.View_android_focusable /*1*/:
                stringBuilder.append('[');
                stringBuilder.append(f());
                stringBuilder.append(']');
                break;
            case p.View_paddingStart /*2*/:
                stringBuilder.append('{');
                if (this.f != null) {
                    stringBuilder.append('\"');
                    com.fasterxml.jackson.core.io.a.a(stringBuilder, this.f);
                    stringBuilder.append('\"');
                } else {
                    stringBuilder.append('?');
                }
                stringBuilder.append('}');
                break;
        }
        return stringBuilder.toString();
    }
}
