package com.twitter.android.revenue.card;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout.LayoutParams;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
class am implements OnGlobalLayoutListener {
    final /* synthetic */ ak a;

    am(ak akVar) {
        this.a = akVar;
    }

    public void onGlobalLayout() {
        r.a(this.a.q, this);
        int height = this.a.q.getHeight();
        this.a.a.setLayoutParams(new LayoutParams(height, height));
    }
}
