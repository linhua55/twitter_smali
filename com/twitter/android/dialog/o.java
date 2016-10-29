package com.twitter.android.dialog;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

/* compiled from: Twttr */
final class o implements Runnable {
    final /* synthetic */ View a;
    final /* synthetic */ Rect b;
    final /* synthetic */ View c;

    o(View view, Rect rect, View view2) {
        this.a = view;
        this.b = rect;
        this.c = view2;
    }

    public void run() {
        this.a.setTouchDelegate(new TouchDelegate(this.b, this.c));
    }
}
