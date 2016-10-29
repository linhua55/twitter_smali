package com.twitter.library.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class u implements OnClickListener {
    final /* synthetic */ InlineDismissView a;

    private u(InlineDismissView inlineDismissView) {
        this.a = inlineDismissView;
    }

    public void onClick(View view) {
        if (this.a.e != null) {
            this.a.d(this.a.e);
        } else {
            this.a.c();
        }
    }
}
