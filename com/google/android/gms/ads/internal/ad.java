package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.formats.e;
import com.google.android.gms.internal.qd;
import com.google.android.gms.internal.sz;
import com.google.android.gms.internal.tc;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

final class ad implements tc {
    final /* synthetic */ e a;
    final /* synthetic */ String b;
    final /* synthetic */ sz c;

    ad(e eVar, String str, sz szVar) {
        this.a = eVar;
        this.b = str;
        this.c = szVar;
    }

    public void a(sz szVar, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("headline", this.a.a());
            jSONObject.put(TtmlNode.TAG_BODY, this.a.c());
            jSONObject.put("call_to_action", this.a.e());
            jSONObject.put("advertiser", this.a.f());
            jSONObject.put("logo", ab.a(this.a.d()));
            JSONArray jSONArray = new JSONArray();
            List<Object> b = this.a.b();
            if (b != null) {
                for (Object a : b) {
                    jSONArray.put(ab.a(ab.a(a)));
                }
            }
            jSONObject.put("images", jSONArray);
            jSONObject.put("extras", ab.a(this.a.h(), this.b));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("assets", jSONObject);
            jSONObject2.put("template_id", "1");
            this.c.a("google.afma.nativeExpressAds.loadAssets", jSONObject2);
        } catch (Throwable e) {
            qd.d("Exception occurred when loading assets", e);
        }
    }
}
