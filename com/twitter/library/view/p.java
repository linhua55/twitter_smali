package com.twitter.library.view;

import android.view.View;
import com.twitter.model.core.cr;
import com.twitter.ui.view.a;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class p extends a {
    final /* synthetic */ WeakReference a;
    final /* synthetic */ cr b;
    final /* synthetic */ o c;

    p(o oVar, int i, Integer num, boolean z, boolean z2, WeakReference weakReference, cr crVar) {
        this.c = oVar;
        this.a = weakReference;
        this.b = crVar;
        super(i, num, z, z2);
    }

    public void onClick(View view) {
        m mVar = (m) this.a.get();
        if (mVar != null) {
            mVar.a(this.b);
        }
    }

    public boolean b() {
        m mVar = (m) this.a.get();
        return mVar != null && mVar.b(this.b);
    }
}
