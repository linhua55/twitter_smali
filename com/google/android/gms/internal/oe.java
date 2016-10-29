package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.d;
import com.google.android.gms.ads.internal.formats.i;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public class oe implements oc<d> {
    private final boolean a;
    private final boolean b;

    public oe(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    public /* synthetic */ i a(nw nwVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        return b(nwVar, jSONObject);
    }

    public d b(nw nwVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        List<sm> a = nwVar.a(jSONObject, "images", true, this.a, this.b);
        sm a2 = nwVar.a(jSONObject, "app_icon", true, this.a);
        sm b = nwVar.b(jSONObject);
        List arrayList = new ArrayList();
        for (sm smVar : a) {
            arrayList.add(smVar.get());
        }
        return new d(jSONObject.getString("headline"), arrayList, jSONObject.getString("body"), (di) a2.get(), jSONObject.getString("call_to_action"), jSONObject.optDouble("rating", -1.0d), jSONObject.optString("store"), jSONObject.optString("price"), (a) b.get(), new Bundle());
    }
}
