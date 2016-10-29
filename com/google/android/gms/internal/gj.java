package com.google.android.gms.internal;

import android.support.v7.recyclerview.BuildConfig;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.g;
import java.util.Map;

@oi
public class gj implements fj {
    public void a(sz szVar, Map<String, String> map) {
        ge t = ar.t();
        if (!map.containsKey("abort")) {
            String str = (String) map.get("src");
            if (str == null) {
                b.d("Precache video action is missing the src parameter.");
                return;
            }
            int parseInt;
            try {
                parseInt = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException e) {
                parseInt = 0;
            }
            String str2 = map.containsKey("mimetype") ? (String) map.get("mimetype") : BuildConfig.VERSION_NAME;
            if (t.b(szVar)) {
                b.d("Precache task already running.");
                return;
            }
            g.a(szVar.h());
            new gc(szVar, szVar.h().a.a(szVar, parseInt, str2), str).g();
        } else if (!t.a(szVar)) {
            b.d("Precache abort but no preload task running.");
        }
    }
}
