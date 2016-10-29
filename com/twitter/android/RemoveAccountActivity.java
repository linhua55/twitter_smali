package com.twitter.android;

import android.accounts.AccountAuthenticatorResponse;
import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.client.TwitterPreferenceActivity;

/* compiled from: Twttr */
public class RemoveAccountActivity extends TwitterPreferenceActivity {
    AccountAuthenticatorResponse a;
    String b;
    boolean c;
    private nb f;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.a = null;
        this.c = false;
        this.b = intent.getStringExtra("RemoveAccountActivity_account_name");
        setTitle(this.b);
        if (intent.hasExtra("authenticator_response")) {
            this.a = (AccountAuthenticatorResponse) intent.getParcelableExtra("authenticator_response");
        }
        if (intent.hasExtra("from_system_settings")) {
            this.c = intent.getBooleanExtra("from_system_settings", false);
        }
        this.f = new nb(this);
        k().a(this.f);
        startActivityForResult(new Intent(this, RemoveAccountDialogActivity.class).putExtra("RemoveAccountDialogActivity_account_name", this.b), 1);
    }

    protected void onDestroy() {
        super.onDestroy();
        k().b(this.f);
    }

    private void c() {
        finish();
        if (this.c) {
            moveTaskToBack(true);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1) {
            c();
        }
    }
}
