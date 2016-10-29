package defpackage;

import android.os.Bundle;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.t;
import com.twitter.library.commerce.model.ProductVariant;
import com.twitter.library.commerce.model.ShippingType;
import com.twitter.library.commerce.model.TaxType;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;

/* compiled from: Twttr */
/* renamed from: bta */
public class bta extends t<Bundle, Bundle> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected Bundle b(JsonParser jsonParser) throws IOException {
        Bundle bundle = new Bundle();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            switch (btb.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!TtmlNode.ATTR_ID.equals(jsonParser.e())) {
                        break;
                    }
                    bundle.putString("cart_bundle_id", jsonParser.s());
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                case Util.TYPE_OTHER /*3*/:
                    boolean z;
                    if (!"phone_number_required".equals(jsonParser.e())) {
                        if (!"billing_address_required".equals(jsonParser.e())) {
                            break;
                        }
                        if (a == JsonToken.VALUE_TRUE) {
                            z = true;
                        } else {
                            z = false;
                        }
                        bundle.putBoolean("billing_address_required", z);
                        break;
                    }
                    if (a == JsonToken.VALUE_TRUE) {
                        z = true;
                    } else {
                        z = false;
                    }
                    bundle.putBoolean("phone_number_required", z);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"variants".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    bundle.putParcelableArrayList("getproductinfo_bundle_variants", c(jsonParser));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return bundle;
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
            switch (btb.a[a.ordinal()]) {
                case EbmlReader.TYPE_FLOAT /*5*/:
                    arrayList.add(d(jsonParser));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    ProductVariant d(JsonParser jsonParser) throws IOException {
        ProductVariant productVariant = new ProductVariant();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btb.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!TtmlNode.ATTR_ID.equals(e)) {
                        break;
                    }
                    productVariant.a(jsonParser.s());
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    if (!"price".equals(e)) {
                        if (!"shipping".equals(e)) {
                            if (!"tax".equals(e)) {
                                jsonParser.c();
                                break;
                            }
                            c(jsonParser, productVariant);
                            break;
                        }
                        b(jsonParser, productVariant);
                        break;
                    }
                    a(jsonParser, productVariant);
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
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
            switch (btb.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"currency".equals(e)) {
                        break;
                    }
                    productVariant.b(jsonParser.s());
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
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

    void b(JsonParser jsonParser, ProductVariant productVariant) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btb.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"currency".equals(e)) {
                        if (!"type".equals(e)) {
                            break;
                        }
                        productVariant.a(ShippingType.a(jsonParser.s()));
                        break;
                    }
                    productVariant.c(jsonParser.s());
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    if (!"amount".equals(e)) {
                        break;
                    }
                    productVariant.b(new BigDecimal(jsonParser.p()));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
    }

    void c(JsonParser jsonParser, ProductVariant productVariant) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btb.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"currency".equals(e)) {
                        if (!"type".equals(e)) {
                            break;
                        }
                        productVariant.a(TaxType.a(jsonParser.s()));
                        break;
                    }
                    productVariant.d(jsonParser.s());
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    if (!"amount".equals(e)) {
                        break;
                    }
                    productVariant.c(new BigDecimal(jsonParser.p()));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
    }
}
