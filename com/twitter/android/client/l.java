package com.twitter.android.client;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.client.aj;

/* compiled from: Twttr */
class l implements OnClickListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ BrowserLoadingStatus b;

    l(BrowserLoadingStatus browserLoadingStatus, Activity activity) {
        this.b = browserLoadingStatus;
        this.a = activity;
    }

    public void onClick(View view) {
        if (BrowserLoadingStatus.a(this.b) != null) {
            if (BrowserLoadingStatus.b(this.b) != null) {
                aj.a(this.a).a(this.a, BrowserLoadingStatus.a(this.b), BrowserLoadingStatus.b(this.b), BrowserLoadingStatus.c(this.b));
            } else {
                OpenUriHelper.a(this.a, BrowserLoadingStatus.a(this.b), BrowserLoadingStatus.c(this.b));
            }
        }
        BrowserLoadingStatus.d(this.b);
    }
}
