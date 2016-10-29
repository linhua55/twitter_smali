package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.client.bg;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.account.LoginVerificationRequiredResponse;
import defpackage.bbu;
import defpackage.bcx;
import defpackage.bef;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class LoginChallengeActivity extends TwitterFragmentActivity {
    String a;
    private final ix b;
    private int c;
    private float d;
    private int e;
    private Handler f;
    private LoginVerificationRequiredResponse g;
    private String h;
    private String i;
    private Session j;
    private String k;
    private iw l;

    public LoginChallengeActivity() {
        this.b = new ix(this);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969540);
        tVar.a(false);
        tVar.c(false);
        tVar.b(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        e();
        if (bundle == null) {
            bbu.a(new TwitterScribeLog(ab().g()).b("login_challenge::::impression"));
            Intent intent = getIntent();
            this.g = (LoginVerificationRequiredResponse) intent.getParcelableExtra("login_challenge_required_response");
            this.h = intent.getStringExtra(UsernameError.USERNAME_ERROR_FIELD);
            this.i = intent.getStringExtra("session_id");
        } else {
            this.k = bundle.getString("url");
            this.a = bundle.getString("reqId");
            aa().a(this.a, this.b);
            this.i = bundle.getString("session_id");
            this.g = (LoginVerificationRequiredResponse) bundle.getParcelable("login_challenge_required_response");
            this.h = bundle.getString(UsernameError.USERNAME_ERROR_FIELD);
        }
        if (this.g == null) {
            finish();
        }
        this.f = new Handler();
        WebView webView = (WebView) findViewById(bcx.webview);
        WebSettings settings = webView.getSettings();
        settings.setSaveFormData(false);
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(false);
        webView.setWebViewClient(new iv(this));
        if (this.k == null) {
            this.k = this.g.d;
        }
        this.k = bef.a(this, this.k);
        this.k = yi.a(getResources().getConfiguration().locale, this.k);
        webView.loadUrl(this.k);
    }

    public void onPause() {
        super.onPause();
        if (this.l != null) {
            this.f.removeCallbacks(this.l);
            this.l = null;
        }
    }

    public void onResume() {
        super.onResume();
        bg aa = aa();
        this.j = aa.c(this.i);
        if (this.j == null) {
            this.j = aa.a(this.h);
            this.i = this.j.c();
        }
        this.e = this.c;
        this.l = new iw();
        this.f.postDelayed(this.l, (long) this.e);
    }

    protected void onDestroy() {
        super.onDestroy();
        aa().e(this.a);
        CookieManager.getInstance().removeSessionCookie();
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putString("url", this.k);
        bundle.putString("reqId", this.a);
        bundle.putString("session_id", this.i);
        bundle.putParcelable("login_challenge_required_response", this.g);
        bundle.putSerializable(UsernameError.USERNAME_ERROR_FIELD, this.h);
        super.onSaveInstanceState(bundle);
    }

    public void onBackPressed() {
        c();
        super.onBackPressed();
    }

    public boolean a(ac acVar) {
        if (acVar.a() == k.home) {
            c();
        }
        return super.a(acVar);
    }

    private void c() {
        bbu.a(new TwitterScribeLog(ab().g()).b("login_challenge::::cancel"));
        if (this.j != null) {
            this.j.a(LoginStatus.LOGGED_OUT);
        }
    }

    private void e() {
        this.c = d.a("login_challenge_polling_interval", 0);
        if (this.c == 0) {
            this.c = 2;
        }
        this.c = (int) (((long) this.c) * 1000);
        this.d = d.a("login_challenge_polling_backoff", 0.0f);
        if (this.d == 0.0f) {
            this.d = 1.2f;
        }
    }
}
