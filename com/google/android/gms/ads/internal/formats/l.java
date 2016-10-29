package com.google.android.gms.ads.internal.formats;

import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.sz;
import com.google.android.gms.internal.tc;
import java.util.Map;
import org.json.JSONObject;

class l implements tc {
    final /* synthetic */ Map a;
    final /* synthetic */ k b;

    l(k kVar, Map map) {
        this.b = kVar;
        this.a = map;
    }

    public void a(sz szVar, boolean z) {
        j.a(this.b.a, (String) this.a.get(TtmlNode.ATTR_ID));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("messageType", "htmlLoaded");
            jSONObject.put(TtmlNode.ATTR_ID, j.a(this.b.a));
            j.b(this.b.a).b("sendMessageToNativeJs", jSONObject);
        } catch (Throwable e) {
            qd.b("Unable to dispatch sendMessageToNativeJsevent", e);
        }
    }
}
