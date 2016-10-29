package com.twitter.library.media.manager;

import android.os.Process;
import android.util.Pair;
import bbn;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.media.request.ResourceResponse;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.g;
import java.io.File;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
abstract class ai<REQ extends g, RES, RESP extends ResourceResponse<REQ, RES>> extends AsyncOperation<Void, Pair<ResourceSource, RES>> {
    private final WeakReference<t<REQ, RES, RESP>> a;
    private final o b;
    private final REQ c;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    ai(t<REQ, RES, RESP> tVar, REQ req) {
        super(ai.class.getName());
        this.c = req;
        this.a = new WeakReference(tVar);
        this.b = new o("process_blocking");
        this.b.i();
        a(ExecutionClass.d);
    }

    protected Pair<ResourceSource, RES> a() throws InterruptedException {
        Object obj;
        Throwable th;
        Object obj2;
        this.b.j();
        this.b.f();
        o oVar = new o("process_runtime");
        oVar.i();
        Process.setThreadPriority(11);
        g gVar = this.c;
        ResourceSource resourceSource = ResourceSource.a;
        t tVar = (t) this.a.get();
        if (tVar != null) {
            try {
                ResourceSource resourceSource2;
                Object g = tVar.g(gVar);
                if (g != null) {
                    try {
                        resourceSource2 = ResourceSource.b;
                        obj = g;
                    } catch (Throwable th2) {
                        th = th2;
                        obj = g;
                    }
                } else {
                    Pair d = tVar.d(gVar);
                    if (d != null) {
                        File file = (File) d.second;
                        resourceSource2 = (ResourceSource) d.first;
                        synchronized (file) {
                            g = resourceSource2 == ResourceSource.c ? tVar.a(gVar, file) : tVar.b(gVar, file);
                        }
                        if (g != null) {
                            if (resourceSource2 != ResourceSource.c) {
                                tVar.b(gVar, g);
                            }
                            obj = g;
                        }
                    }
                    obj = g;
                    resourceSource2 = resourceSource;
                }
                obj2 = resourceSource2;
            } catch (Throwable th22) {
                Throwable th3 = th22;
                obj = null;
                th = th3;
                if (!isCancelled()) {
                    bbn.a(th);
                }
                oVar.j();
                oVar.f();
                return new Pair(obj2, obj);
            }
        }
        obj = null;
        oVar.j();
        oVar.f();
        return new Pair(obj2, obj);
    }

    protected Pair<ResourceSource, RES> b() {
        return null;
    }
}
