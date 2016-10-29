package com.twitter.android.composer;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class x implements OnClickListener {
    final /* synthetic */ ComposerActivity a;

    x(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void onClick(View view) {
        if (view.isClickable()) {
            this.a.g(2);
        }
    }
}
