package com.twitter.android.media.imageeditor;

import android.content.Context;
import com.twitter.media.filters.Filters;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class ad extends ae {
    final WeakReference<o> a;

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Filters) obj);
    }

    ad(o oVar, Context context) {
        super(null);
        this.a = new WeakReference(oVar);
    }

    protected void a(Filters filters) {
        o oVar = (o) this.a.get();
        if (oVar == null && filters != null) {
            filters.b();
            filters = null;
        }
        if (oVar != null) {
            oVar.a(filters);
        }
    }
}
