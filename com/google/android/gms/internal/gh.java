package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

class gh implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ int c;
    final /* synthetic */ gf d;

    gh(gf gfVar, String str, String str2, int i) {
        this.d = gfVar;
        this.a = str;
        this.b = str2;
        this.c = i;
    }

    public void run() {
        Map hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.a);
        hashMap.put("cachedSrc", this.b);
        hashMap.put("totalBytes", Integer.toString(this.c));
        gf.a(this.d, "onPrecacheEvent", hashMap);
    }
}
