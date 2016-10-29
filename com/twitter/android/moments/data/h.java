package com.twitter.android.moments.data;

import adt;
import aeq;
import bym;
import com.twitter.model.moments.ab;
import com.twitter.ui.widget.ToggleTwitterButton;
import rx.an;

/* compiled from: Twttr */
public class h {
    private final aeq a;
    private final ag b;
    private final adt c;
    private k d;
    private an e;

    public h(aeq aeq, ag agVar, adt adt) {
        this.a = aeq;
        this.b = agVar;
        this.c = adt;
    }

    public void a(k kVar) {
        this.d = kVar;
    }

    public void a(ab abVar) {
        a();
        if (bym.a(abVar)) {
            this.a.b();
            b(abVar);
            this.e = this.b.c(abVar.b).b(new i(this));
            return;
        }
        this.a.a();
    }

    private void b(ab abVar) {
        this.a.a(abVar.k);
        this.a.a(new j(this, abVar));
    }

    public void a() {
        if (this.e != null) {
            this.e.K_();
            this.e = null;
        }
        a(null);
    }

    public ToggleTwitterButton b() {
        return this.a.c();
    }
}
