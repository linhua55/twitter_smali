package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import bfr;
import bfs;
import bmx;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.library.client.az;
import com.twitter.library.service.aa;
import com.twitter.model.av.n;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.r;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;

/* compiled from: Twttr */
/* renamed from: wf */
public class wf extends wb {
    @VisibleForTesting
    List<Future<aa>> a;
    private Map<Long, aa> b;
    private final Object c;

    public wf() {
        this.c = new Object();
    }

    public boolean a(c cVar) {
        synchronized (this.c) {
            boolean z = true;
            for (Future cancel : this.a) {
                boolean z2;
                if (cancel.cancel(true)) {
                    z2 = false;
                } else {
                    z2 = z;
                }
                z = z2;
            }
        }
        if (z) {
            return false;
        }
        return true;
    }

    public j<Map<Long, aa>> a(c cVar, z<bmx> zVar) {
        Context e = cVar.e();
        return a(cVar, zVar, az.a(e), new bfs(e, cVar.l()));
    }

    @VisibleForTesting
    public j<Map<Long, aa>> a(c cVar, z<bmx> zVar, az azVar, bfs bfs) {
        List<com.twitter.util.collection.z> d = wf.d(cVar);
        if (d.isEmpty()) {
            return ObservablePromise.a(r.e());
        }
        List a = CollectionUtils.a(d, new wg(this));
        j<Map<Long, aa>> observablePromise = new ObservablePromise();
        synchronized (this.c) {
            this.a = new ArrayList();
            this.b = new HashMap();
            for (com.twitter.util.collection.z zVar2 : d) {
                long longValue = ((Long) zVar2.a()).longValue();
                bfr a2 = bfs.a(longValue, (n) zVar2.b());
                azVar.a(a2, new wh(this, longValue, a, observablePromise));
                this.a.add(a2);
            }
        }
        return observablePromise;
    }

    private static List<com.twitter.util.collection.z<Long, n>> d(c cVar) {
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        for (com.twitter.library.api.upload.aa aaVar : cVar.o()) {
            long c = aaVar.c();
            n g = aaVar.g();
            if (g != null) {
                d.c(com.twitter.util.collection.z.a(Long.valueOf(c), g));
            }
        }
        return (List) d.q();
    }

    public static boolean b(c cVar) {
        return cVar.i() != null;
    }

    public static boolean c(c cVar) {
        return true;
    }
}
