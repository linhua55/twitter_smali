package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.util.client.b;
import com.twitter.android.mx;
import java.util.Map;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

@oi
public class fv implements fj {
    static final Map<String, Integer> a;
    private final l b;
    private final ll c;

    static {
        a = vk.a("resize", Integer.valueOf(1), "playVideo", Integer.valueOf(2), "storePicture", Integer.valueOf(3), "createCalendarEvent", Integer.valueOf(4), "setOrientationProperties", Integer.valueOf(5), "closeResizedAd", Integer.valueOf(6));
    }

    public fv(l lVar, ll llVar) {
        this.b = lVar;
        this.c = llVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        int intValue = ((Integer) a.get((String) map.get("a"))).intValue();
        if (intValue == 5 || this.b == null || this.b.b()) {
            switch (intValue) {
                case WireMessage.WIRE_CHAT /*1*/:
                    this.c.a((Map) map);
                    return;
                case WireMessage.WIRE_AUTH /*3*/:
                    new lo(szVar, map).a();
                    return;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    new li(szVar, map).a();
                    return;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    new ln(szVar, map).a();
                    return;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    this.c.a(true);
                    return;
                default:
                    b.c("Unknown MRAID command called.");
                    return;
            }
        }
        this.b.a(null);
    }
}
