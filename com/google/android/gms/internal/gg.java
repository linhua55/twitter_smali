package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

class gg implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ String b;
    final /* synthetic */ int c;
    final /* synthetic */ int d;
    final /* synthetic */ boolean e;
    final /* synthetic */ gf f;

    gg(gf gfVar, String str, String str2, int i, int i2, boolean z) {
        this.f = gfVar;
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = i2;
        this.e = z;
    }

    public void run() {
        Map hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.a);
        hashMap.put("cachedSrc", this.b);
        hashMap.put("bytesLoaded", Integer.toString(this.c));
        hashMap.put("totalBytes", Integer.toString(this.d));
        hashMap.put("cacheReady", this.e ? "1" : "0");
        gf.a(this.f, "onPrecacheEvent", hashMap);
    }
}
