package com.twitter.library.provider;

import com.twitter.library.database.dm.ShareHistoryTable.Type;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public abstract class l<S extends k, B extends l<S, B>> extends f<S> {
    private Type a;

    public l<S, B> a(Type type) {
        this.a = type;
        return this;
    }

    protected void X_() {
        super.X_();
        if (this.a == null) {
            this.a = Type.NONE;
        }
    }
}
