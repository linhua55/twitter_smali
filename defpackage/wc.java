package defpackage;

import android.content.Context;
import bmx;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.library.api.upload.t;
import com.twitter.library.client.az;
import com.twitter.library.service.aa;
import com.twitter.model.drafts.d;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.r;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.object.e;
import com.twitter.util.z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;

/* compiled from: Twttr */
/* renamed from: wc */
public class wc extends wb {
    Map<Long, aa> a;
    private final List<Future<aa>> b;
    private final Object c;

    public wc() {
        this.b = new ArrayList();
        this.c = new Object();
    }

    public boolean a(c cVar) {
        boolean z = false;
        synchronized (this.c) {
            for (Future cancel : this.b) {
                boolean z2;
                if (cancel.cancel(true)) {
                    z2 = z;
                } else {
                    z2 = true;
                }
                z = z2;
            }
        }
        return z;
    }

    public j<Map<Long, aa>> a(c cVar, z<bmx> zVar) {
        ObservablePromise observablePromise = new ObservablePromise();
        List<com.twitter.library.api.upload.aa> o = cVar.o();
        if (wc.a((List) o)) {
            Set hashSet = new HashSet((Collection) e.a(((d) e.a(cVar.g())).b()));
            this.a = new HashMap();
            Context e = cVar.e();
            synchronized (this.c) {
                for (com.twitter.library.api.upload.aa aaVar : o) {
                    if (aaVar.f()) {
                        long c = aaVar.c();
                        ObservablePromise observablePromise2 = new ObservablePromise();
                        t tVar = new t(e, "set_metadata", cVar.l(), aaVar, observablePromise2);
                        az.a(e).a(tVar);
                        observablePromise2.b(new wd(this, c, hashSet, observablePromise));
                        observablePromise2.c(new we(this, observablePromise, cVar));
                        this.b.add(tVar);
                    }
                }
            }
        } else {
            observablePromise.set(r.e());
        }
        return observablePromise;
    }

    private static boolean a(List<com.twitter.library.api.upload.aa> list) {
        for (com.twitter.library.api.upload.aa f : list) {
            if (f.f()) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(c cVar) {
        d g = cVar.g();
        if (g == null) {
            return false;
        }
        if (g.d.size() == 0 || !CollectionUtils.b(g.b())) {
            return true;
        }
        return false;
    }

    public static boolean c(c cVar) {
        return true;
    }
}
