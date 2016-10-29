package com.twitter.model.dms;

import cgl;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
abstract class m<E extends l, B extends m<E, B>> extends d<E, B> {
    private cgl b;

    m() {
    }

    public boolean bo_() {
        return this.b != null;
    }

    protected B a(cgl cgl) {
        this.b = cgl;
        return (m) ObjectUtils.a(this);
    }
}
