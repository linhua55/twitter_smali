package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.bm;
import java.util.Map;
import org.json.JSONObject;

class nx implements fj {
    final /* synthetic */ hx a;
    final /* synthetic */ od b;
    final /* synthetic */ sg c;
    final /* synthetic */ nw d;

    nx(nw nwVar, hx hxVar, od odVar, sg sgVar) {
        this.d = nwVar;
        this.a = hxVar;
        this.b = odVar;
        this.c = sgVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        this.a.b("/nativeAdPreProcess", this.b.a);
        try {
            String str = (String) map.get("success");
            if (!TextUtils.isEmpty(str)) {
                this.c.b(new JSONObject(str).getJSONArray("ads").getJSONObject(0));
                return;
            }
        } catch (Throwable e) {
            qd.b("Malformed native JSON response.", e);
        }
        this.d.a(0);
        bm.a(this.d.b(), "Unable to set the ad state error!");
        this.c.b(null);
    }
}
