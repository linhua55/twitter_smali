package com.google.android.gms.internal;

import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.c;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.ads.internal.formats.i;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@oi
public class og implements oc<f> {
    private final boolean a;

    public og(boolean z) {
        this.a = z;
    }

    private <K, V> SimpleArrayMap<K, V> a(SimpleArrayMap<K, Future<V>> simpleArrayMap) throws InterruptedException, ExecutionException {
        SimpleArrayMap<K, V> simpleArrayMap2 = new SimpleArrayMap();
        for (int i = 0; i < simpleArrayMap.size(); i++) {
            simpleArrayMap2.put(simpleArrayMap.keyAt(i), ((Future) simpleArrayMap.valueAt(i)).get());
        }
        return simpleArrayMap2;
    }

    private void a(nw nwVar, JSONObject jSONObject, SimpleArrayMap<String, Future<c>> simpleArrayMap) throws JSONException {
        simpleArrayMap.put(jSONObject.getString("name"), nwVar.a(jSONObject, "image_value", this.a));
    }

    private void a(JSONObject jSONObject, SimpleArrayMap<String, String> simpleArrayMap) throws JSONException {
        simpleArrayMap.put(jSONObject.getString("name"), jSONObject.getString("string_value"));
    }

    public /* synthetic */ i a(nw nwVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        return b(nwVar, jSONObject);
    }

    public f b(nw nwVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        SimpleArrayMap simpleArrayMap2 = new SimpleArrayMap();
        sm b = nwVar.b(jSONObject);
        JSONArray jSONArray = jSONObject.getJSONArray("custom_assets");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            String string = jSONObject2.getString("type");
            if ("string".equals(string)) {
                a(jSONObject2, simpleArrayMap2);
            } else if ("image".equals(string)) {
                a(nwVar, jSONObject2, simpleArrayMap);
            } else {
                b.d("Unknown custom asset type: " + string);
            }
        }
        return new f(jSONObject.getString("custom_template_id"), a(simpleArrayMap), simpleArrayMap2, (a) b.get());
    }
}
