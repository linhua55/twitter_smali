package com.twitter.android.vit;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class f implements OnClickListener {
    final /* synthetic */ VitFilterBarViewDelegate a;

    f(VitFilterBarViewDelegate vitFilterBarViewDelegate) {
        this.a = vitFilterBarViewDelegate;
    }

    public void onClick(View view) {
        this.a.f.showAsDropDown(this.a.d, 0, (-this.a.e.getHeight()) * 2);
    }
}
