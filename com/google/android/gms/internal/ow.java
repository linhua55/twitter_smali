package com.google.android.gms.internal;

import java.util.Map;

class ow implements fj {
    final /* synthetic */ ov a;

    ow(ov ovVar) {
        this.a = ovVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        synchronized (ov.a(this.a)) {
            if (ov.b(this.a).isDone()) {
            } else if (ov.c(this.a).equals(map.get("request_id"))) {
                pa paVar = new pa(1, map);
                qd.d("Invalid " + paVar.e() + " request error: " + paVar.b());
                ov.b(this.a).b(paVar);
            }
        }
    }
}
