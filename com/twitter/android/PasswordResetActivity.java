package com.twitter.android;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;
import com.twitter.util.aj;
import defpackage.bcx;
import defpackage.bef;
import java.util.Locale;

/* compiled from: Twttr */
public class PasswordResetActivity extends TwitterFragmentActivity {
    private WebView a;
    private boolean b;

    public PasswordResetActivity() {
        this.b = false;
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969540);
        tVar.a(false);
        tVar.c(false);
        return tVar;
    }

    static String a(String str, String str2, Locale locale, Context context) {
        Builder buildUpon;
        if (str == null) {
            buildUpon = Uri.parse("https://twitter.com/account/begin_password_reset").buildUpon();
        } else {
            buildUpon = Uri.parse(str).buildUpon();
        }
        if (aj.b((CharSequence) str2)) {
            buildUpon.appendQueryParameter("account_identifier", str2);
        }
        return yi.a(locale, bef.a(context, buildUpon.toString()));
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        this.a = (WebView) findViewById(bcx.webview);
        WebSettings settings = this.a.getSettings();
        settings.setSaveFormData(false);
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(false);
        this.a.setWebViewClient(new lc(this));
        if (bundle == null) {
            CookieManager.getInstance().removeSessionCookie();
            String stringExtra = getIntent().getStringExtra("init_url");
            String stringExtra2 = getIntent().getStringExtra("account_id");
            Locale locale = getResources().getConfiguration().locale;
            this.b = stringExtra != null;
            this.a.loadUrl(a(stringExtra, stringExtra2, locale, this));
            return;
        }
        this.b = bundle.getBoolean("launched_from_url");
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.a.saveState(bundle);
        bundle.putBoolean("launched_from_url", this.b);
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.a.restoreState(bundle);
    }

    protected void onDestroy() {
        CookieManager.getInstance().removeSessionCookie();
        super.onDestroy();
    }
}
