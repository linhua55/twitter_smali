package com.twitter.android;

import com.twitter.util.h;
import cyw;

/* compiled from: Twttr */
class vz implements cyw<Long, Boolean> {
    final /* synthetic */ vx a;

    vz(vx vxVar) {
        this.a = vxVar;
    }

    public Boolean a(Long l) {
        h.a();
        Long c = this.a.c(l.longValue());
        boolean z = c != null && this.a.h.b() >= c.longValue() + vx.a;
        return Boolean.valueOf(z);
    }
}
