package defpackage;

import android.text.TextUtils;
import cgo;
import com.twitter.android.mx;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import java.util.List;
import java.util.Map;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: cgl */
public class cgl {
    public static final n<cgl> a;
    private static final String[] b;
    private static final String[] c;
    private static final String[] d;
    private static final String[] e;
    private static final String[] f;
    private final String g;
    private final String h;
    private final Map<String, TwitterUser> i;
    private final String j;
    private final String k;
    private final Map<String, cgh> l;
    private final cmb m;

    static {
        a = new cgo();
        b = new String[]{"photo_image", "player_image", "summary_photo_image", "promo_image", "thumbnail_image", "thumbnail", "item_image", "offer_image", "main_image", "image"};
        c = new String[]{"promo_app", "promo_image_app"};
        d = new String[]{"promo_image_convo", "promo_video_convo"};
        e = new String[]{"poll2choice_text_only", "poll3choice_text_only", "poll4choice_text_only"};
        f = new String[]{"poll2choice_image", "poll3choice_image", "poll4choice_image"};
    }

    private cgl(String str, String str2, Map<String, TwitterUser> map, String str3, String str4, Map<String, cgh> map2) {
        this.g = str;
        this.h = str2;
        this.i = map;
        this.j = str3;
        this.k = str4;
        this.l = map2;
        this.m = cmb.a((Map) map2);
    }

    public boolean a() {
        return "amplify".equals(this.g);
    }

    public String b() {
        return this.g;
    }

    public String c() {
        return this.h;
    }

    public Map<String, TwitterUser> d() {
        return this.i;
    }

    public String e() {
        return this.j;
    }

    public String f() {
        return this.k;
    }

    public int a(float f) {
        int i;
        cgh cgh = (cgh) this.l.get("_forward_card_height_");
        if (cgh == null || !(cgh.c instanceof String)) {
            i = 160;
        } else {
            i = (int) Float.parseFloat((String) cgh.c);
        }
        return (int) (((float) i) * f);
    }

    public boolean g() {
        cgh cgh = (cgh) this.l.get("_omit_link_");
        if (cgh == null || !(cgh.c instanceof Boolean)) {
            return true;
        }
        return ((Boolean) cgh.c).booleanValue();
    }

    public TwitterUser h() {
        cgp cgp = (cgp) a("site", cgp.class);
        if (cgp != null) {
            return (TwitterUser) this.i.get(cgp.a);
        }
        return null;
    }

    public String i() {
        TwitterUser h = h();
        return h != null ? h.k : null;
    }

    public Map<String, cgh> j() {
        return this.l;
    }

    public String a(String str) {
        return (String) a(str, String.class);
    }

    public <T> T a(String str, Class<T> cls) {
        cgh b = b(str);
        if (b != null) {
            Object obj = b.c;
            if (obj != null && cls.isInstance(obj)) {
                return cls.cast(obj);
            }
        }
        return null;
    }

    public cgh b(String str) {
        return (cgh) this.l.get(str);
    }

    public String k() {
        String a = a("video_source");
        if (a == null) {
            a = a("amplify_url_vmap");
        }
        if (a == null) {
            return a("amplify_url");
        }
        return a;
    }

    public String l() {
        return a("player_url");
    }

    public String m() {
        return a("player_stream_url");
    }

    public String n() {
        return a("player_stream_url");
    }

    public String o() {
        return a("player_stream_url");
    }

    public String p() {
        String a = a("video_content_id");
        if (a == null) {
            return a("amplify_content_id");
        }
        return a;
    }

    public boolean q() {
        cgh b = b("dynamic_ads");
        return a() && b != null && b.c != null && ((Boolean) b.c).booleanValue();
    }

    public ImageSpec r() {
        for (String a : b) {
            ImageSpec imageSpec = (ImageSpec) a(a, ImageSpec.class);
            if (imageSpec != null) {
                return imageSpec;
            }
        }
        return null;
    }

