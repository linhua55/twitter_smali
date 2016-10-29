package com.twitter.android.browser;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* compiled from: Twttr */
class c extends WebViewClient {
    final /* synthetic */ a a;

    c(a aVar) {
        this.a = aVar;
    }

    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (!a.b(this.a)) {
            a.c(this.a).incrementAndGet();
        }
        return this.a.a(str);
    }

    public void onPageFinished(WebView webView, String str) {
        this.a.b(str);
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.a.a(webView, str);
    }

    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        this.a.e();
    }
}
