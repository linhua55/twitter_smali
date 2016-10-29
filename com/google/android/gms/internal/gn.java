package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.ads.internal.client.ac;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.ax;
import com.google.android.gms.ads.internal.reward.client.g;
import com.google.android.gms.ads.internal.w;
import java.util.LinkedList;
import java.util.List;

@oi
class gn {
    private final List<hl> a;

    gn() {
        this.a = new LinkedList();
    }

    void a(w wVar) {
        wVar.a((af) new go(this));
        wVar.a((ax) new gu(this));
        wVar.a((mo) new gw(this));
        wVar.a((de) new gy(this));
        wVar.a((ac) new ha(this));
        wVar.a((g) new hc(this));
    }

    void a(hm hmVar) {
        Handler handler = qw.a;
        for (hl hkVar : this.a) {
            handler.post(new hk(this, hkVar, hmVar));
        }
    }
}
