package com.google.android.gms.internal;

import org.json.JSONObject;

class fm implements Runnable {
    final /* synthetic */ JSONObject a;
    final /* synthetic */ fl b;

    fm(fl flVar, JSONObject jSONObject) {
        this.b = flVar;
        this.a = jSONObject;
    }

    public void run() {
        this.b.b.b("fetchHttpRequestCompleted", this.a);
        qd.a("Dispatched http response.");
    }
}
