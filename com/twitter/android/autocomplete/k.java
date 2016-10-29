package com.twitter.android.autocomplete;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import cgu;
import com.twitter.util.h;
import com.twitter.util.object.e;
import cvi;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class k<T, S> extends Handler {
    private final WeakReference<n<T, S>> a;

    k(n<T, S> nVar) {
        super(Looper.getMainLooper());
        this.a = new WeakReference(nVar);
    }

    public void handleMessage(Message message) {
        h.a();
        if (message.what == -791613427) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            cgu cgu = (cgu) e.b(pair.second, cgu.f());
            n nVar = (n) this.a.get();
            if (nVar == null || hasMessages(-559038737)) {
                cvi.a(cgu);
            } else {
                nVar.b(obj, cgu);
            }
        }
    }
}
