package com.twitter.android;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.twitter.android.util.bz;
import com.twitter.config.d;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.model.account.OAuthToken;
import com.twitter.util.aj;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.w;
import defpackage.bbu;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;

/* compiled from: Twttr */
class yg extends WebViewClient {
    final /* synthetic */ ProgressDialog a;
    final /* synthetic */ Resources b;
    final /* synthetic */ Uri c;
    final /* synthetic */ OAuthToken d;
    final /* synthetic */ HashMap e;
    final /* synthetic */ WebViewActivity f;

    yg(WebViewActivity webViewActivity, ProgressDialog progressDialog, Resources resources, Uri uri, OAuthToken oAuthToken, HashMap hashMap) {
        this.f = webViewActivity;
        this.a = progressDialog;
        this.b = resources;
        this.c = uri;
        this.d = oAuthToken;
        this.e = hashMap;
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        bbu.a(new TwitterScribeLog(this.f.aa().c().g()).b("quick_read::::redirect"));
        if (TelephonyUtil.i().h()) {
            this.f.openBrowser(null);
            this.f.finish();
            return;
        }
        webView.loadData("<h2>" + this.f.getString(2131363445) + "</h2><p>" + this.f.getString(2131363446) + "</p><ul><li>" + this.f.getString(2131363444) + "</li></ul>", "text/html", "UTF-8");
    }

    public void onLoadResource(WebView webView, String str) {
        String url = webView.getUrl();
        String b = d.b("readability_v2_proxy_uri");
        if (url != null && url.startsWith(b) && !str.startsWith(b) && this.a != null && this.a.isShowing()) {
            this.a.dismiss();
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        boolean a = bz.a(str);
        boolean equals = this.b.getString(2131364412).equals(this.c.getAuthority());
        Uri parse = Uri.parse(str);
        boolean a2 = a(parse);
        if (a || equals || a2) {
            if (a2) {
                parse = b(parse);
            }
            a(parse, a);
            return false;
        }
        this.f.startActivity(new Intent("android.intent.action.VIEW", parse));
        if (str != null) {
            String str2 = null;
            try {
                str2 = new URL(str).toURI().getHost();
            } catch (MalformedURLException e) {
            } catch (URISyntaxException e2) {
            }
            if (str2 == null || "t.co".equalsIgnoreCase(str2)) {
                bbu.a(new TwitterScribeLog(this.f.aa().c().g()).b("quick_read::::redirect"));
            }
        }
        this.f.finish();
        return true;
    }

    public void onPageFinished(WebView webView, String str) {
        if (this.a != null && this.a.isShowing()) {
            this.a.dismiss();
        }
    }

    private boolean a(Uri uri) {
        List pathSegments = uri.getPathSegments();
        if (this.b.getString(2131364417).equals(uri.getAuthority()) && pathSegments.size() > 0 && "articles".equals(pathSegments.get(0))) {
            return true;
        }
        return false;
    }

    private void a(Uri uri, boolean z) {
        aq.a(this.f.a, uri.toString(), this.f.a(this.d, uri, z, this.e));
    }

    private Uri b(Uri uri) {
        CharSequence b = w.b(this.f.getResources().getConfiguration().locale);
        Builder buildUpon = uri.buildUpon();
        if (aj.b(b)) {
            buildUpon.appendQueryParameter("lang", b);
        }
        return buildUpon.build();
    }
}
