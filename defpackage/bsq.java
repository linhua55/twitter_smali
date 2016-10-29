package defpackage;

import android.os.Bundle;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.t;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: bsq */
public class bsq extends t<Bundle, Bundle> {
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
            switch (bsr.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    String s;
                    if (!"signature".equals(jsonParser.e())) {
                        if (!"timestamp".equals(jsonParser.e())) {
                            break;
                        }
                        s = jsonParser.s();
                        if (s == null) {
                            break;
                        }
                        bundle.putString("createaddr_bundle_timestamp", s);
                        break;
                    }
                    s = jsonParser.s();
                    if (s == null) {
                        break;
                    }
                    bundle.putString("createaddr_bundle_signature", s);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"timestamp".equals(jsonParser.e())) {
                        break;
                    }
                    bundle.putString("createaddr_bundle_timestamp", TtmlNode.ANONYMOUS_REGION_ID + jsonParser.j());
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
