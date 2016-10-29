package com.twitter.android.nativecards.pollcompose;

import bmx;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.library.client.az;
import com.twitter.model.drafts.d;
import com.twitter.util.aj;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.z;
import defpackage.cme;
import wb;

/* compiled from: Twttr */
public class ae extends wb {
    private af a;

    public boolean a(c cVar) {
        return this.a.cancel(true);
    }

    public j<cme> a(c cVar, z<bmx> zVar) {
        ObservablePromise observablePromise = new ObservablePromise();
        d g = cVar.g();
        if (g == null || g.k == null || g.k.d()) {
            observablePromise.set(null);
        } else {
            this.a = new af(cVar, g.k, zVar, observablePromise);
            az.a(cVar.e()).a(this.a);
        }
        return observablePromise;
    }

    public static boolean b(c cVar) {
        return cVar.g() != null;
    }

    public static boolean c(c cVar) {
        boolean z = true;
        d g = cVar.g();
        if (g == null) {
            return false;
        }
        boolean z2 = (g.k == null || g.k.d()) ? false : true;
        if (z2 != aj.b(cVar.d())) {
            z = false;
        }
        return z;
    }
}
