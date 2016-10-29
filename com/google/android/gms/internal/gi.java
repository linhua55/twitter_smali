package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

class gi implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ gf e;

    gi(gf gfVar, String str, String str2, String str3, String str4) {
        this.e = gfVar;
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public void run() {
        Map hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.a);
        if (!TextUtils.isEmpty(this.b)) {
            hashMap.put("cachedSrc", this.b);
        }
        hashMap.put("type", gf.a(this.e, this.c));
        hashMap.put("reason", this.c);
        if (!TextUtils.isEmpty(this.d)) {
            hashMap.put("message", this.d);
        }
        gf.a(this.e, "onPrecacheEvent", hashMap);
    }
}
