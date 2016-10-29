package com.twitter.model.moments.viewmodels;

import com.twitter.model.moments.ax;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class w<T extends v, B extends w<T, B>> extends p<T, B> {
    ax j;

    public B a(ax axVar) {
        this.j = axVar;
        return (w) ObjectUtils.a(this);
    }
}
