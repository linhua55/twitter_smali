package com.twitter.android;

import android.database.Cursor;
import com.twitter.android.timeline.aw;
import com.twitter.model.timeline.l;
import com.twitter.util.concurrent.e;
import com.twitter.util.h;

/* compiled from: Twttr */
class hr implements e<Cursor> {
    final /* synthetic */ long a;
    final /* synthetic */ aw b;
    final /* synthetic */ ho c;

    hr(ho hoVar, long j, aw awVar) {
        this.c = hoVar;
        this.a = j;
        this.b = awVar;
    }

    public void a(Cursor cursor) {
        h.a();
        l c = this.c.c(this.a);
        if (c != null) {
            this.c.a(this.b, c);
            this.c.a(this.b, c.b, "click");
        }
    }
}
