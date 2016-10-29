package com.twitter.android.media.stickers.data;

import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.service.ac;
import com.twitter.util.object.e;

/* compiled from: Twttr */
class d extends ac<Void, AsyncOperation<Void, Boolean>> {
    final /* synthetic */ c a;

    d(c cVar) {
        this.a = cVar;
    }

    public void a(AsyncOperation<Void, Boolean> asyncOperation) {
        if (((Boolean) e.b(asyncOperation.l().b(), Boolean.FALSE)).booleanValue()) {
            this.a.b.d();
        }
    }
}
