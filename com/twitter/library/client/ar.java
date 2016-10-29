package com.twitter.library.client;

import android.os.Bundle;
import com.twitter.app.common.util.s;
import com.twitter.library.service.x;
import com.twitter.util.object.ObjectUtils;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class ar implements bb {
    private WeakReference<s> a;
    private WeakReference<bb> b;

    ar(s sVar, bb bbVar) {
        this.a = ObjectUtils.a();
        this.b = ObjectUtils.a();
        a(sVar, bbVar);
    }

    public void a(s sVar, bb bbVar) {
        this.a = new WeakReference(sVar);
        this.b = new WeakReference(bbVar);
    }

    public void a(int i, x xVar) {
        bb a = a();
        if (a != null) {
            a.a(i, xVar);
        }
    }

    public void a(int i, Bundle bundle, x xVar) {
        bb a = a();
        if (a != null) {
            a.a(i, bundle, xVar);
        }
    }

    public void b(int i, x xVar) {
        bb a = a();
        if (a != null) {
            a.b(i, xVar);
        }
    }

    private bb a() {
        s sVar = (s) this.a.get();
        return (sVar == null || !sVar.l_()) ? null : (bb) this.b.get();
    }
}
