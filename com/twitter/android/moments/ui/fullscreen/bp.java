package com.twitter.android.moments.ui.fullscreen;

import adt;
import aeq;
import afv;
import android.view.View;
import com.twitter.android.moments.data.ag;
import com.twitter.android.moments.data.h;
import com.twitter.model.moments.ab;
import com.twitter.moments.core.ui.widget.sectionpager.d;

/* compiled from: Twttr */
public class bp implements d {
    private final afv a;
    private final h b;
    private final fl c;
    private final dm d;

    bp(ab abVar, afv afv, ag agVar, adt adt, fl flVar, dm dmVar) {
        this.c = flVar;
        this.d = dmVar;
        this.a = afv;
        this.b = new h(new aeq(afv.a()), agVar, adt);
        this.c.a(afv.b());
        a(abVar);
    }

    public View e() {
        return this.a.a();
    }

    private void a(ab abVar) {
        this.b.a(abVar);
        this.a.a(new bq(this));
    }

    public void d() {
        this.c.a();
    }

    public void c() {
        this.c.b();
    }

    public void a() {
        this.b.a();
        this.c.c();
    }
}
