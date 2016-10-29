package com.twitter.android.moments.ui.fullscreen;

import ade;
import com.twitter.model.moments.af;
import cvi;
import cwd;
import rx.an;

/* compiled from: Twttr */
public class cv implements fe {
    private final cx a;
    private final Long b;
    private final af c;
    private final ade d;
    private an e;

    public cv(cx cxVar, Long l, af afVar, ade ade) {
        this.a = cxVar;
        this.b = l;
        this.c = afVar;
        this.d = ade;
    }

    public void a() {
        cx cxVar = this.a;
        boolean z = this.b == null || this.b.longValue() != this.c.b.b;
        cxVar.a(z);
        this.a.a(this.c);
        this.e = this.d.a(this.c.c.j).b(new cw(this));
    }

    public void b() {
        cwd.a(this.e);
        cvi.a(this.d);
    }
}
