package com.twitter.android.client;

import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v7.recyclerview.BuildConfig;
import android.webkit.WebView;
import com.twitter.library.network.aq;
import com.twitter.util.aj;
import com.twitter.util.ao;

/* compiled from: Twttr */
class bt extends aq {
    final /* synthetic */ TwitterWebViewActivity a;

    bt(TwitterWebViewActivity twitterWebViewActivity) {
        this.a = twitterWebViewActivity;
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        this.a.a.loadDataWithBaseURL(null, BuildConfig.VERSION_NAME, "text/html", "UTF-8", str2);
        this.a.c.setVisibility(0);
    }

    protected boolean a(WebView webView, String str, Uri uri) {
        if (aj.a(uri.getPath()) || uri.getPath().equalsIgnoreCase("/")) {
            this.a.finish();
            return true;
        }
        boolean a = this.a.a(webView, uri);
        if (a || this.a.d) {
            return a;
        }
        if ("https://twitter.com/account/authenticate_web_view".equalsIgnoreCase(ao.a(uri).toString())) {
            com.twitter.library.util.aq.a(this.a.a, uri.toString(), this.a.ab().h());
            return true;
        }
        this.a.d = true;
        this.a.a(str);
        return true;
    }

    protected boolean a(WebView webView, Uri uri) {
        return this.a.b(webView, uri);
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (!"about:blank".equalsIgnoreCase(str)) {
            this.a.c.setVisibility(8);
        }
        if (this.a.c()) {
            this.a.b.setVisibility(0);
        }
        this.a.b(webView, str);
    }

    public void onPageFinished(WebView webView, String str) {
        if (this.a.c()) {
            this.a.b.setVisibility(8);
        }
        this.a.a(webView, str);
    }
}
