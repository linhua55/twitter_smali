package com.google.android.gms.internal;

import java.util.Map;

class al implements fj {
    final /* synthetic */ ah a;

    al(ah ahVar) {
        this.a = ahVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        if (this.a.a(map) && map.containsKey("isVisible")) {
            boolean z = "1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible"));
            this.a.a(Boolean.valueOf(z).booleanValue());
        }
    }
}
