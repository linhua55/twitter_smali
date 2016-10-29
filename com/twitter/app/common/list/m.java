package com.twitter.app.common.list;

import android.support.v4.view.ViewCompat;
import android.widget.ListView;

/* compiled from: Twttr */
class m implements Runnable {
    final /* synthetic */ ListView a;
    final /* synthetic */ k b;

    m(k kVar, ListView listView) {
        this.b = kVar;
        this.a = listView;
    }

    public void run() {
        if (ViewCompat.isAttachedToWindow(this.a)) {
            this.a.focusableViewAvailable(this.a);
        }
    }
}
