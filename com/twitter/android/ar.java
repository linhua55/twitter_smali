package com.twitter.android;

import android.database.Cursor;
import com.twitter.android.timeline.aw;
import com.twitter.library.widget.InlineDismissView;
import com.twitter.model.timeline.l;
import com.twitter.util.concurrent.b;
import com.twitter.util.h;
import defpackage.cdt;
import defpackage.cdv;

/* compiled from: Twttr */
class ar extends b {
    private final hn a;
    private final InlineDismissView b;
    private final aw c;
    private final cdv d;

    ar(hn hnVar, InlineDismissView inlineDismissView, aw awVar) {
        this.d = new cdv(new cdt());
        this.a = hnVar;
        this.b = inlineDismissView;
        this.c = awVar;
    }

    protected void a(Cursor cursor) {
        h.a();
        if (cursor.moveToFirst() && this.d.a(cursor)) {
            l b = this.d.b(cursor);
            long j = this.c.n;
            this.a.a(j, b);
            this.a.a(j);
            this.b.setDismissInfo(b);
        }
    }
}
