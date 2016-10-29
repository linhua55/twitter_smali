package com.twitter.android;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class px implements OnGlobalLayoutListener {
    final /* synthetic */ View a;
    final /* synthetic */ SelectionFragment b;

    px(SelectionFragment selectionFragment, View view) {
        this.b = selectionFragment;
        this.a = view;
    }

    public void onGlobalLayout() {
        this.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }
}
