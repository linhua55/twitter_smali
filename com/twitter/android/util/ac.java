package com.twitter.android.util;

import android.webkit.WebView;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.network.h;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class ac extends com.twitter.library.service.ac<Void, AsyncOperation<Void, h>> {
    final /* synthetic */ y a;
    private final WeakReference<WebView> b;
    private final String c;

    ac(y yVar, WebView webView, String str) {
        this.a = yVar;
        this.b = new WeakReference(webView);
        this.c = str;
    }

    public void a(AsyncOperation<Void, h> asyncOperation) {
        h hVar = (h) asyncOperation.l().b();
        WebView webView = (WebView) this.b.get();
        if (hVar != null && webView != null) {
            String c = hVar.c();
            webView.loadUrl(String.format(this.c, new Object[]{c}));
        }
    }
}
