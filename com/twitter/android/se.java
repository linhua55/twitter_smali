package com.twitter.android;

import boh;
import bok;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bpa;

/* compiled from: Twttr */
class se extends z {
    final /* synthetic */ TimelineFragment a;

    private se(TimelineFragment timelineFragment) {
        this.a = timelineFragment;
    }

    public void a(x xVar) {
        super.a(xVar);
        if (xVar instanceof boh) {
            this.a.a((boh) xVar);
        } else if (xVar instanceof bok) {
            this.a.a((bok) xVar);
        } else if (xVar instanceof bpa) {
            this.a.a((bpa) xVar);
        }
    }
}
