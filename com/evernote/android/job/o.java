package com.evernote.android.job;

import android.support.v4.util.LruCache;

/* compiled from: Twttr */
class o extends LruCache<Integer, JobRequest> {
    final /* synthetic */ n a;

    protected /* synthetic */ Object create(Object obj) {
        return a((Integer) obj);
    }

    public o(n nVar) {
        this.a = nVar;
        super(30);
    }

    protected JobRequest a(Integer num) {
        return this.a.b(num.intValue());
    }
}
