package com.twitter.database.internal;

import com.twitter.database.model.r;

/* compiled from: Twttr */
public abstract class n<S> implements r<S> {
    protected final f a;

    protected abstract <T extends o> T a();

    protected n(f fVar) {
        this.a = fVar;
    }

    public int a(String str, String[] strArr) {
        return a().a(str, strArr);
    }
}
