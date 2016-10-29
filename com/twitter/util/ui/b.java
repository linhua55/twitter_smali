package com.twitter.util.ui;

import android.view.View;

/* compiled from: Twttr */
final class b implements Runnable {
    final /* synthetic */ View a;

    b(View view) {
        this.a = view;
    }

    public void run() {
        this.a.sendAccessibilityEvent(8);
    }
}