    public List<cmc> s() {
        return cmc.a(b, this.m);
    }

    public boolean t() {
        return "player".equals(this.g) || a();
    }

    public boolean u() {
        return this.g.contains("audio");
    }

    public boolean v() {
        TwitterUser h = h();
        return "4889131224:vine".equals(this.g) || (h != null && h.c == 586671909);
    }

    public boolean w() {
        return this.g.contains("moment");
    }

    public boolean x() {
        return "summary".equals(this.g);
    }

    public boolean y() {
        return "summary_large_image".equals(this.g);
    }

    public boolean z() {
        return "promotion".equals(this.g);
    }

    public boolean A() {
        return "2586390716:message_me".equals(this.g);
    }

    public static String a(Object obj) {
        if (obj == null || !(obj instanceof cgp)) {
            return null;
        }
        return ((cgp) obj).a;
    }

    public boolean B() {
        return "2586390716:product_ad".equals(this.g);
    }

    public boolean C() {
        return "3691233323:periscope_broadcast".equals(this.g);
    }

    public boolean D() {
        return C() || t() || v();
    }

    public boolean E() {
        for (String equals : c) {
            if (equals.equals(this.g)) {
                return true;
            }
        }
        return false;
    }

    public boolean F() {
        for (String equals : d) {
            if (equals.equals(this.g)) {
                return true;
            }
        }
        return false;
    }

    public boolean G() {
        return "appplayer".equals(this.g);
    }

    public boolean H() {
        for (String equals : e) {
            if (equals.equals(this.g)) {
                return true;
            }
        }
        return false;
    }

    public boolean I() {
        for (String equals : f) {
            if (equals.equals(this.g)) {
                return true;
            }
        }
        return false;
    }

    public boolean J() {
        if (TextUtils.isEmpty(this.g)) {
            return false;
        }
        String str = this.g;
        boolean z = true;
        switch (str.hashCode()) {
            case -1932985674:
                if (str.equals("2586390716:buy_now")) {
                    z = false;
                    break;
                }
                break;
            case -1715460233:
                if (str.equals("2586390716:buy_now:staging")) {
                    z = true;
                    break;
                }
                break;
            case 535009021:
                if (str.equals("13598072:buy_now:staging")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
                return true;
            default:
                return false;
        }
    }

    public boolean K() {
        if (TextUtils.isEmpty(this.g)) {
            return false;
        }
        String str = this.g;
        boolean z = true;
        switch (str.hashCode()) {
            case -1565836477:
                if (str.equals("2586390716.forward:forward_buy_now_offers")) {
                    z = true;
                    break;
                }
                break;
            case -1262363135:
                if (str.equals("2586390716:buy_now_offers:staging")) {
                    z = true;
                    break;
                }
                break;
            case 650566464:
                if (str.equals("2586390716:buy_now_offers")) {
                    z = false;
                    break;
                }
                break;
            case 1930660612:
                if (str.equals("2586390716.forward:forward_buy_now_offers:staging")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                return true;
            default:
                return false;
        }
    }

    public boolean L() {
        cgh cgh = (cgh) this.l.get("suppress_tweet_text");
        if (cgh == null || !(cgh.c instanceof Boolean)) {
            return false;
        }
        return ((Boolean) cgh.c).booleanValue();
    }

    public boolean M() {
        return L() || B();
    }

    public cmb N() {
        return this.m;
    }

    public boolean O() {
        return v() || u();
    }

    public boolean P() {
        return t();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cgl)) {
            return false;
        }
        cgl cgl = (cgl) obj;
        if (ObjectUtils.a(this.g, cgl.g) && ObjectUtils.a(this.h, cgl.h) && ObjectUtils.a(this.j, cgl.j) && ObjectUtils.a(this.k, cgl.k) && ObjectUtils.a(this.l, cgl.l) && ObjectUtils.a(this.i, cgl.i)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ObjectUtils.a(this.g, this.h, this.l, this.i, this.j, this.k);
    }
}
