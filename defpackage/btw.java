package defpackage;

import android.os.Bundle;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.t;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: btw */
public class btw extends t<Bundle, Bundle> {
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
            String e = jsonParser.e();
            switch (btx.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!TtmlNode.ATTR_ID.equals(e)) {
                        if (!"purchase_record_id".equals(e)) {
                            if (!"status".equals(e)) {
                                jsonParser.c();
                                break;
                            }
                            bundle.putString("cart_bundle_status", jsonParser.s());
                            break;
                        }
                        bundle.putString("auth_cart_id", jsonParser.s());
                        break;
                    }
                    bundle.putString("cart_bundle_id", jsonParser.s());
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
}
