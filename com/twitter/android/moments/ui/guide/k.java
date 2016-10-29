package com.twitter.android.moments.ui.guide;

import android.widget.ListAdapter;
import com.twitter.util.z;
import java.util.List;

/* compiled from: Twttr */
class k implements z<com.twitter.android.moments.viewmodels.k> {
    final /* synthetic */ j a;

    k(j jVar) {
        this.a = jVar;
    }

    public void a(com.twitter.android.moments.viewmodels.k kVar) {
        this.a.c.f();
        this.a.d.a(kVar);
        this.a.g.putAll(kVar.a);
        this.a.h.putAll(kVar.b);
        List a = this.a.r.a(kVar.c);
        ListAdapter adapter = this.a.b.getAdapter();
        if (!a.isEmpty()) {
            this.a.a(a);
            this.a.c.c();
        } else if ((adapter == null || adapter.getCount() == 0) && this.a.o.e()) {
            this.a.c.a();
        }
    }
}
