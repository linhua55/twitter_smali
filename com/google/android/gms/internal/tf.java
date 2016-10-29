package com.google.android.gms.internal;

import java.util.Map;

class tf implements fj {
    final /* synthetic */ ta a;

    private tf(ta taVar) {
        this.a = taVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        if (map.keySet().contains(TtmlNode.START)) {
            ta.a(this.a);
        } else if (map.keySet().contains("stop")) {
            ta.b(this.a);
        } else if (map.keySet().contains("cancel")) {
            ta.c(this.a);
        }
    }
}
