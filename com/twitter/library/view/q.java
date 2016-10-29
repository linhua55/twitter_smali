package com.twitter.library.view;

import android.view.View;
import com.twitter.model.core.e;
import com.twitter.ui.view.a;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class q extends a {
    final /* synthetic */ WeakReference a;
    final /* synthetic */ e b;
    final /* synthetic */ o c;

    q(o oVar, int i, Integer num, boolean z, boolean z2, WeakReference weakReference, e eVar) {
        this.c = oVar;
        this.a = weakReference;
        this.b = eVar;
        super(i, num, z, z2);
    }

    public void onClick(View view) {
        m mVar = (m) this.a.get();
        if (mVar != null) {
            o.a(mVar, this.b);
        }
    }
}
