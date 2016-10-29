package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.k;
import com.google.android.gms.ads.internal.overlay.u;
import com.google.android.gms.ads.internal.overlay.zzd;
import java.util.Map;
import org.json.JSONObject;

final class fh implements fj {
    fh() {
    }

    private void a(sz szVar) {
        qd.c("Received support message, responding.");
        boolean z = false;
        k h = szVar.h();
        if (h != null) {
            u uVar = h.c;
            if (uVar != null) {
                z = uVar.a();
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("event", "checkSupport");
            jSONObject.put("supports", z);
            szVar.b("appStreaming", jSONObject);
        } catch (Throwable th) {
        }
    }

    public void a(sz szVar, Map<String, String> map) {
        if ("checkSupport".equals(map.get("action"))) {
            a(szVar);
            return;
        }
        zzd i = szVar.i();
        if (i != null) {
            i.a(szVar, map);
        }
    }
}
