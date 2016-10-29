package com.twitter.android;

import com.twitter.android.dialog.q;
import com.twitter.model.core.as;
import com.twitter.util.ab;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class qf<L extends qf<L>> extends q<L> {
    protected qf(int i) {
        super(i);
    }

    public L a(as asVar) {
        ab.a(this.a, "quoted_tweet", asVar, as.a);
        return (qf) ObjectUtils.a(this);
    }
}
