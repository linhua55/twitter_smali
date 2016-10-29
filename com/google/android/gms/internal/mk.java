package com.google.android.gms.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;

class mk extends WebViewClient {
    final /* synthetic */ WebView a;
    final /* synthetic */ mj b;

    mk(mj mjVar, WebView webView) {
        this.b = mjVar;
        this.a = webView;
    }

    public void onPageFinished(WebView webView, String str) {
        qd.a("Loading assets have finished");
        this.b.c.a.remove(this.a);
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        qd.d("Loading assets have failed.");
        this.b.c.a.remove(this.a);
    }
}
