package com.twitter.android.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.twitter.config.d;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.az;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class y extends WebViewClient {
    private final Context a;
    private final az b;
    private String c;

    public y(Context context) {
        this.a = context.getApplicationContext();
        this.b = az.a(this.a);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri parse = Uri.parse(str);
        String queryParameter = parse.getQueryParameter("result");
        if (!"twitter.com".equals(parse.getAuthority()) || queryParameter == null) {
            return false;
        }
        this.c = queryParameter;
        webView.stopLoading();
        return true;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void a(WebView webView, Bundle bundle) {
        CharSequence b = d.b("signup_js_instrumentation_location_android");
        if (aj.b(b)) {
            webView.getSettings().setJavaScriptEnabled(true);
            webView.getSettings().setAllowFileAccess(false);
            webView.setWebViewClient(this);
            if (bundle != null) {
                this.c = bundle.getString("result");
            }
            if (this.c == null) {
                AsyncOperation aaVar = new aa(this);
                aaVar.a(new ac(this, webView, b));
                this.b.a(aaVar);
            }
        }
    }

    public void a(Bundle bundle) {
        bundle.putString("result", this.c);
    }

    public String a() {
        return this.c;
    }
}
