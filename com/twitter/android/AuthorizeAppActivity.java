package com.twitter.android;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.widget.Toast;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.t;
import com.twitter.library.service.AuthTokenService;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class AuthorizeAppActivity extends TwitterFragmentActivity implements ae {
    private ServiceConnection a;
    private String b;
    private String c;

    public t a(Bundle bundle, t tVar) {
        tVar.b(10);
        tVar.c(false);
        tVar.b(false);
        tVar.a(false);
        tVar.a(0);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        Intent intent = getIntent();
        this.b = intent.getStringExtra("ck");
        this.c = intent.getStringExtra("cs");
        if (bundle == null) {
            Fragment authorizeAppFragment = new AuthorizeAppFragment();
            CharSequence c = c();
            if (c != null) {
                authorizeAppFragment.a(new h().b("app_name", c.toString()).b("app_consumer_key", this.b).c());
            }
            authorizeAppFragment.a((ae) this);
            getSupportFragmentManager().beginTransaction().add(2131951923, authorizeAppFragment).commit();
            return;
        }
        ((AuthorizeAppFragment) getSupportFragmentManager().findFragmentById(2131951923)).a((ae) this);
    }

    protected void onStart() {
        super.onStart();
        if (!ab().d()) {
            startActivityForResult(new Intent(this, LoginActivity.class).putExtra("add_account", true).putExtra("authorize_account", true), 1);
        }
    }

    private CharSequence c() {
        CharSequence charSequence = null;
        ComponentName callingActivity = getCallingActivity();
        if (callingActivity != null) {
            PackageManager packageManager = getPackageManager();
            try {
                charSequence = packageManager.getApplicationLabel(packageManager.getApplicationInfo(callingActivity.getPackageName(), 0));
            } catch (NameNotFoundException e) {
            }
        }
        return charSequence;
    }

    protected void onDestroy() {
        e();
        super.onDestroy();
    }

    private void e() {
        if (this.a != null) {
            unbindService(this.a);
            this.a = null;
        }
    }

    public boolean a(Context context, ServiceConnection serviceConnection, int i) {
        return context.bindService(new Intent(this, AuthTokenService.class), serviceConnection, i);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 != -1) {
                    finish();
                }
            default:
                super.onActivityResult(i, i2, intent);
        }
    }

    public void a(Account account) {
        ServiceConnection acVar = new ac(this.b, this.c, new ad(this), account);
        if (a(this, acVar, 1)) {
            this.a = acVar;
            return;
        }
        this.a = null;
        a(2131361852);
    }

    public void a() {
        setResult(0);
        finish();
    }

    public void a(int i) {
        Toast.makeText(this, i, 1).show();
        finish();
    }
}
