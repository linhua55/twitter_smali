package defpackage;

import android.os.Bundle;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.t;
import com.twitter.library.commerce.model.v;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: btg */
public class btg extends t<v, Bundle> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected v b(JsonParser jsonParser) throws IOException {
        v vVar = null;
        JsonToken a = jsonParser.a();
        Long l = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            switch (bth.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"purchase_records".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    vVar = d(jsonParser);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"context".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    l = c(jsonParser);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        if (vVar != null) {
            vVar.a(l);
        }
        return vVar;
    }

    protected Bundle b(JsonParser jsonParser, int i) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("commerce_bundle_errors", bsv.a(i, jsonParser));
        return bundle;
    }

    private Long c(JsonParser jsonParser) throws IOException {
        Long l = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (bth.a[a.ordinal()]) {
                case Util.TYPE_OTHER /*3*/:
                    long p = jsonParser.p();
                    if (!"last_item_id".equals(e)) {
                        jsonParser.c();
                        break;
                    }
                    l = Long.valueOf(p);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return l;
    }

    private v d(JsonParser jsonParser) throws IOException {
        v vVar = new v();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (bth.a[a.ordinal()]) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    vVar.a(btj.a(jsonParser));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return vVar;
    }
}
