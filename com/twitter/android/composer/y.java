package com.twitter.android.composer;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class y implements OnClickListener {
    final /* synthetic */ ComposerActivity a;

    y(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void onClick(View view) {
        if (view.isClickable() && view.isEnabled()) {
            this.a.ax();
            this.a.h.a(this.a);
        }
    }
}
