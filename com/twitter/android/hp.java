package com.twitter.android;

import android.view.View;
import cuj;

/* compiled from: Twttr */
class hp implements cuj<View> {
    final /* synthetic */ ho a;

    hp(ho hoVar) {
        this.a = hoVar;
    }

    public boolean a(View view) {
        return (view == null || view.isShown()) ? false : true;
    }
}
