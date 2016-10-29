package com.twitter.model.timeline;

import com.twitter.model.moments.an;

/* compiled from: Twttr */
public class cb extends aw<bz, cb> {
    an a;

    public /* synthetic */ Object c() {
        return d();
    }

    public cb a(an anVar) {
        this.a = anVar;
        if (anVar != null) {
            a(anVar.e);
        }
        return this;
    }

    public boolean bo_() {
        return (!super.bo_() || this.a == null || this.a.c.isEmpty()) ? false : true;
    }

    public bz d() {
        return new bz(11, null);
    }
}
