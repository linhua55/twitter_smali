package com.twitter.library.network.livepipeline;

import bbn;
import com.twitter.model.livepipeline.e;
import rx.am;

/* compiled from: Twttr */
public abstract class ac<T extends e> extends am<T> {
    public abstract void a(T t);

    public /* synthetic */ void b_(Object obj) {
        b((e) obj);
    }

    public void bs_() {
    }

    public void a(Throwable th) {
        bbn.a(th);
    }

    public void b(T t) {
        a((e) t);
    }
}
