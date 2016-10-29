package com.twitter.android;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bey;
import defpackage.cht;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class fz extends z {
    private final WeakReference<FlowData> a;

    fz(FlowData flowData) {
        this.a = new WeakReference(flowData);
    }

    public void a(x xVar) {
        FlowData flowData = (FlowData) this.a.get();
        if (flowData != null) {
            bey bey = (bey) xVar;
            if (((aa) bey.l().b()).b()) {
                cht cht = bey.g().F;
                if (cht != null && cht.c) {
                    flowData.f(true);
                }
            }
        }
    }
}
