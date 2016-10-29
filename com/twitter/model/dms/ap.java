package com.twitter.model.dms;

import com.twitter.util.object.ObjectUtils;
import java.util.List;

/* compiled from: Twttr */
public abstract class ap<E extends an, B extends ap<E, B>> extends b<E, ap<E, B>> {
    private List<Long> a;

    public B a(List<Long> list) {
        this.a = list;
        return (ap) ObjectUtils.a(this);
    }
}
