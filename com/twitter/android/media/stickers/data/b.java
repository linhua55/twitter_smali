package com.twitter.android.media.stickers.data;

import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.service.ac;
import com.twitter.util.collection.CollectionUtils;
import defpackage.cka;

/* compiled from: Twttr */
class b extends ac<Void, AsyncOperation<Void, cka>> {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void a(AsyncOperation<Void, cka> asyncOperation) {
        Object obj = (cka) asyncOperation.l().b();
        if (obj == null || CollectionUtils.b(obj.a)) {
            this.a.f();
        } else {
            this.a.a(obj);
        }
    }
}
