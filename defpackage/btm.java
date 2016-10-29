package defpackage;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.library.commerce.model.a;
import com.twitter.library.commerce.model.af;
import com.twitter.library.commerce.model.ap;
import com.twitter.library.commerce.model.m;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: btm */
public class btm {
    public static CreditCard a(JsonParser jsonParser) throws IOException {
        String str = null;
        ap apVar = new ap();
        JsonToken a = jsonParser.a();
        String str2 = null;
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btn.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!TtmlNode.ATTR_ID.equals(e)) {
                        if (!"card_type".equals(e)) {
                            if (!"last_four_digits".equals(e)) {
                                if (!"shipping_address_id".equals(e)) {
                                    break;
                                }
                                apVar.f(jsonParser.s());
                                break;
                            }
                            str2 = jsonParser.s();
                            break;
                        }
                        str = jsonParser.s();
                        break;
                    }
                    apVar.d(jsonParser.s());
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"expiry_month".equals(e)) {
                        if (!"expiry_year".equals(e)) {
                            break;
                        }
                        apVar.b(Integer.valueOf(jsonParser.o()));
                        break;
                    }
                    apVar.a(Integer.valueOf(jsonParser.o()));
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"is_default".equals(e)) {
                        if (!"is_available_buynow".equals(e)) {
                            if (!"is_available_offers".equals(e)) {
                                break;
                            }
                            apVar.c(true);
                            break;
                        }
                        apVar.b(true);
                        break;
                    }
                    apVar.a(true);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    apVar.a(btm.b(jsonParser));
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        if (!(str == null || str2 == null)) {
            apVar.a(Type.f(str), str2);
        }
        return apVar;
    }

    public static a b(JsonParser jsonParser) throws IOException {
        a aVar = new a();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btn.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!TtmlNode.ATTR_ID.equals(e)) {
                        if (!"display_name".equals(e)) {
                            if (!"full_name".equals(e)) {
                                if (!"street1".equals(e)) {
                                    if (!"street2".equals(e)) {
                                        if (!"city".equals(e)) {
                                            if (!"subdivision".equals(e)) {
                                                if (!"postal_code".equals(e)) {
                                                    if (!"country".equals(e)) {
                                                        break;
                                                    }
                                                    aVar.c(jsonParser.s());
                                                    break;
                                                }
                                                aVar.f(jsonParser.s());
                                                break;
                                            }
                                            aVar.e(jsonParser.s());
                                            break;
                                        }
                                        aVar.d(jsonParser.s());
                                        break;
                                    }
                                    aVar.b(jsonParser.s());
                                    break;
                                }
                                aVar.a(jsonParser.s());
                                break;
                            }
                            aVar.i(jsonParser.s());
                            break;
                        }
                        aVar.h(jsonParser.s());
                        break;
                    }
                    aVar.g(jsonParser.s());
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"is_default".equals(e)) {
                        if (!"is_complete".equals(e)) {
                            break;
                        }
                        aVar.a(true);
                        break;
                    }
                    aVar.b(true);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return aVar;
    }

    public static m c(JsonParser jsonParser) throws IOException {
        m mVar = new m();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btn.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!TtmlNode.ATTR_ID.equals(e)) {
                        if (!"email_address".equals(e)) {
                            jsonParser.c();
                            break;
                        }
                        mVar.a(jsonParser.s());
                        break;
                    }
                    mVar.b(jsonParser.s());
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"is_default".equals(e)) {
                        if (!"is_login_email".equals(e)) {
                            jsonParser.c();
                            break;
                        }
                        mVar.b(true);
                        break;
                    }
                    mVar.a(true);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return mVar;
    }

    public static af d(JsonParser jsonParser) throws IOException {
        af afVar = new af();
        JsonToken a = jsonParser.a();
        while (a != null && a != JsonToken.END_OBJECT) {
            String e = jsonParser.e();
            switch (btn.a[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if (!TtmlNode.ATTR_ID.equals(e)) {
                        if (!"phone_number".equals(e)) {
                            jsonParser.c();
                            break;
                        }
                        afVar.a(jsonParser.s());
                        break;
                    }
                    afVar.b(jsonParser.s());
                    break;
                case Util.TYPE_OTHER /*3*/:
                    if (!"is_default".equals(e)) {
                        if (!"is_login_phone".equals(e)) {
                            jsonParser.c();
                            break;
                        }
                        afVar.b(true);
                        break;
                    }
                    afVar.a(true);
                    break;
                default:
                    jsonParser.c();
                    break;
            }
            a = jsonParser.a();
        }
        return afVar;
    }
}
