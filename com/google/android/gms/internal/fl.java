package com.google.android.gms.internal;

import java.util.Map;
import org.json.JSONObject;

class fl implements Runnable {
    final /* synthetic */ Map a;
    final /* synthetic */ sz b;
    final /* synthetic */ fk c;

    fl(fk fkVar, Map map, sz szVar) {
        this.c = fkVar;
        this.a = map;
        this.b = szVar;
    }

    public void run() {
        qd.a("Received Http request.");
        JSONObject a = this.c.a((String) this.a.get("http_request"));
        if (a == null) {
            qd.b("Response should not be null.");
        } else {
            qw.a.post(new fm(this, a));
        }
    }
}
