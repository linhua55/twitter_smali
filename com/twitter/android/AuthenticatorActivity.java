package com.twitter.android;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.app.common.base.BaseAccountAuthenticatorActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.b;
import com.twitter.model.account.OAuthToken;
import com.twitter.util.aj;
import defpackage.bbu;
import defpackage.beh;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class AuthenticatorActivity extends BaseAccountAuthenticatorActivity {
    Boolean a;
    private AccountManager c;
    private String d;
    private String e;
    private EditText f;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(3);
        setContentView(2130968959);
        getWindow().setFeatureDrawableResource(3, 17301543);
        this.c = AccountManager.get(this);
        Intent intent = getIntent();
        this.e = intent.getStringExtra(UsernameError.USERNAME_ERROR_FIELD);
        this.d = intent.getStringExtra("auth_token_type");
        this.a = Boolean.valueOf(intent.getBooleanExtra("confirm_credentials", false));
        if (aj.a(this.e)) {
            Toast.makeText(this, 2131361941, 0).show();
            finish();
            return;
        }
        ((TextView) findViewById(2131952677)).setText(this.e);
        this.f = (EditText) findViewById(2131952678);
    }

    protected void onStart() {
        super.onStart();
        bbu.a(new TwitterScribeLog(0).b("login_dialog::::show"));
    }

    public void onClickHandler(View view) {
        CharSequence obj = this.f.getText().toString();
        if (!aj.a(obj)) {
            showDialog(1);
            az.a((Context) this).a(new beh(this, bg.a().c(), this.e, obj).a(new ab(this)));
        }
    }

    protected Dialog onCreateDialog(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                Dialog progressDialog = new ProgressDialog(this);
                progressDialog.setMessage(getText(2131361934));
                progressDialog.setIndeterminate(true);
                progressDialog.setCancelable(true);
                return progressDialog;
            default:
                return null;
        }
    }

    void a(OAuthToken oAuthToken, boolean z) {
        b(oAuthToken);
        Intent intent = new Intent();
        intent.putExtra("booleanResult", z);
        setAccountAuthenticatorResult(intent.getExtras());
        setResult(-1, intent);
        finish();
    }

    void a(OAuthToken oAuthToken) {
        b(oAuthToken);
        Intent intent = new Intent();
        intent.putExtra("authAccount", this.e);
        intent.putExtra("accountType", b.a);
        if (this.d != null) {
            if (this.d.equals("com.twitter.android.oauth.token")) {
                intent.putExtra("authtoken", oAuthToken.b);
            } else if (this.d.equals("com.twitter.android.oauth.token.secret")) {
                intent.putExtra("authtoken", oAuthToken.a);
            }
        }
        setAccountAuthenticatorResult(intent.getExtras());
        setResult(-1, intent);
        Session c = bg.a().c();
        if (c.d()) {
            c.a(oAuthToken);
        }
        finish();
    }

    private void b(OAuthToken oAuthToken) {
        Account account = new Account(this.e, b.a);
        AccountManager accountManager = this.c;
        accountManager.setAuthToken(account, "com.twitter.android.oauth.token", oAuthToken.b);
        accountManager.setAuthToken(account, "com.twitter.android.oauth.token.secret", oAuthToken.a);
    }
}
