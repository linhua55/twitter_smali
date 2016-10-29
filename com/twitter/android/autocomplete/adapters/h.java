package com.twitter.android.autocomplete.adapters;

import android.content.Context;
import bdl;
import cgu;

/* compiled from: Twttr */
public abstract class h<T, S> extends bdl<S> {
    private T a;

    protected h(Context context) {
        super(context);
    }

    public cgu<S> a(T t, cgu<S> cgu_S) {
        this.a = t;
        return a(cgu_S);
    }

    public T c() {
        return this.a;
    }
}
