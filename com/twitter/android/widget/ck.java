package com.twitter.android.widget;

import android.view.TouchDelegate;
import android.view.View;

/* compiled from: Twttr */
class ck implements Runnable {
    final /* synthetic */ View a;
    final /* synthetic */ MediaStoreItemView b;

    ck(MediaStoreItemView mediaStoreItemView, View view) {
        this.b = mediaStoreItemView;
        this.a = view;
    }

    public void run() {
        this.a.setTouchDelegate(new TouchDelegate(this.b.a(this.a), this.b.n));
    }
}
