package defpackage;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.a;

/* compiled from: Twttr */
/* renamed from: hd */
public class hd extends a {
    protected final hd c;
    protected ha d;
    protected hd e;
    protected String f;
    protected Object g;
    protected boolean h;

    protected hd(int i, hd hdVar, ha haVar) {
        this.e = null;
        this.a = i;
        this.c = hdVar;
        this.d = haVar;
        this.b = -1;
    }

    protected hd a(int i) {
        this.a = i;
        this.b = -1;
        this.f = null;
        this.h = false;
        this.g = null;
        if (this.d != null) {
            this.d.b();
        }
        return this;
    }

    public static hd a(ha haVar) {
        return new hd(0, null, haVar);
    }

    public hd g() {
        hd hdVar = this.e;
        if (hdVar != null) {
            return hdVar.a(1);
        }
        hd hdVar2 = new hd(1, this, this.d == null ? null : this.d.a());
        this.e = hdVar2;
        return hdVar2;
    }

    public hd h() {
        hd hdVar = this.e;
        if (hdVar != null) {
            return hdVar.a(2);
        }
        hd hdVar2 = new hd(2, this, this.d == null ? null : this.d.a());
        this.e = hdVar2;
        return hdVar2;
    }

    public final hd i() {
        return this.c;
    }

    public int a(String str) throws JsonProcessingException {
        if (this.h) {
            return 4;
        }
        this.h = true;
        this.f = str;
        if (this.d != null) {
            a(this.d, str);
        }
        if (this.b < 0) {
            return 0;
        }
        return 1;
    }

    private final void a(ha haVar, String str) throws JsonProcessingException {
        if (haVar.a(str)) {
            throw new JsonGenerationException("Duplicate field '" + str + "'");
        }
    }

    public int j() {
        if (this.a == 2) {
            this.h = false;
            this.b++;
            return 2;
        } else if (this.a == 1) {
            int i = this.b;
            this.b++;
            if (i >= 0) {
                return 1;
            }
            return 0;
        } else {
            this.b++;
            if (this.b != 0) {
                return 3;
            }
            return 0;
        }
    }

    protected void a(StringBuilder stringBuilder) {
        if (this.a == 2) {
            stringBuilder.append('{');
            if (this.f != null) {
                stringBuilder.append('\"');
                stringBuilder.append(this.f);
                stringBuilder.append('\"');
            } else {
                stringBuilder.append('?');
            }
            stringBuilder.append('}');
        } else if (this.a == 1) {
            stringBuilder.append('[');
            stringBuilder.append(f());
            stringBuilder.append(']');
        } else {
            stringBuilder.append("/");
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(64);
        a(stringBuilder);
        return stringBuilder.toString();
    }
}
