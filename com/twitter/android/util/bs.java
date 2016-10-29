package com.twitter.android.util;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.util.collection.z;
import rx.ak;
import rx.al;

/* compiled from: Twttr */
final class bs implements ak<z<R, aa>> {
    final /* synthetic */ x a;

    bs(x xVar) {
        this.a = xVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((al) obj);
    }

    public void a(al<? super z<R, aa>> alVar) {
        try {
            aa P = this.a.P();
            if (!alVar.b()) {
                alVar.a(z.a(this.a, P));
            }
        } catch (Throwable e) {
            alVar.a(e);
        }
    }
}
