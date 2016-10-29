package defpackage;

import android.os.Bundle;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.t;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.a;
import com.twitter.library.commerce.model.af;
import com.twitter.library.commerce.model.am;
import com.twitter.library.commerce.model.m;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: btp */
public class btp extends t<am, Bundle> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected am b(JsonParser jsonParser) throws IOException {
        am amVar = new am();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            switch (btq.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"payment_methods".equals(jsonParser.e())) {
                        if (!"partial_payment_methods".equals(jsonParser.e())) {
                            if (!"addresses".equals(jsonParser.e())) {
                                if (!"contact_emails".equals(jsonParser.e())) {
                                    if (!"phone_numbers".equals(jsonParser.e())) {
                                        jsonParser.c();
                                        break;
                                    }
                                    c(jsonParser, amVar);
                                    break;
                                }
                                b(jsonParser, amVar);
                                break;
                            }
                            a(jsonParser, amVar);
                            break;
                        }
                        a(jsonParser, amVar, true);
                        break;
                    }
                    a(jsonParser, amVar, false);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return amVar;
    }

    protected Bundle b(JsonParser jsonParser, int i) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("commerce_bundle_errors", bsv.a(i, jsonParser));
        return bundle;
    }

    private void a(JsonParser jsonParser, am amVar, boolean z) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (btq.a[a.ordinal()]) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    CreditCard a2 = btm.a(jsonParser);
                    if (!z) {
                        amVar.a(a2);
                        if (!a2.n()) {
                            break;
                        }
                        amVar.c(a2);
                        break;
                    }
                    amVar.b(a2);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
    }

    private void a(JsonParser jsonParser, am amVar) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (btq.a[a.ordinal()]) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    a b = btm.b(jsonParser);
                    amVar.b(b);
                    if (!b.j()) {
                        break;
                    }
                    amVar.a(b);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
    }

    private void b(JsonParser jsonParser, am amVar) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (btq.a[a.ordinal()]) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    m c = btm.c(jsonParser);
                    amVar.a(c);
                    if (!c.c()) {
                        break;
                    }
                    amVar.b(c);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
    }

    private void c(JsonParser jsonParser, am amVar) throws IOException {
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (btq.a[a.ordinal()]) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    af d = btm.d(jsonParser);
                    amVar.a(d);
                    if (!d.c()) {
                        break;
                    }
                    amVar.b(d);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
    }
}
