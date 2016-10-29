package com.google.android.gms.internal;

import java.util.Map;

class ak implements fj {
    final /* synthetic */ ah a;

    ak(ah ahVar) {
        this.a = ahVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        if (this.a.a(map)) {
            qd.a("Received request to untrack: " + this.a.b.d());
            this.a.c();
        }
    }
}
