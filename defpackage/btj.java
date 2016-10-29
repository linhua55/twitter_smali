package defpackage;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.commerce.model.r;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: btj */
public class btj {
    public static r a(JsonParser jsonParser) throws IOException {
        r rVar = new r();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btk.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"payment_method".equals(e)) {
                        if (!"purchase_record".equals(e)) {
                            if (!"shipping_address".equals(e)) {
                                jsonParser.c();
                                break;
                            }
                            rVar.a(btm.b(jsonParser));
                            break;
                        }
                        btj.a(jsonParser, rVar);
                        break;
                    }
                    rVar.a(btm.a(jsonParser));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return rVar;
    }

    private static Map<String, String> b(JsonParser jsonParser) throws IOException {
        Map hashMap = new HashMap();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (btk.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    btj.a(jsonParser, hashMap);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return hashMap;
    }

    private static void a(JsonParser jsonParser, Map<String, String> map) throws IOException {
        Object obj = null;
        JsonToken a = jsonParser.a();
        Object obj2 = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btk.a[a.ordinal()]) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"name".equals(e)) {
                        if (!"value".equals(e)) {
                            jsonParser.c();
                            break;
                        } else {
                            obj2 = jsonParser.s();
                            break;
                        }
                    }
                    obj = jsonParser.s();
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        if (obj != null && obj2 != null) {
            map.put(obj, obj2);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(com.fasterxml.jackson.core.JsonParser r10, com.twitter.library.commerce.model.r r11) throws java.io.IOException {
        /*
        r5 = 3;
        r4 = 2;
        r3 = 1;
        r1 = 0;
        r2 = -1;
        r0 = r10.a();
    L_0x0009:
        if (r0 == 0) goto L_0x01dc;
    L_0x000b:
        r6 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r0 == r6) goto L_0x01dc;
    L_0x000f:
        r6 = r10.e();
        r7 = defpackage.btk.a;
        r0 = r0.ordinal();
        r0 = r7[r0];
        switch(r0) {
            case 1: goto L_0x0048;
            case 2: goto L_0x0093;
            case 3: goto L_0x0026;
            case 4: goto L_0x018c;
            default: goto L_0x001e;
        };
    L_0x001e:
        r10.c();
    L_0x0021:
        r0 = r10.a();
        goto L_0x0009;
    L_0x0026:
        r0 = r6.hashCode();
        switch(r0) {
            case 405645655: goto L_0x0035;
            default: goto L_0x002d;
        };
    L_0x002d:
        r0 = r2;
    L_0x002e:
        switch(r0) {
            case 0: goto L_0x0040;
            default: goto L_0x0031;
        };
    L_0x0031:
        r10.c();
        goto L_0x0021;
    L_0x0035:
        r0 = "attributes";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x002d;
    L_0x003e:
        r0 = r1;
        goto L_0x002e;
    L_0x0040:
        r0 = defpackage.btj.b(r10);
        r11.a(r0);
        goto L_0x0021;
    L_0x0048:
        r0 = r6.hashCode();
        switch(r0) {
            case -516235858: goto L_0x0062;
            case 114603: goto L_0x006d;
            case 106934601: goto L_0x0057;
            case 110549828: goto L_0x0078;
            default: goto L_0x004f;
        };
    L_0x004f:
        r0 = r2;
    L_0x0050:
        switch(r0) {
            case 0: goto L_0x0083;
            case 1: goto L_0x0087;
            case 2: goto L_0x008b;
            case 3: goto L_0x008f;
            default: goto L_0x0053;
        };
    L_0x0053:
        r10.c();
        goto L_0x0021;
    L_0x0057:
        r0 = "price";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x004f;
    L_0x0060:
        r0 = r1;
        goto L_0x0050;
    L_0x0062:
        r0 = "shipping";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x004f;
    L_0x006b:
        r0 = r3;
        goto L_0x0050;
    L_0x006d:
        r0 = "tax";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x004f;
    L_0x0076:
        r0 = r4;
        goto L_0x0050;
    L_0x0078:
        r0 = "total";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x004f;
    L_0x0081:
        r0 = r5;
        goto L_0x0050;
    L_0x0083:
        defpackage.btj.b(r10, r11);
        goto L_0x0021;
    L_0x0087:
        defpackage.btj.c(r10, r11);
        goto L_0x0021;
    L_0x008b:
        defpackage.btj.d(r10, r11);
        goto L_0x0021;
    L_0x008f:
        defpackage.btj.e(r10, r11);
        goto L_0x0021;
    L_0x0093:
        r7 = r10.s();
        r0 = r6.hashCode();
        switch(r0) {
            case -1724546052: goto L_0x00bd;
            case -1491291617: goto L_0x00e9;
            case -1332092512: goto L_0x0117;
            case -1150111480: goto L_0x0124;
            case -877823861: goto L_0x00c8;
            case -546810497: goto L_0x00d3;
            case -361625519: goto L_0x0131;
            case -177995163: goto L_0x00b2;
            case 3355: goto L_0x00f4;
            case 106934601: goto L_0x00de;
            case 110371416: goto L_0x00ff;
            case 1041371651: goto L_0x010b;
            case 2072725154: goto L_0x00a7;
            default: goto L_0x009e;
        };
    L_0x009e:
        r0 = r2;
    L_0x009f:
        switch(r0) {
            case 0: goto L_0x013e;
            case 1: goto L_0x0143;
            case 2: goto L_0x0148;
            case 3: goto L_0x014d;
            case 4: goto L_0x0152;
            case 5: goto L_0x015b;
            case 6: goto L_0x0165;
            case 7: goto L_0x016a;
            case 8: goto L_0x0173;
            case 9: goto L_0x0178;
            case 10: goto L_0x017d;
            case 11: goto L_0x0182;
            case 12: goto L_0x0187;
            default: goto L_0x00a2;
        };
    L_0x00a2:
        r10.c();
        goto L_0x0021;
    L_0x00a7:
        r0 = "merchant_name";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x00b0:
        r0 = r1;
        goto L_0x009f;
    L_0x00b2:
        r0 = "merchant_email";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x00bb:
        r0 = r3;
        goto L_0x009f;
    L_0x00bd:
        r0 = "description";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x00c6:
        r0 = r4;
        goto L_0x009f;
    L_0x00c8:
        r0 = "image_url";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x00d1:
        r0 = r5;
        goto L_0x009f;
    L_0x00d3:
        r0 = "sales_order_id";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x00dc:
        r0 = 4;
        goto L_0x009f;
    L_0x00de:
        r0 = "price";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x00e7:
        r0 = 5;
        goto L_0x009f;
    L_0x00e9:
        r0 = "product_url";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x00f2:
        r0 = 6;
        goto L_0x009f;
    L_0x00f4:
        r0 = "id";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x00fd:
        r0 = 7;
        goto L_0x009f;
    L_0x00ff:
        r0 = "title";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x0108:
        r0 = 8;
        goto L_0x009f;
    L_0x010b:
        r0 = "order_status";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x0114:
        r0 = 9;
        goto L_0x009f;
    L_0x0117:
        r0 = "external_order_id";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x0120:
        r0 = 10;
        goto L_0x009f;
    L_0x0124:
        r0 = "merchant_support_url";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x012d:
        r0 = 11;
        goto L_0x009f;
    L_0x0131:
        r0 = "merchant_phone_number";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x009e;
    L_0x013a:
        r0 = 12;
        goto L_0x009f;
    L_0x013e:
        r11.a(r7);
        goto L_0x0021;
    L_0x0143:
        r11.e(r7);
        goto L_0x0021;
    L_0x0148:
        r10.c();
        goto L_0x0021;
    L_0x014d:
        r11.c(r7);
        goto L_0x0021;
    L_0x0152:
        r0 = java.lang.Long.valueOf(r7);
        r11.a(r0);
        goto L_0x0021;
    L_0x015b:
        r0 = new java.math.BigDecimal;
        r0.<init>(r7);
        r11.b(r0);
        goto L_0x0021;
    L_0x0165:
        r11.f(r7);
        goto L_0x0021;
    L_0x016a:
        r0 = java.lang.Long.valueOf(r7);
        r11.b(r0);
        goto L_0x0021;
    L_0x0173:
        r11.b(r7);
        goto L_0x0021;
    L_0x0178:
        r11.d(r7);
        goto L_0x0021;
    L_0x017d:
        r11.h(r7);
        goto L_0x0021;
    L_0x0182:
        r11.i(r7);
        goto L_0x0021;
    L_0x0187:
        r11.j(r7);
        goto L_0x0021;
    L_0x018c:
        r8 = r10.p();
        r0 = r6.hashCode();
        switch(r0) {
            case -1285004149: goto L_0x01ab;
            case 761464133: goto L_0x01a0;
            case 1529661865: goto L_0x01b6;
            default: goto L_0x0197;
        };
    L_0x0197:
        r0 = r2;
    L_0x0198:
        switch(r0) {
            case 0: goto L_0x01c1;
            case 1: goto L_0x01cd;
            case 2: goto L_0x01d3;
            default: goto L_0x019b;
        };
    L_0x019b:
        r10.c();
        goto L_0x0021;
    L_0x01a0:
        r0 = "ordered_at";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x0197;
    L_0x01a9:
        r0 = r1;
        goto L_0x0198;
    L_0x01ab:
        r0 = "quantity";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x0197;
    L_0x01b4:
        r0 = r3;
        goto L_0x0198;
    L_0x01b6:
        r0 = "tweet_id";
        r0 = r6.equals(r0);
        if (r0 == 0) goto L_0x0197;
    L_0x01bf:
        r0 = r4;
        goto L_0x0198;
    L_0x01c1:
        r0 = java.util.Calendar.getInstance();
        r0.setTimeInMillis(r8);
        r11.a(r0);
        goto L_0x0021;
    L_0x01cd:
        r0 = (int) r8;
        r11.a(r0);
        goto L_0x0021;
    L_0x01d3:
        r0 = java.lang.Long.valueOf(r8);
        r11.c(r0);
        goto L_0x0021;
    L_0x01dc:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: btj.a(com.fasterxml.jackson.core.JsonParser, com.twitter.library.commerce.model.r):void");
    }

    private static void b(JsonParser jsonParser, r rVar) throws IOException {
        btl c = btj.c(jsonParser);
        rVar.b(c.a);
        rVar.o(c.b);
    }

    private static void c(JsonParser jsonParser, r rVar) throws IOException {
        btl c = btj.c(jsonParser);
        rVar.d(c.a);
        rVar.m(c.c);
        rVar.q(c.b);
    }

    private static void d(JsonParser jsonParser, r rVar) throws IOException {
        btl c = btj.c(jsonParser);
        rVar.c(c.a);
        rVar.n(c.c);
        rVar.p(c.b);
    }

    private static void e(JsonParser jsonParser, r rVar) throws IOException {
        btl c = btj.c(jsonParser);
        rVar.a(c.a);
        rVar.g(c.b);
    }

    private static btl c(JsonParser jsonParser) throws IOException {
        btl btl = new btl();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btk.a[a.ordinal()]) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"amount".equals(e)) {
                        if (!"currency".equals(e)) {
                            if (!"type".equals(e)) {
                                jsonParser.c();
                                break;
                            }
                            btl.c = jsonParser.s();
                            break;
                        }
                        btl.b = jsonParser.s();
                        break;
                    }
                    btl.a = new BigDecimal(jsonParser.p());
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return btl;
    }
}
