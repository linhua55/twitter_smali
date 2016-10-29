package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ar;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public final class jn {
    public final String a;
    public final String b;
    public final List<String> c;
    public final String d;
    public final String e;
    public final List<String> f;
    public final List<String> g;
    public final String h;
    public final List<String> i;
    public final List<String> j;
    public final String k;
    public final String l;
    public final String m;
    public final List<String> n;
    public final String o;

    public jn(JSONObject jSONObject) throws JSONException {
        String str = null;
        this.b = jSONObject.getString("id");
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        List arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.c = Collections.unmodifiableList(arrayList);
        this.d = jSONObject.optString("allocation_id", null);
        this.f = ar.r().a(jSONObject, "clickurl");
        this.g = ar.r().a(jSONObject, "imp_urls");
        this.i = ar.r().a(jSONObject, "video_start_urls");
        this.j = ar.r().a(jSONObject, "video_complete_urls");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        this.a = optJSONObject != null ? optJSONObject.toString() : null;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.h = optJSONObject2 != null ? optJSONObject2.toString() : null;
        this.e = optJSONObject2 != null ? optJSONObject2.optString("class_name") : null;
        this.k = jSONObject.optString("html_template", null);
        this.l = jSONObject.optString("ad_base_url", null);
        optJSONObject = jSONObject.optJSONObject("assets");
        this.m = optJSONObject != null ? optJSONObject.toString() : null;
        this.n = ar.r().a(jSONObject, "template_ids");
        optJSONObject = jSONObject.optJSONObject("ad_loader_options");
        if (optJSONObject != null) {
            str = optJSONObject.toString();
        }
        this.o = str;
    }
}
