package com.twitter.android;

import android.widget.ListView;

/* compiled from: Twttr */
class pz implements Runnable {
    final /* synthetic */ ListView a;
    final /* synthetic */ SelectionFragment b;

    pz(SelectionFragment selectionFragment, ListView listView) {
        this.b = selectionFragment;
        this.a = listView;
    }

    public void run() {
        this.a.setSelection(0);
    }
}
