package com.twitter.model.timeline;

import com.twitter.util.collection.CollectionUtils;

/* compiled from: Twttr */
public class as extends aw<aq, as> {
    c a;

    public /* synthetic */ Object c() {
        return d();
    }

    public as a(c cVar) {
        this.a = cVar;
        return this;
    }

    public boolean bo_() {
        return (!super.bo_() || this.a == null || CollectionUtils.a(this.a.b)) ? false : true;
    }

    public aq d() {
        return new aq(2, null);
    }
}
