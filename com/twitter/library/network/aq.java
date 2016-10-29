package com.twitter.library.network;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import bdc;

/* compiled from: Twttr */
public class aq extends WebViewClient {
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri parse = Uri.parse(str);
        Context context = webView.getContext();
        String string = context.getString(bdc.twitter_authority);
        String string2 = context.getString(bdc.twitter_support_authority);
        String host = parse.getHost();
        boolean z = host != null && (host.equals(string) || host.endsWith("." + string));
        if ("twitter".equals(parse.getScheme())) {
            return a(webView, parse);
        }
        if (string2.equals(host)) {
            return b(webView, str, parse);
        }
        if (z) {
            return a(webView, str, parse);
        }
        context.startActivity(new Intent("android.intent.action.VIEW", parse));
        return true;
    }

    protected boolean b(WebView webView, String str, Uri uri) {
        webView.getContext().startActivity(new Intent("android.intent.action.VIEW", uri));
        return true;
    }

    protected boolean a(WebView webView, String str, Uri uri) {
        return false;
    }

    protected boolean a(WebView webView, Uri uri) {
        webView.getContext().startActivity(new Intent("android.intent.action.VIEW", uri));
        return true;
    }
}
