package com.twitter.android.composer;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class f implements OnGlobalLayoutListener {
    final /* synthetic */ View a;
    final /* synthetic */ ComposerActivity b;

    f(ComposerActivity composerActivity, View view) {
        this.b = composerActivity;
        this.a = view;
    }

    public void onGlobalLayout() {
        this.b.b(this.a);
    }
}
