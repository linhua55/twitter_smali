package defpackage;

import cab;
import caj;
import caq;
import car;
import com.twitter.android.mx;
import com.twitter.config.d;
import com.twitter.config.f;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;
import com.twitter.library.client.bf;
import com.twitter.library.client.bg;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.util.aj;
import com.twitter.util.collection.z;
import com.twitter.util.j;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: cap */
public class cap extends ad implements f {
    private static final Pattern a;
    private static cap b;
    private boolean c;
    private boolean d;
    private final Map<z<String, DisplayMode>, car> e;

    static {
        a = Pattern.compile("\\W");
    }

    public cap() {
        this.e = new HashMap();
        this.c = d.a("card_registry_enabled");
        this.d = d.a("cards_forward_enabled");
        d.a((f) this);
        bg.a().a((bf) this);
    }

    public static cap b() {
        cqf.a(cap.class);
        if (b == null) {
            b = new cap();
        }
        return b;
    }

    public void a(String str, caj caj, DisplayMode... displayModeArr) {
        if (!this.c) {
            return;
        }
        if (aj.a((CharSequence) str)) {
            if (j.e()) {
                throw new IllegalArgumentException("Missing card name");
            }
        } else if (caj != null) {
            int length = displayModeArr.length;
            int i = 0;
            while (i < length) {
                DisplayMode displayMode = displayModeArr[i];
                z a = z.a(str, displayMode);
                if (this.e.get(a) == null) {
                    this.e.put(a, new car(caj, cap.b(str, displayMode)));
                    i++;
                } else if (j.e()) {
                    throw new IllegalArgumentException("Duplicate registration for " + str);
                } else {
                    return;
                }
            }
        } else if (j.e()) {
            throw new IllegalArgumentException("Null factory");
        }
    }

    public boolean a(String str, DisplayMode displayMode, cmb cmb) {
        if (!this.c) {
            return false;
        }
        car car = (car) this.e.get(z.a(str, displayMode));
        boolean z = car != null && car.a.a(displayMode, cmb) && (car.c || cap.c(str, displayMode));
        return z;
    }

    public caj a(String str, DisplayMode displayMode) {
        if (!this.c) {
            return null;
        }
        car car = (car) this.e.get(z.a(str, displayMode));
        return car != null ? car.a : null;
    }

    public boolean a(cgl cgl) {
        return a(cgl.b(), DisplayMode.a, cgl.N());
    }

    public boolean b(cgl cgl) {
        return a(cgl.b(), DisplayMode.b, cgl.N());
    }

    public boolean c(cgl cgl) {
        return this.d && a(cgl);
    }

    public boolean d(cgl cgl) {
        if (!cgl.a() || d.a("legacy_deciders_amplify_player_enabled")) {
            return b(cgl);
        }
        return false;
    }

    public boolean e(cgl cgl) {
        return d(cgl) || c(cgl);
    }

    public void a() {
        this.c = d.a("card_registry_enabled");
        this.d = d.a("cards_forward_enabled");
        for (car a : this.e.values()) {
            a.a();
        }
    }

    public void a(Session session) {
        a();
    }

    private static boolean c(String str, DisplayMode displayMode) {
        return cab.a().a(str, displayMode);
    }

    public static String b(String str, DisplayMode displayMode) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("card_registry_");
        stringBuilder.append(a.matcher(str).replaceAll("_"));
        switch (caq.a[displayMode.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                stringBuilder.append("_forward");
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                stringBuilder.append("_full");
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                stringBuilder.append("_compose");
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                stringBuilder.append("_carousel");
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                stringBuilder.append("_moments");
                break;
        }
        stringBuilder.append("_enabled");
        return stringBuilder.toString();
    }
}
