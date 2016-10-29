package defpackage;

import android.os.Bundle;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.api.t;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.library.commerce.model.OfferDetails;
import com.twitter.library.commerce.model.OfferDetails.OfferStatus;
import com.twitter.util.ab;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bsx */
public class bsx extends t<Bundle, Bundle> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected Bundle b(JsonParser jsonParser) throws IOException {
        Bundle bundle = new Bundle();
        OfferDetails offerDetails = new OfferDetails();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            switch (bsy.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!"offer_id".equals(jsonParser.e())) {
                        if (!"status".equals(jsonParser.e())) {
                            break;
                        }
                        String s = jsonParser.s();
                        Object obj = -1;
                        switch (s.hashCode()) {
                            case -591252731:
                                if (s.equals("EXPIRED")) {
                                    obj = 3;
                                    break;
                                }
                                break;
                            case 2408251:
                                if (s.equals("REDEEMED")) {
                                    obj = 2;
                                    break;
                                }
                                break;
                            case 78673511:
                                if (s.equals("SAVED")) {
                                    obj = 1;
                                    break;
                                }
                                break;
                            case 807292011:
                                if (s.equals("INACTIVE")) {
                                    obj = 4;
                                    break;
                                }
                                break;
                            case 2052692649:
                                if (s.equals("AVAILABLE")) {
                                    obj = null;
                                    break;
                                }
                                break;
                        }
                        switch (obj) {
                            case Util.TYPE_DASH /*0*/:
                                offerDetails.a(OfferStatus.b);
                                break;
                            case ModuleDescriptor.MODULE_VERSION /*1*/:
                                offerDetails.a(OfferStatus.c);
                                break;
                            case Buffer.FLAG_DECODE_ONLY /*2*/:
                                offerDetails.a(OfferStatus.d);
                                break;
                            case Util.TYPE_OTHER /*3*/:
                                offerDetails.a(OfferStatus.e);
                                break;
                            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                                offerDetails.a(OfferStatus.f);
                                break;
                            default:
                                offerDetails.a(OfferStatus.a);
                                break;
                        }
                    }
                    offerDetails.a(jsonParser.s());
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                case Util.TYPE_OTHER /*3*/:
                    if (!"is_enabled".equals(jsonParser.e())) {
                        break;
                    }
                    offerDetails.a(jsonParser.r());
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if (!"end_date".equals(jsonParser.e())) {
                        if (!"start_date".equals(jsonParser.e())) {
                            break;
                        }
                        offerDetails.b(jsonParser.p());
                        break;
                    }
                    offerDetails.a(jsonParser.p());
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    if (!"supported_card_brands".equals(jsonParser.e())) {
                        jsonParser.c();
                        break;
                    }
                    a(jsonParser, offerDetails);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        ab.a(bundle, "offer_details", offerDetails, OfferDetails.a);
        return bundle;
    }

    protected Bundle b(JsonParser jsonParser, int i) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("commerce_bundle_errors", bsv.a(i, jsonParser));
        return bundle;
    }

    private void a(JsonParser jsonParser, OfferDetails offerDetails) throws IOException {
        List arrayList = new ArrayList();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_ARRAY) {
            switch (bsy.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    Type f = Type.f(jsonParser.s());
                    if (f == Type.a) {
                        break;
                    }
                    arrayList.add(f);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        offerDetails.a(arrayList);
    }
}
