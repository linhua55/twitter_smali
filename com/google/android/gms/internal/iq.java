package com.google.android.gms.internal;

import java.util.Map;

class iq implements fj {
    final /* synthetic */ hx a;
    final /* synthetic */ sd b;
    final /* synthetic */ il c;

    iq(il ilVar, hx hxVar, sd sdVar) {
        this.c = ilVar;
        this.a = hxVar;
        this.b = sdVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        synchronized (ik.c(this.c.b)) {
            qd.c("JS Engine is requesting an update");
            if (ik.e(this.c.b) == 0) {
                qd.c("Starting reload.");
                ik.a(this.c.b, 2);
                this.c.b.a();
            }
            this.a.b("/requestReload", (fj) this.b.a());
        }
    }
}
