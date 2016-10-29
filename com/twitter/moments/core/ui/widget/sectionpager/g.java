package com.twitter.moments.core.ui.widget.sectionpager;

import android.view.View;

/* compiled from: Twttr */
class g implements k {
    final /* synthetic */ e a;

    g(e eVar) {
        this.a = eVar;
    }

    public int a(View view) {
        for (c cVar : this.a.a) {
            if (cVar.b() != null && cVar.b().e() == view) {
                return this.a.a.indexOf(cVar);
            }
        }
        return 0;
    }
}
