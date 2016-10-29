package com.twitter.android.browser;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Window;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.model.core.Tweet;
import defpackage.bcx;
import defpackage.cbs;

/* compiled from: Twttr */
public class BrowserActivity extends TwitterFragmentActivity implements g {
    private a a;

    public void b(Bundle bundle, t tVar) {
        this.a.a((WebView) findViewById(bcx.webview), (ProgressBar) findViewById(2131953140));
        this.a.a(bundle, getIntent());
        a(getWindow());
    }

    public t a(Bundle bundle, t tVar) {
        this.a = a(new h(this, V_(), (Tweet) getIntent().getParcelableExtra("tweet"), new cbs(this, az.a((Context) this), bg.a())));
        this.a.a(tVar, getWindow());
        return tVar;
    }

    protected a a(h hVar) {
        return new a(this, hVar);
    }

    protected void a(Window window) {
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.a.a(bundle);
    }

    protected void onPause() {
        super.onPause();
        this.a.a();
    }

    protected void onDestroy() {
        super.onDestroy();
        this.a.b();
    }

    public void onBackPressed() {
        this.a.c();
    }

    public void c() {
        super.onBackPressed();
    }

    public void a(String str) {
        setTitle(str);
    }

    public void a(int i) {
        setTitle(i);
    }

    public void b(String str) {
        b((CharSequence) str);
    }

    public boolean e() {
        return getPackageManager().hasSystemFeature("android.hardware.touchscreen.multitouch");
    }

    public Context f() {
        return this;
    }

    public long V_() {
        return ab().g();
    }

    public void a(Intent intent) {
        startActivity(intent);
    }

    public void i() {
        finish();
    }

    protected void a(Uri uri) {
        this.a.d();
    }

    public boolean a(w wVar) {
        super.a(wVar);
        this.a.a(wVar);
        return true;
    }

    public boolean a(ac acVar) {
        if (this.a.a(acVar)) {
            super.a(acVar);
        }
        return true;
    }
}
