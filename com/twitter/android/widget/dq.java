package com.twitter.android.widget;

import com.twitter.app.common.base.e;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class dq<L extends dq<L>> extends e<L> {
    protected dq(int i) {
        super(i);
    }

    public L a(int i) {
        this.a.putInt("msg_res", i);
        return (dq) ObjectUtils.a(this);
    }
}
