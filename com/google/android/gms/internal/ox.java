package com.google.android.gms.internal;

import java.util.Map;

class ox implements fj {
    final /* synthetic */ ov a;

    ox(ov ovVar) {
        this.a = ovVar;
    }

    public void a(sz szVar, Map<String, String> map) {
        synchronized (ov.a(this.a)) {
            if (ov.b(this.a).isDone()) {
                return;
            }
            pa paVar = new pa(-2, map);
            if (ov.c(this.a).equals(paVar.g())) {
                String d = paVar.d();
                if (d == null) {
                    qd.d("URL missing in loadAdUrl GMSG.");
                    return;
                }
                if (d.contains("%40mediation_adapters%40")) {
                    String replaceAll = d.replaceAll("%40mediation_adapters%40", qa.a(szVar.getContext(), (String) map.get("check_adapters"), ov.d(this.a)));
                    paVar.a(replaceAll);
                    qd.e("Ad request URL modified to " + replaceAll);
                }
                ov.b(this.a).b(paVar);
                return;
            }
            qd.d(paVar.g() + " ==== " + ov.c(this.a));
        }
    }
}
