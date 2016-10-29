package com.twitter.library.metrics;

import arf;
import com.twitter.app.common.util.f;
import com.twitter.library.network.DataUsageEvent;
import com.twitter.util.z;

/* compiled from: Twttr */
class m implements z<DataUsageEvent> {
    final /* synthetic */ arf a;
    final /* synthetic */ arf b;
    final /* synthetic */ k c;

    m(k kVar, arf arf, arf arf2) {
        this.c = kVar;
        this.a = arf;
        this.b = arf2;
    }

    public void a(DataUsageEvent dataUsageEvent) {
        (f.a().c() ? this.a : this.b).a(dataUsageEvent.f);
    }
}
