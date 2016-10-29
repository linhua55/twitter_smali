package com.twitter.library.network.livepipeline;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public abstract class ae<T extends ad, B extends ae> extends f<T> {
    public Context a;
    public Session b;

    public B a(Context context) {
        this.a = context;
        return (ae) ObjectUtils.a(this);
    }

    public B a(Session session) {
        this.b = session;
        return (ae) ObjectUtils.a(this);
    }
}
