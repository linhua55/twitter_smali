package defpackage;

import android.os.Bundle;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.library.api.t;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bse */
public class bse extends t<Bundle, Bundle> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected android.os.Bundle b(com.fasterxml.jackson.core.JsonParser r7) throws java.io.IOException {
        /* JADX: method processing error */
/*
        Error: java.util.ConcurrentModificationException
	at java.util.ArrayList$Itr.checkForComodification(ArrayList.java:859)
	at java.util.ArrayList$Itr.next(ArrayList.java:831)
	at jadx.core.dex.visitors.ReSugarCode.getEnumMap(ReSugarCode.java:171)
	at jadx.core.dex.visitors.ReSugarCode.processEnumSwitch(ReSugarCode.java:123)
	at jadx.core.dex.visitors.ReSugarCode.process(ReSugarCode.java:68)
	at jadx.core.dex.visitors.ReSugarCode.visit(ReSugarCode.java:52)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r6 = this;
        r1 = new android.os.Bundle;
        r1.<init>();
        r0 = r7.a();
    L_0x0009:
        if (r0 == 0) goto L_0x00a1;
    L_0x000b:
        r2 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r0 == r2) goto L_0x00a1;
    L_0x000f:
        r2 = defpackage.bsf.a;
        r0 = r0.ordinal();
        r0 = r2[r0];
        switch(r0) {
            case 1: goto L_0x0022;
            case 2: goto L_0x0040;
            case 3: goto L_0x0074;
            default: goto L_0x001a;
        };
    L_0x001a:
        r7.c();
    L_0x001d:
        r0 = r7.a();
        goto L_0x0009;
    L_0x0022:
        r0 = "address";
        r2 = r7.e();
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x003c;
    L_0x002f:
        r0 = defpackage.btm.b(r7);
        r2 = "createaddr_bundle_address";
        r3 = com.twitter.library.commerce.model.a.a;
        com.twitter.util.ab.a(r1, r2, r0, r3);
        goto L_0x001d;
    L_0x003c:
        r7.c();
        goto L_0x001d;
    L_0x0040:
        r0 = "signature";
        r2 = r7.e();
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x005a;
    L_0x004d:
        r0 = r7.s();
        if (r0 == 0) goto L_0x001d;
    L_0x0053:
        r2 = "createaddr_bundle_signature";
        r1.putString(r2, r0);
        goto L_0x001d;
    L_0x005a:
        r0 = "timestamp";
        r2 = r7.e();
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x001d;
    L_0x0067:
        r0 = r7.s();
        if (r0 == 0) goto L_0x001d;
    L_0x006d:
        r2 = "createaddr_bundle_timestamp";
        r1.putString(r2, r0);
        goto L_0x001d;
    L_0x0074:
        r0 = "timestamp";
        r2 = r7.e();
        r0 = r0.equals(r2);
        if (r0 == 0) goto L_0x001d;
    L_0x0081:
        r2 = r7.j();
        r0 = "createaddr_bundle_timestamp";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "";
        r4 = r4.append(r5);
        r2 = r4.append(r2);
        r2 = r2.toString();
        r1.putString(r0, r2);
        goto L_0x001d;
    L_0x00a1:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: bse.b(com.fasterxml.jackson.core.JsonParser):android.os.Bundle");
    }

    protected Bundle b(JsonParser jsonParser, int i) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("commerce_bundle_errors", bsv.a(i, jsonParser));
        return bundle;
    }
}
