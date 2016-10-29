package com.twitter.android.settings;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import com.twitter.android.client.TwitterPreferenceActivity;
import com.twitter.library.client.Session;
import com.twitter.library.util.b;

/* compiled from: Twttr */
public abstract class BaseAccountSettingsActivity extends TwitterPreferenceActivity implements OnAccountsUpdateListener {
    protected long a;
    protected String b;

    @CallSuper
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.a = bundle.getLong("account_id");
        } else {
            this.a = getIntent().getLongExtra("extra_account_id", 0);
        }
        if (!c()) {
            this.b = l().e();
        }
    }

    protected void onResume() {
        super.onResume();
        if (!c()) {
            AccountManager.get(this).addOnAccountsUpdatedListener(this, null, true);
        }
    }

    private boolean c() {
        Session l = l();
        boolean z = (l.d() && this.a == l.g()) ? false : true;
        if (z) {
            finish();
        }
        return z;
    }

    protected void onPause() {
        super.onPause();
        AccountManager.get(this).removeOnAccountsUpdatedListener(this);
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("account_id", this.a);
    }

    public void onAccountsUpdated(Account[] accountArr) {
        Session l = l();
        if (l.g() == this.a) {
            String e = l.e();
            int length = accountArr.length;
            int i = 0;
            while (i < length) {
                Account account = accountArr[i];
                if (!b.a.equals(account.type) || account.name == null || !account.name.equals(e)) {
                    i++;
                } else {
                    return;
                }
            }
        }
        finish();
    }

    protected void a(Class<? extends BaseAccountSettingsActivity> cls) {
        startActivity(new Intent(this, cls).putExtra("extra_account_id", this.a));
    }
}
