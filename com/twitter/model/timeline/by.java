package com.twitter.model.timeline;

import com.twitter.model.core.cm;
import com.twitter.model.search.p;
import com.twitter.model.search.q;

/* compiled from: Twttr */
public class by extends aw<bw, by> {
    cm a;

    public /* synthetic */ Object c() {
        return e();
    }

    public by a(cm cmVar) {
        this.a = cmVar;
        return this;
    }

    public cm d() {
        return this.a;
    }

    public void X_() {
        if (this.a != null && this.h != null) {
            if (this.a.I == null) {
                this.a.I = (p) new q().a(this.h).q();
                return;
            }
            this.a.I.f = this.h;
        }
    }

    public boolean bo_() {
        return (!super.bo_() || this.a == null || ("Moments".equals(this.j) && this.i == null)) ? false : true;
    }

    public bw e() {
        return new bw(1, null);
    }
}
