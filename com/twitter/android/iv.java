package com.twitter.android;

import android.net.Uri;
import android.webkit.WebView;
import com.twitter.library.client.bg;
import com.twitter.library.network.aq;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import defpackage.bbu;

/* compiled from: Twttr */
class iv extends aq {
    final /* synthetic */ LoginChallengeActivity a;

    iv(LoginChallengeActivity loginChallengeActivity) {
        this.a = loginChallengeActivity;
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        bbu.a(new TwitterScribeLog(this.a.ab().g()).b("login_challenge:webview:::failure"));
    }

    protected boolean a(WebView webView, String str, Uri uri) {
        CharSequence lastPathSegment = uri.getLastPathSegment();
        CharSequence queryParameter = uri.getQueryParameter("over_limit");
        if (aj.b(lastPathSegment) && "success".equals(lastPathSegment)) {
            bg b = this.a.aa();
            this.a.a = b.a(this.a.j, this.a.g.a, this.a.g.b, this.a.b);
            this.a.k = str;
            com.twitter.library.util.aq.a(webView, str, null);
        } else if (aj.b(queryParameter) && "true".equals(queryParameter)) {
            bbu.a(new TwitterScribeLog(this.a.ab().g()).b("login_challenge::::limit_exceeded"));
            this.a.k = str;
            com.twitter.library.util.aq.a(webView, str, null);
        } else {
            this.a.k = str;
            com.twitter.library.util.aq.a(webView, str, null);
        }
        return true;
    }
}
