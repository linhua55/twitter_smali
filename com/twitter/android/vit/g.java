package com.twitter.android.vit;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.vit.VitFilterBarViewDelegate.VitFilter;

/* compiled from: Twttr */
class g implements OnClickListener {
    final /* synthetic */ VitFilter a;
    final /* synthetic */ OnClickListener b;
    final /* synthetic */ VitFilterBarViewDelegate c;

    g(VitFilterBarViewDelegate vitFilterBarViewDelegate, VitFilter vitFilter, OnClickListener onClickListener) {
        this.c = vitFilterBarViewDelegate;
        this.a = vitFilter;
        this.b = onClickListener;
    }

    public void onClick(View view) {
        this.c.a(this.a);
        this.b.onClick(view);
    }
}
