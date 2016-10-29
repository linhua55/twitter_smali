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
import com.twitter.library.commerce.model.ServerError;
import com.twitter.library.commerce.model.ServerErrorType;
import java.io.IOException;
import java.util.ArrayList;

/* compiled from: Twttr */
/* renamed from: btt */
public class btt extends t<Bundle, Bundle> {
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
            switch (btu.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"success".equals(jsonParser.e())) {
                        break;
                    }
                    bundle.putBoolean("storeprofile_bundle_success", a == JsonToken.VALUE_TRUE);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"params".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    String e = e(jsonParser);
                    if (e == null) {
                        break;
                    }
                    bundle.putString("storeprofile_bundle_profileid", e);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"errors".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    bundle.putParcelableArrayList("commerce_bundle_errors", btt.c(jsonParser));
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

    private String e(JsonParser jsonParser) throws IOException {
        String str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btu.a[a.ordinal()]) {
                case EbmlReader.TYPE_FLOAT /*5*/:
                    if (!"profileId".equals(e)) {
                        break;
                    }
                    str = jsonParser.s();
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    if (!"profileId".equals(e)) {
                        break;
                    }
                    str = TtmlNode.ANONYMOUS_REGION_ID + jsonParser.p();
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return str;
    }

    public static ArrayList<ServerError> c(JsonParser jsonParser) {
        ArrayList<ServerError> arrayList = new ArrayList();
        if (jsonParser != null) {
            try {
                if (jsonParser.d() == JsonToken.START_OBJECT) {
                    arrayList.add(btt.d(jsonParser));
                    return arrayList;
                }
            } catch (IOException e) {
            }
        }
        if (jsonParser != null && jsonParser.d() == JsonToken.START_ARRAY) {
            arrayList.addAll(btt.f(jsonParser));
        }
        return arrayList;
    }

    private static ArrayList<ServerError> f(JsonParser jsonParser) throws IOException {
        ArrayList<ServerError> arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (btu.a[a.ordinal()]) {
                case Util.TYPE_OTHER /*3*/:
                    arrayList.add(btt.d(jsonParser));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return arrayList;
    }

    public static ServerError d(JsonParser jsonParser) throws IOException {
        String str = TtmlNode.ANONYMOUS_REGION_ID;
        str = TtmlNode.ANONYMOUS_REGION_ID;
        str = null;
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btu.a[a.ordinal()]) {
                case EbmlReader.TYPE_FLOAT /*5*/:
                    if (!"errorCode".equals(e)) {
                        break;
                    }
                    str = jsonParser.s();
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return new ServerError(TtmlNode.ANONYMOUS_REGION_ID, TtmlNode.ANONYMOUS_REGION_ID, ServerErrorType.a(str));
    }
}
