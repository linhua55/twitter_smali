package com.google.android.gms.internal;

import org.json.JSONObject;

class ie implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ JSONObject b;
    final /* synthetic */ id c;

    ie(id idVar, String str, JSONObject jSONObject) {
        this.c = idVar;
        this.a = str;
        this.b = jSONObject;
    }

    public void run() {
        id.a(this.c).a(this.a, this.b);
    }
}
