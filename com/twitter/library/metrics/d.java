package com.twitter.library.metrics;

import android.app.Activity;
import arj;
import com.twitter.app.common.util.h;
import com.twitter.library.metrics.ForegroundMetricTracker.BackgroundBehavior;
import java.util.HashMap;

/* compiled from: Twttr */
final class d implements h {
    d() {
    }

    public void a(Activity activity) {
        synchronized (ForegroundMetricTracker.a) {
            HashMap hashMap = new HashMap(ForegroundMetricTracker.a);
        }
        for (arj arj : hashMap.keySet()) {
            e eVar = (e) hashMap.get(arj);
            if (eVar.a == BackgroundBehavior.DESTROY_ON_ENTER_BACKGROUND) {
                arj.k();
                ForegroundMetricTracker.a(arj);
            } else {
                eVar.b = arj.l();
                arj.j();
            }
        }
    }

    public void b(Activity activity) {
        synchronized (ForegroundMetricTracker.a) {
            HashMap hashMap = new HashMap(ForegroundMetricTracker.a);
        }
        for (arj arj : hashMap.keySet()) {
            if (arj.m()) {
                ForegroundMetricTracker.a(arj);
            } else {
                e eVar = (e) hashMap.get(arj);
                if (eVar.a == BackgroundBehavior.PAUSE_ON_ENTER_BACKGROND && eVar.b) {
                    arj.i();
                }
            }
        }
    }
}
