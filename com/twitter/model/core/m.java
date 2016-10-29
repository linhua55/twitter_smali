package com.twitter.model.core;

import com.twitter.util.collection.CollectionUtils;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
public class m<T extends e> extends l<T, j<T>, m<T>> {
    public /* bridge */ /* synthetic */ boolean d() {
        return super.d();
    }

    public m(int i) {
        super(i);
    }

    public m(j<T> jVar) {
        super((j) jVar);
    }

    protected j<T> a(List<T> list) {
        return !CollectionUtils.b((Collection) list) ? new j(list) : j.a();
    }
}
