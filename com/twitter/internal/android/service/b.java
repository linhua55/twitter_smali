package com.twitter.internal.android.service;

import android.util.Pair;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;

/* compiled from: Twttr */
class b extends AsyncOperation<Void, Void> {
    private final c a;
    private final AsyncOperation b;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    protected b(AsyncOperation asyncOperation, Pair<c, ExecutionClass> pair) {
        super(b.class.getName());
        this.a = (c) pair.first;
        if (pair.second != null) {
            a((ExecutionClass) pair.second);
        }
        this.b = asyncOperation;
    }

    protected Void a() throws InterruptedException {
        this.a.a(this.b);
        return null;
    }

    protected Void b() {
        return null;
    }
}
