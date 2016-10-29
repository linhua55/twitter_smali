package com.google.android.gms.ads.internal.request;

import org.json.JSONObject;

class ad implements Runnable {
    final /* synthetic */ JSONObject a;
    final /* synthetic */ String b;
    final /* synthetic */ ab c;

    ad(ab abVar, JSONObject jSONObject, String str) {
        this.c = abVar;
        this.a = jSONObject;
        this.b = str;
    }

    public void run() {
        ab.a(this.c, ab.f().b());
        ab.b(this.c).a(new ae(this), new af(this));
    }
}
