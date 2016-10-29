package com.twitter.model.timeline;

/* compiled from: Twttr */
public class cm extends aw<ck, cm> {
    cp a;
    p l;

    public /* synthetic */ Object c() {
        return d();
    }

    public cm a(cp cpVar) {
        this.a = cpVar;
        return this;
    }

    public cm a(p pVar) {
        this.l = pVar;
        return this;
    }

    public boolean bo_() {
        return (!super.bo_() || this.a == null || (this.a.b.isEmpty() && this.a.a.isEmpty())) ? false : true;
    }

    public ck d() {
        return new ck(7, null);
    }
}
