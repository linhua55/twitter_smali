package com.twitter.android.moments.ui.guide;

import android.widget.AbsListView.OnScrollListener;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.n;

/* compiled from: Twttr */
class y extends n {
    final /* synthetic */ OnScrollListener a;
    final /* synthetic */ x b;

    y(x xVar, OnScrollListener onScrollListener) {
        this.b = xVar;
        this.a = onScrollListener;
    }

    public void a(k kVar, int i) {
        this.a.onScrollStateChanged(kVar.a, i);
    }
}
