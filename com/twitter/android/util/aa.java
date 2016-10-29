package com.twitter.android.util;

import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.network.h;
import com.twitter.library.service.k;

/* compiled from: Twttr */
class aa extends AsyncOperation<Void, h> {
    final /* synthetic */ y a;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    protected aa(y yVar) {
        this.a = yVar;
        super(aa.class.getName());
        b(0);
        a(new k().a(new ab(null)));
    }

    protected h a() throws InterruptedException {
        return h.a(y.a(this.a));
    }

    protected h b() {
        return null;
    }
}
