package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONObject;

@oi
public class fu implements fj {
    final HashMap<String, sg<JSONObject>> a;

    public fu() {
        this.a = new HashMap();
    }

    public Future<JSONObject> a(String str) {
        Object sgVar = new sg();
        this.a.put(str, sgVar);
        return sgVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        a((String) map.get("request_id"), (String) map.get("fetched_ad"));
    }

    public void a(String str, String str2) {
        b.a("Received ad from the cache.");
        sg sgVar = (sg) this.a.get(str);
        if (sgVar == null) {
            b.b("Could not find the ad request for the corresponding ad response.");
            return;
        }
        try {
            sgVar.b(new JSONObject(str2));
        } catch (Throwable e) {
            b.b("Failed constructing JSON object from value passed from javascript", e);
            sgVar.b(null);
        } finally {
            this.a.remove(str);
        }
    }

    public void b(String str) {
        sg sgVar = (sg) this.a.get(str);
        if (sgVar == null) {
            b.b("Could not find the ad request for the corresponding ad response.");
            return;
        }
        if (!sgVar.isDone()) {
            sgVar.cancel(true);
        }
        this.a.remove(str);
    }
}
