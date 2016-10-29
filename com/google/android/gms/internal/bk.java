package com.google.android.gms.internal;

import android.webkit.ValueCallback;
import android.webkit.WebView;

class bk implements Runnable {
    ValueCallback<String> a;
    final /* synthetic */ bf b;
    final /* synthetic */ WebView c;
    final /* synthetic */ boolean d;
    final /* synthetic */ bi e;

    bk(bi biVar, bf bfVar, WebView webView, boolean z) {
        this.e = biVar;
        this.b = bfVar;
        this.c = webView;
        this.d = z;
        this.a = new bl(this);
    }

    public void run() {
        if (this.c.getSettings().getJavaScriptEnabled()) {
            try {
                this.c.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.a);
            } catch (Throwable th) {
                this.a.onReceiveValue(TtmlNode.ANONYMOUS_REGION_ID);
            }
        }
    }
}
