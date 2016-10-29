package com.google.android.gms.ads.internal.formats;

import com.google.android.gms.internal.fj;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.sz;
import java.util.Map;
import org.json.JSONObject;

class p implements fj {
    final /* synthetic */ j a;

    p(j jVar) {
        this.a = jVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str : map.keySet()) {
                jSONObject.put(str, map.get(str));
            }
            jSONObject.put(TtmlNode.ATTR_ID, j.a(this.a));
            j.b(this.a).b("sendMessageToNativeJs", jSONObject);
        } catch (Throwable e) {
            qd.b("Unable to dispatch sendMessageToNativeJs event", e);
        }
    }
}
