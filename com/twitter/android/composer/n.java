package com.twitter.android.composer;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class n implements OnClickListener {
    final /* synthetic */ ComposerActivity a;

    n(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void onClick(View view) {
        this.a.am();
    }
}
