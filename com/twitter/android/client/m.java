package com.twitter.android.client;

import android.support.design.widget.Snackbar;
import android.support.design.widget.Snackbar.Callback;

/* compiled from: Twttr */
class m extends Callback {
    final /* synthetic */ BrowserLoadingStatus a;

    m(BrowserLoadingStatus browserLoadingStatus) {
        this.a = browserLoadingStatus;
    }

    public void onDismissed(Snackbar snackbar, int i) {
        if (i == 0) {
            BrowserLoadingStatus.d(this.a);
        }
        super.onDismissed(snackbar, i);
    }
}
