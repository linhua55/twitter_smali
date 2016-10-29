package com.twitter.model.timeline;

import java.util.List;

/* compiled from: Twttr */
public class au extends aw<at, au> {
    private List<av> a;

    protected /* synthetic */ Object c() {
        return d();
    }

    public au a(List<av> list) {
        this.a = list;
        return this;
    }

    public boolean bo_() {
        return super.bo_() && this.a != null;
    }

    protected at d() {
        return new at(this, 14);
    }
}
