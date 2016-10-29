package defpackage;

import cmb;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.twitter.library.api.at;
import com.twitter.util.aj;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cau */
public class cau {
    public static Map<String, String> a(String str, cmb cmb) {
        try {
            String str2 = (String) cmb.a(str, String.class);
            if (aj.a(str2)) {
                return null;
            }
            JsonParser a = at.a.a(str2);
            Map hashMap = new HashMap();
            JsonToken a2 = a.a();
            Object obj = TtmlNode.ANONYMOUS_REGION_ID;
            while (a2 != null && a2 != JsonToken.END_OBJECT) {
                switch (cav.a[a2.ordinal()]) {
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        return null;
                    case Util.TYPE_OTHER /*3*/:
                        obj = a.e();
                        break;
                    case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                        hashMap.put(obj, a.s());
                        break;
                    default:
                        break;
                }
                a2 = a.a();
            }
            if (hashMap.size() > 0) {
                return Collections.unmodifiableMap(hashMap);
            }
            return null;
        } catch (ClassCastException e) {
        } catch (JsonParseException e2) {
        } catch (IOException e3) {
        }
    }
}
