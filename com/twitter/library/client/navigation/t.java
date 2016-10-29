package com.twitter.library.client.navigation;

import android.support.v4.widget.DrawerLayout.SimpleDrawerListener;
import android.view.View;

/* compiled from: Twttr */
class t extends SimpleDrawerListener {
    final /* synthetic */ r a;

    private t(r rVar) {
        this.a = rVar;
    }

    public void onDrawerClosed(View view) {
        if (r.e(this.a) != null) {
            r.e(this.a).a();
        }
    }
}
