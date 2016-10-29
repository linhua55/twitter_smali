package com.twitter.android.client;

import android.animation.ObjectAnimator;
import android.view.animation.DecelerateInterpolator;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;

/* compiled from: Twttr */
public class b extends WebChromeClient {
    private final ProgressBar a;

    public b(ProgressBar progressBar) {
        this.a = progressBar;
    }

    public final void onProgressChanged(WebView webView, int i) {
        int progress = this.a.getProgress() % 100;
        ObjectAnimator duration = ObjectAnimator.ofInt(this.a, NotificationCompatApi21.CATEGORY_PROGRESS, new int[]{progress, i}).setDuration(250);
        duration.setInterpolator(new DecelerateInterpolator());
        duration.start();
    }
}
