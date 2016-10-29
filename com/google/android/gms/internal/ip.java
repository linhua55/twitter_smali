package com.google.android.gms.internal;

import java.util.Map;

class ip implements fj {
    final /* synthetic */ hx a;
    final /* synthetic */ il b;

    ip(il ilVar, hx hxVar) {
        this.b = ilVar;
        this.a = hxVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        synchronized (ik.c(this.b.b)) {
            if (this.b.a.f() == -1 || this.b.a.f() == 1) {
                return;
            }
            ik.a(this.b.b, 0);
            ik.d(this.b.b).a(this.a);
            this.b.a.a(this.a);
            ik.a(this.b.b, this.b.a);
            qd.e("Successfully loaded JS Engine.");
        }
    }
}
