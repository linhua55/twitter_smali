package defpackage;

import android.os.Bundle;
import bbn;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.commerce.model.ServerError;
import com.twitter.library.commerce.model.ServerErrorType;
import com.twitter.library.service.aa;
import java.io.IOException;
import java.util.ArrayList;

/* compiled from: Twttr */
/* renamed from: bsv */
public class bsv {
    public static Bundle a(aa aaVar, String str) {
        if (aaVar != null) {
            try {
                ArrayList arrayList;
                Bundle bundle = new Bundle();
                if (aaVar.c() != null) {
                    arrayList = new ArrayList();
                    arrayList.add(new ServerError("Network Error", TtmlNode.ANONYMOUS_REGION_ID, ServerErrorType.b));
                } else {
                    arrayList = bsv.a(aaVar.d(), null);
                }
                bundle.putParcelableArrayList(str, arrayList);
                return bundle;
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
        return null;
    }

    public static ArrayList<ServerError> a(int i, JsonParser jsonParser) throws IOException {
        Object obj = null;
        ArrayList<ServerError> arrayList = new ArrayList();
        if (jsonParser != null) {
            try {
                JsonToken a = jsonParser.a();
                while (a != null && a != JsonToken.END_OBJECT) {
                    String e = jsonParser.e();
                    switch (bsw.a[a.ordinal()]) {
                        case ModuleDescriptor.MODULE_VERSION /*1*/:
                            if (!"errors".equals(e)) {
                                jsonParser.c();
                                break;
                            }
                            arrayList.addAll(bsv.a(jsonParser));
                            break;
                        default:
                            jsonParser.c();
                            break;
                    }
                    a = jsonParser.a();
                }
            } catch (IOException e2) {
            }
            if (arrayList.size() > 0) {
                obj = 1;
            }
        }
        if (obj == null) {
            switch (i) {
                case 400:
                    arrayList.add(new ServerError("Bad request", TtmlNode.ANONYMOUS_REGION_ID, ServerErrorType.d));
                    break;
                case 401:
                    arrayList.add(new ServerError("Auth error", TtmlNode.ANONYMOUS_REGION_ID, ServerErrorType.c));
                    break;
                case 500:
                    arrayList.add(new ServerError("Internal server error", TtmlNode.ANONYMOUS_REGION_ID, ServerErrorType.f));
                    break;
                case 503:
                    arrayList.add(new ServerError("Service Unavailable", TtmlNode.ANONYMOUS_REGION_ID, ServerErrorType.e));
                    break;
                default:
                    arrayList.add(new ServerError("Unknown error", TtmlNode.ANONYMOUS_REGION_ID, ServerErrorType.a));
                    break;
            }
        }
        return arrayList;
    }

    private static ArrayList<ServerError> a(JsonParser jsonParser) throws IOException {
        ArrayList<ServerError> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (bsw.a[a.ordinal()]) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    arrayList.add(bsv.b(jsonParser));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    private static ServerError b(JsonParser jsonParser) throws IOException {
        String str = null;
        JsonToken a = jsonParser.a();
        String str2 = null;
        String str3 = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (bsw.a[a.ordinal()]) {
                case Util.TYPE_OTHER /*3*/:
                    if (!"message".equals(e)) {
                        if (!"refId".equals(e)) {
                            if (!"type".equals(e)) {
                                break;
                            }
                            str3 = jsonParser.s();
                            break;
                        }
                        str = jsonParser.s();
                        break;
                    }
                    str2 = jsonParser.s();
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return new ServerError(str2, str, ServerErrorType.a(str3));
    }
}
