package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public final class jo {
    public final List<jn> a;
    public final long b;
    public final List<String> c;
    public final List<String> d;
    public final List<String> e;
    public final String f;
    public final long g;
    public final String h;
    public final int i;
    public final int j;
    public final long k;
    public int l;
    public int m;

    public jo(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        if (b.a(2)) {
            qd.e("Mediation Response JSON: " + jSONObject.toString(2));
        }
        JSONArray jSONArray = jSONObject.getJSONArray("ad_networks");
        List arrayList = new ArrayList(jSONArray.length());
        int i = -1;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            jn jnVar = new jn(jSONArray.getJSONObject(i2));
            arrayList.add(jnVar);
            if (i < 0 && a(jnVar)) {
                i = i2;
            }
        }
        this.l = i;
        this.m = jSONArray.length();
        this.a = Collections.unmodifiableList(arrayList);
        this.f = jSONObject.getString("qdata");
        this.j = jSONObject.optInt("fs_model_type", -1);
        this.k = jSONObject.optLong("timeout_ms", -1);
        JSONObject optJSONObject = jSONObject.optJSONObject("settings");
        if (optJSONObject != null) {
            this.b = optJSONObject.optLong("ad_network_timeout_millis", -1);
            this.c = ar.r().a(optJSONObject, "click_urls");
            this.d = ar.r().a(optJSONObject, "imp_urls");
            this.e = ar.r().a(optJSONObject, "nofill_urls");
            long optLong = optJSONObject.optLong("refresh", -1);
            this.g = optLong > 0 ? optLong * 1000 : -1;
            RewardItemParcel a = RewardItemParcel.a(optJSONObject.optJSONArray("rewards"));
            if (a == null) {
                this.h = null;
                this.i = 0;
                return;
            }
            this.h = a.b;
            this.i = a.c;
            return;
        }
        this.b = -1;
        this.c = null;
        this.d = null;
        this.e = null;
        this.g = -1;
        this.h = null;
        this.i = 0;
    }

    private boolean a(jn jnVar) {
        for (String equals : jnVar.c) {
            if (equals.equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                return true;
            }
        }
        return false;
    }
}
