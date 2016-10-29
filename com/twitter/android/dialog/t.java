package com.twitter.android.dialog;

import com.twitter.model.timeline.s;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public abstract class t<L extends t<L>> extends q<L> {
    protected t(int i) {
        super(i);
    }

    public L a(s sVar) {
        this.a.putByteArray("prompt", m.a(sVar, s.a));
        return (t) ObjectUtils.a(this);
    }

    public L b(s sVar) {
        a(sVar);
        a(sVar.k);
        c(sVar.f);
        a(sVar.e);
        return (t) ObjectUtils.a(this);
    }
}
