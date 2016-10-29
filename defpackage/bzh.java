package defpackage;

import cgl;
import cmb;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.util.aj;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bzh */
public class bzh {
    public cgl a;
    public String b;
    public String c;

    public static cmb a(JsonParser jsonParser) throws IOException {
        bzh bzh = new bzh();
        if (!bzh.c(jsonParser)) {
            return null;
        }
        cgl cgl = bzh.a;
        if (cgl != null) {
            return cgl.N();
        }
        return null;
    }

    public static cgl b(JsonParser jsonParser) throws IOException {
        bzh bzh = new bzh();
        if (bzh.c(jsonParser)) {
            return bzh.a;
        }
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean c(com.fasterxml.jackson.core.JsonParser r5) throws java.io.IOException {
        /*
        r4 = this;
        r0 = r5.a();
        r1 = 0;
    L_0x0005:
        if (r0 == 0) goto L_0x0065;
    L_0x0007:
        r2 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r0 == r2) goto L_0x0065;
    L_0x000b:
        r2 = defpackage.bzi.a;
        r0 = r0.ordinal();
        r0 = r2[r0];
        switch(r0) {
            case 1: goto L_0x001f;
            case 2: goto L_0x0024;
            case 3: goto L_0x003e;
            case 4: goto L_0x0043;
            default: goto L_0x0016;
        };
    L_0x0016:
        r0 = r1;
    L_0x0017:
        r1 = r5.a();
        r3 = r0;
        r0 = r1;
        r1 = r3;
        goto L_0x0005;
    L_0x001f:
        r0 = r5.e();
        goto L_0x0017;
    L_0x0024:
        r0 = "card";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0039;
    L_0x002d:
        r0 = cgl.class;
        r0 = com.twitter.model.json.common.g.c(r5, r0);
        r0 = (cgl) r0;
        r4.a = r0;
        r0 = r1;
        goto L_0x0017;
    L_0x0039:
        r5.c();
        r0 = r1;
        goto L_0x0017;
    L_0x003e:
        r5.c();
        r0 = r1;
        goto L_0x0017;
    L_0x0043:
        r0 = "req_id";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0054;
    L_0x004c:
        r0 = r5.g();
        r4.c = r0;
        r0 = r1;
        goto L_0x0017;
    L_0x0054:
        r0 = "caps_error";
        r0 = r0.equals(r1);
        if (r0 == 0) goto L_0x0016;
    L_0x005d:
        r0 = r5.g();
        r4.b = r0;
        r0 = r1;
        goto L_0x0017;
    L_0x0065:
        r0 = r4.a();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: bzh.c(com.fasterxml.jackson.core.JsonParser):boolean");
    }

    private boolean a() {
        return this.a != null || (aj.b(this.c) && aj.b(this.b));
    }
}
