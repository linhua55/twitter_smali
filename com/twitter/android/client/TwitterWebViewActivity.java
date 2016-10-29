package com.twitter.android.client;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.config.AppConfig;
import com.twitter.library.network.an;
import com.twitter.library.util.aq;
import defpackage.bcx;

/* compiled from: Twttr */
public abstract class TwitterWebViewActivity extends TwitterFragmentActivity {
    private WebView a;
    private ProgressBar b;
    private View c;
    private boolean d;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969281);
        tVar.b(false);
        tVar.a(false);
        tVar.c(true);
        return tVar;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void b(Bundle bundle, t tVar) {
        this.a = (WebView) findViewById(bcx.webview);
        WebSettings settings = this.a.getSettings();
        settings.setSaveFormData(false);
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(false);
        String userAgentString = settings.getUserAgentString();
        settings.setUserAgentString(userAgentString + " " + an.a((Context) this).e.toString());
        this.c = findViewById(2131953237);
        this.c.setOnClickListener(new bs(this));
        this.b = (ProgressBar) findViewById(2131953140);
        this.a.setWebViewClient(new bt(this));
        if (c()) {
            this.a.setWebChromeClient(new b(this.b));
        }
    }

    public void a(String str) {
        Builder buildUpon;
        if (this.d) {
            buildUpon = Uri.parse(str).buildUpon();
            an a = an.a((Context) this);
            if (AppConfig.m().p()) {
                if (a.c()) {
                    buildUpon.appendQueryParameter("dtab_local", a.d());
                } else {
                    buildUpon.appendQueryParameter("dtab_local", BuildConfig.VERSION_NAME);
                }
            }
            this.a.loadUrl(buildUpon.toString());
            return;
        }
        buildUpon = Uri.parse("https://twitter.com/account/authenticate_web_view").buildUpon();
        buildUpon.appendQueryParameter("redirect_url", str);
        aq.a(this.a, buildUpon.toString(), ab().h());
    }

    public void onDestroy() {
        CookieManager.getInstance().removeSessionCookie();
        super.onDestroy();
    }

    public void e() {
        this.a.reload();
    }

    public boolean f() {
        return this.a.canGoBack();
    }

    public void i() {
        this.a.goBack();
    }

    protected boolean a(WebView webView, Uri uri) {
        return false;
    }

    protected boolean b(WebView webView, Uri uri) {
        webView.getContext().startActivity(new Intent("android.intent.action.VIEW", uri));
        finish();
        return true;
    }

    protected boolean c() {
        return false;
    }

    protected void b(WebView webView, String str) {
    }

    protected void a(WebView webView, String str) {
    }
}
