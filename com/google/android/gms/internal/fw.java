package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

@oi
public final class fw implements fj {
    private final fr a;
    private final l b;
    private final ll c;

    public fw(fr frVar, l lVar, ll llVar) {
        this.a = frVar;
        this.b = lVar;
        this.c = llVar;
    }

    private void a(boolean z) {
        if (this.c != null) {
            this.c.a(z);
        }
    }

    private static boolean a(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int b(Map<String, String> map) {
        String str = (String) map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return ar.g().b();
            }
            if ("l".equalsIgnoreCase(str)) {
                return ar.g().a();
            }
            if ("c".equalsIgnoreCase(str)) {
                return ar.g().c();
            }
        }
        return -1;
    }

    private static void b(sz szVar, Map<String, String> map) {
        String str = (String) map.get("u");
        if (TextUtils.isEmpty(str)) {
            b.d("Destination url cannot be empty.");
        } else {
            new fx(szVar, str).g();
        }
    }

    private static void c(sz szVar, Map<String, String> map) {
        Context context = szVar.getContext();
        if (TextUtils.isEmpty((String) map.get("u"))) {
            b.d("Destination url cannot be empty.");
            return;
        }
        try {
            szVar.l().a(new AdLauncherIntentInfoParcel(new fy(szVar).a(context, map)));
        } catch (ActivityNotFoundException e) {
            b.d(e.getMessage());
        }
    }

    public void a(sz szVar, Map<String, String> map) {
        String str = (String) map.get("a");
        if (str == null) {
            b.d("Action missing from an open GMSG.");
        } else if (this.b == null || this.b.b()) {
            ta l = szVar.l();
            if ("expand".equalsIgnoreCase(str)) {
                if (szVar.p()) {
                    b.d("Cannot expand WebView that is already expanded.");
                    return;
                }
                a(false);
                l.a(a((Map) map), b(map));
            } else if ("webapp".equalsIgnoreCase(str)) {
                str = (String) map.get("u");
                a(false);
                if (str != null) {
                    l.a(a((Map) map), b(map), str);
                } else {
                    l.a(a((Map) map), b(map), (String) map.get("html"), (String) map.get("baseurl"));
                }
            } else if ("in_app_purchase".equalsIgnoreCase(str)) {
                str = (String) map.get("product_id");
                String str2 = (String) map.get("report_urls");
                if (this.a == null) {
                    return;
                }
                if (str2 == null || str2.isEmpty()) {
                    this.a.a(str, new ArrayList());
                } else {
                    this.a.a(str, new ArrayList(Arrays.asList(str2.split(" "))));
                }
            } else if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("play_store"))) {
                b(szVar, map);
            } else if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
                a(true);
                c(szVar, map);
            } else {
                a(true);
                str = (String) map.get("u");
                l.a(new AdLauncherIntentInfoParcel((String) map.get("i"), !TextUtils.isEmpty(str) ? ar.e().a(szVar, str) : str, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
            }
        } else {
            this.b.a((String) map.get("u"));
        }
    }
}
