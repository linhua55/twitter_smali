package com.twitter.android.browser;

import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.util.ao;

/* compiled from: Twttr */
class b extends com.twitter.android.client.b {
    final /* synthetic */ a a;

    b(a aVar, ProgressBar progressBar) {
        this.a = aVar;
        super(progressBar);
    }

    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        if (!ao.b(str)) {
            a.a(this.a).a(str);
            a.a(this.a).b(this.a.b);
        }
    }
}
