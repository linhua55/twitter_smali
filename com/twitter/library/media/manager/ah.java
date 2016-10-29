package com.twitter.library.media.manager;

import bbn;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.util.collection.m;
import cus;
import java.lang.ref.WeakReference;
import java.util.Collection;

/* compiled from: Twttr */
class ah extends AsyncOperation<Void, Void> {
    private final WeakReference<t> a;
    private final Collection<String> b;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    ah(t tVar, Collection<String> collection) {
        super(ah.class.getName());
        a(ExecutionClass.c);
        this.a = new WeakReference(tVar);
        this.b = collection;
    }

    protected Void a() throws InterruptedException {
        t tVar = (t) this.a.get();
        if (tVar != null) {
            try {
                m mVar = tVar.b;
                cus cus = tVar.d;
                for (String str : this.b) {
                    if (str != null) {
                        if (mVar != null) {
                            mVar.b(str);
                        }
                        if (cus != null) {
                            cus.d(str);
                        }
                    }
                }
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
        return null;
    }

    protected Void b() {
        return null;
    }
}
