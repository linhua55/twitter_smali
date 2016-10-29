package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class w implements OnClickListener {
    final /* synthetic */ ComposerSelectionFragment a;

    w(ComposerSelectionFragment composerSelectionFragment) {
        this.a = composerSelectionFragment;
    }

    public void onClick(View view) {
        if (this.a.a != null) {
            this.a.a.a();
        }
    }
}
