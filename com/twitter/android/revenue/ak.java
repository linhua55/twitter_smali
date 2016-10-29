package com.twitter.android.revenue;

import com.twitter.library.api.PromotedEvent;
import com.twitter.library.revenue.QualifiedDwellTracker;
import com.twitter.model.core.Tweet;
import defpackage.cbp;

/* compiled from: Twttr */
class ak implements Runnable {
    final /* synthetic */ Tweet a;
    final /* synthetic */ aj b;

    ak(aj ajVar, Tweet tweet) {
        this.b = ajVar;
        this.a = tweet;
    }

    public void run() {
        if (this.b.j) {
            QualifiedDwellTracker.a().a(this.a.f);
        } else {
            this.b.b.a(cbp.a(PromotedEvent.at, this.a.f).a());
        }
        String str = this.a.f.c;
        aj.a.put(str, str);
        this.b.a(this.a.H);
    }
}
