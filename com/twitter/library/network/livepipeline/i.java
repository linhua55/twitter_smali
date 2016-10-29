package com.twitter.library.network.livepipeline;

import android.os.Bundle;
import cfb;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.service.aa;
import com.twitter.library.service.ac;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
class i extends ac<Bundle, AsyncOperation<Bundle, aa>> {
    final /* synthetic */ b a;

    i(b bVar) {
        this.a = bVar;
    }

    public void a(AsyncOperation<Bundle, aa> asyncOperation) {
        if (this.a.a((AsyncOperation) asyncOperation)) {
            Set hashSet = new HashSet(this.a.f);
            cfb.b("LivePipeline", "Reconnecting at " + new Date(this.a.p.a()) + " with the following topics: " + hashSet);
            this.a.a(hashSet);
        }
    }
}
