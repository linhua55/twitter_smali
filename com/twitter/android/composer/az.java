package com.twitter.android.composer;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class az implements OnClickListener {
    final /* synthetic */ ComposerDockLayout a;

    az(ComposerDockLayout composerDockLayout) {
        this.a = composerDockLayout;
    }

    public void onClick(View view) {
        if (this.a.a != null) {
            int i;
            switch (view.getId()) {
                case 2131952689:
                    i = 1;
                    break;
                case 2131952690:
                    i = 3;
                    break;
                case 2131952691:
                    i = 2;
                    break;
                default:
                    i = 0;
                    break;
            }
            this.a.a.a(i);
        }
    }
}
