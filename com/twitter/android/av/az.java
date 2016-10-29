package com.twitter.android.av;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class az implements OnClickListener {
    final /* synthetic */ RevenueCardCanvasActivity a;

    az(RevenueCardCanvasActivity revenueCardCanvasActivity) {
        this.a = revenueCardCanvasActivity;
    }

    public void onClick(View view) {
        this.a.setRequestedOrientation(6);
    }
}
