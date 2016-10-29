package defpackage;

import android.content.Context;
import bmx;
import com.twitter.android.client.tweetuploadmanager.TweetUploadException;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.service.aa;
import com.twitter.model.drafts.d;
import com.twitter.util.al;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.object.e;
import com.twitter.util.z;
import java.util.LinkedHashMap;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: ws */
public class ws extends wb {
    private wt a;

    public boolean a(c cVar) {
        return this.a.cancel(true);
    }

    public j<aa> a(c cVar, z<bmx> zVar) {
        Context e = cVar.e();
        Session l = cVar.l();
        d dVar = (d) e.a(cVar.g());
        Object<com.twitter.library.api.upload.aa> o = cVar.o();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!CollectionUtils.b(o)) {
            for (com.twitter.library.api.upload.aa aaVar : o) {
                if (a(aaVar)) {
                    linkedHashMap.put(Long.valueOf(aaVar.c()), aaVar.e());
                }
            }
        }
        ObservablePromise observablePromise = new ObservablePromise();
        this.a = new wt(e, l, dVar, linkedHashMap, cVar, zVar, observablePromise);
        az.a(e).a(this.a);
        return observablePromise;
    }

    private boolean a(com.twitter.library.api.upload.aa aaVar) {
        return aaVar.b().d == 0;
    }

    public static boolean b(c cVar) throws TweetUploadException {
        if (cVar.g() == null) {
            return false;
        }
        List<com.twitter.library.api.upload.aa> o = cVar.o();
        long b = al.b();
        for (com.twitter.library.api.upload.aa a : o) {
            if (!a.a(b)) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(c cVar) throws TweetUploadException {
        return cVar.i() != null;
    }
}
