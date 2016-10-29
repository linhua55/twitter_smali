package com.twitter.android;

import android.widget.ListView;

/* compiled from: Twttr */
class kg implements Runnable {
    final /* synthetic */ ListView a;
    final /* synthetic */ MediaTagFragment b;

    kg(MediaTagFragment mediaTagFragment, ListView listView) {
        this.b = mediaTagFragment;
        this.a = listView;
    }

    public void run() {
        this.a.setSelection(0);
    }
}
