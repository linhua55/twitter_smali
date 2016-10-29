package defpackage;

import android.os.Bundle;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.t;
import com.twitter.library.commerce.model.ProductVariant;
import com.twitter.library.commerce.model.ShippingType;
import com.twitter.library.commerce.model.TaxType;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;

/* compiled from: Twttr */
/* renamed from: bsh */
public class bsh extends t<Bundle, Bundle> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected android.os.Bundle b(com.fasterxml.jackson.core.JsonParser r8) throws java.io.IOException {
        /*
        r7 = this;
        r1 = 0;
        r4 = new android.os.Bundle;
        r4.<init>();
        r0 = r8.a();
        r2 = r1;
        r3 = r1;
    L_0x000c:
        if (r0 == 0) goto L_0x00af;
    L_0x000e:
        r5 = com.fasterxml.jackson.core.JsonToken.END_OBJECT;
        if (r0 == r5) goto L_0x00af;
    L_0x0012:
        r5 = defpackage.bsi.a;
        r0 = r0.ordinal();
        r0 = r5[r0];
        switch(r0) {
            case 1: goto L_0x002d;
            case 2: goto L_0x0063;
            case 3: goto L_0x0080;
            default: goto L_0x001d;
        };
    L_0x001d:
        r8.c();
    L_0x0020:
        r0 = r1;
        r1 = r2;
        r2 = r3;
    L_0x0023:
        r3 = r8.a();
        r6 = r3;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x000c;
    L_0x002d:
        r0 = "id";
        r5 = r8.e();
        r0 = r0.equals(r5);
        if (r0 == 0) goto L_0x0048;
    L_0x003a:
        r0 = "cart_bundle_id";
        r5 = r8.s();
        r4.putString(r0, r5);
        r0 = r1;
        r1 = r2;
        r2 = r3;
        goto L_0x0023;
    L_0x0048:
        r0 = "status";
        r5 = r8.e();
        r0 = r0.equals(r5);
        if (r0 == 0) goto L_0x0020;
    L_0x0055:
        r0 = "cart_bundle_status";
        r5 = r8.s();
        r4.putString(r0, r5);
        r0 = r1;
        r1 = r2;
        r2 = r3;
        goto L_0x0023;
    L_0x0063:
        r0 = "variants";
        r5 = r8.e();
        r0 = r0.equals(r5);
        if (r0 == 0) goto L_0x0079;
    L_0x0070:
        r0 = r7.c(r8);
        r6 = r1;
        r1 = r2;
        r2 = r0;
        r0 = r6;
        goto L_0x0023;
    L_0x0079:
        r8.c();
        r0 = r1;
        r1 = r2;
        r2 = r3;
        goto L_0x0023;
    L_0x0080:
        r0 = r8.e();
        r5 = "shipping";
        r5 = r5.equals(r0);
        if (r5 == 0) goto L_0x0096;
    L_0x008d:
        r0 = r7.e(r8);
        r2 = r3;
        r6 = r0;
        r0 = r1;
        r1 = r6;
        goto L_0x0023;
    L_0x0096:
        r5 = "tax";
        r0 = r5.equals(r0);
        if (r0 == 0) goto L_0x00a7;
    L_0x009f:
        r0 = r7.f(r8);
        r1 = r2;
        r2 = r3;
        goto L_0x0023;
    L_0x00a7:
        r8.c();
        r0 = r1;
        r1 = r2;
        r2 = r3;
        goto L_0x0023;
    L_0x00af:
        if (r3 == 0) goto L_0x00e0;
    L_0x00b1:
        r0 = r3.size();
        if (r0 <= 0) goto L_0x00e0;
    L_0x00b7:
        if (r1 == 0) goto L_0x00e0;
    L_0x00b9:
        if (r2 == 0) goto L_0x00e0;
    L_0x00bb:
        r0 = 0;
        r0 = r3.get(r0);
        r0 = (com.twitter.library.commerce.model.ProductVariant) r0;
        r5 = r2.a;
        r0.c(r5);
        r5 = r2.b;
        r0.a(r5);
        r2 = r2.c;
        r0.b(r2);
        r2 = r1.a;
        r0.d(r2);
        r2 = r1.b;
        r0.a(r2);
        r1 = r1.c;
        r0.c(r1);
    L_0x00e0:
        r0 = "getproductinfo_bundle_variants";
        r4.putParcelableArrayList(r0, r3);
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: bsh.b(com.fasterxml.jackson.core.JsonParser):android.os.Bundle");
    }

    protected Bundle b(JsonParser jsonParser, int i) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("commerce_bundle_errors", bsv.a(i, jsonParser));
        return bundle;
    }

    ArrayList<ProductVariant> c(JsonParser jsonParser) throws IOException {
        ArrayList<ProductVariant> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (bsi.a[a.ordinal()]) {
                case Util.TYPE_OTHER /*3*/:
                    arrayList.add(d(jsonParser));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        if (arrayList.size() == 1) {
            return arrayList;
        }
        throw new IOException("Only one variant is expected in the cart.");
    }

    ProductVariant d(JsonParser jsonParser) throws IOException {
        ProductVariant productVariant = new ProductVariant();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (bsi.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!TtmlNode.ATTR_ID.equals(e)) {
                        break;
                    }
                    productVariant.a(jsonParser.s());
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"price".equals(e)) {
                        jsonParser.c();
                        break;
                    }
                    a(jsonParser, productVariant);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"inventory_count".equals(e)) {
                        break;
                    }
                    productVariant.a(jsonParser.o());
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return productVariant;
    }

    void a(JsonParser jsonParser, ProductVariant productVariant) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (bsi.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"currency".equals(e)) {
                        break;
                    }
                    productVariant.b(jsonParser.s());
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"amount".equals(e)) {
                        break;
                    }
                    productVariant.a(new BigDecimal(jsonParser.p()));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
    }

    bsj e(JsonParser jsonParser) throws IOException {
        JsonToken a = jsonParser.a();
        bsj bsj = new bsj();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (bsi.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"currency".equals(e)) {
                        if (!"type".equals(e)) {
                            break;
                        }
                        bsj.b = ShippingType.a(jsonParser.s());
                        break;
                    }
                    bsj.a = jsonParser.s();
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"amount".equals(e)) {
                        break;
                    }
                    bsj.c = new BigDecimal(jsonParser.p());
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return bsj;
    }

    bsk f(JsonParser jsonParser) throws IOException {
        bsk bsk = new bsk();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (bsi.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"currency".equals(e)) {
                        if (!"type".equals(e)) {
                            break;
                        }
                        bsk.b = TaxType.a(jsonParser.s());
                        break;
                    }
                    bsk.a = jsonParser.s();
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"amount".equals(e)) {
                        break;
                    }
                    bsk.c = new BigDecimal(jsonParser.p());
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return bsk;
    }
}
