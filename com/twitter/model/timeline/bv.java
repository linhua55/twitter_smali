package com.twitter.model.timeline;

import com.twitter.util.collection.CollectionUtils;
import java.util.List;

/* compiled from: Twttr */
public class bv extends aw<bt, bv> {
    private List<by> a;
    private w l;
    private p m;

    public /* synthetic */ Object c() {
        return d();
    }

    public bv a(List<by> list) {
        this.a = list;
        return this;
    }

    public bv a(w wVar) {
        this.l = wVar;
        return this;
    }

    public boolean bo_() {
        return (!super.bo_() || this.l == null || CollectionUtils.b(this.a)) ? false : true;
    }

    public bv a(p pVar) {
        this.m = pVar;
        return this;
    }

    public bt d() {
        return new bt(4, null);
    }
}
