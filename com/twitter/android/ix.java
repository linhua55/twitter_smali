package com.twitter.android;

import android.accounts.AccountAuthenticatorResponse;
import android.content.Intent;
import android.widget.Toast;
import com.twitter.app.main.MainActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.client.az;
import com.twitter.library.client.bk;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bbu;
import defpackage.bex;

/* compiled from: Twttr */
class ix implements bk {
    final /* synthetic */ LoginChallengeActivity a;

    ix(LoginChallengeActivity loginChallengeActivity) {
        this.a = loginChallengeActivity;
    }

    public void a(Session session, String str, boolean z) {
        if (!this.a.isFinishing()) {
            long g = this.a.ab().g();
            iy.a(this.a, session, true, str, this.a.aa());
            iy.a(this.a, false, g);
            bbu.a(new TwitterScribeLog(g).b("login_challenge::::success"));
            Intent intent = this.a.getIntent();
            Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
            if (intent2 != null) {
                this.a.startActivity(intent2);
            } else if (intent.getBooleanExtra("start_main", false)) {
                MainActivity.a(this.a, null);
            }
            this.a.setResult(-1, new Intent().putExtra("AbsFragmentActivity_account_name", session.e()).putExtra("session", session).putExtra("user", str));
            az.a(this.a).a(bex.a(this.a, session), null);
            this.a.finish();
        }
    }

    public void a(Session session, int i, int i2, int[] iArr, boolean z) {
        if (!this.a.isFinishing()) {
            CharSequence charSequence;
            long g = this.a.ab().g();
            if (i == 2) {
                String string = this.a.getString(2131363928);
                AccountAuthenticatorResponse accountAuthenticatorResponse = (AccountAuthenticatorResponse) this.a.getIntent().getParcelableExtra("accountAuthenticatorResponse");
                if (accountAuthenticatorResponse != null) {
                    accountAuthenticatorResponse.onError(400, string);
                }
                charSequence = string;
            } else if (iArr == null || !CollectionUtils.a(iArr, 88)) {
                this.a.e = Math.round(((float) this.a.e) * this.a.d);
                this.a.l = new iw(null);
                this.a.f.postDelayed(this.a.l, (long) this.a.e);
                return;
            } else {
                charSequence = this.a.getString(2131362742);
                bbu.a(new TwitterScribeLog(g).b("login_challenge::::rate_limit"));
            }
            Toast.makeText(this.a, charSequence, 1).show();
            session.a(LoginStatus.LOGGED_OUT);
            this.a.setResult(0);
            bbu.a(new TwitterScribeLog(g).b("login::::failure"));
            this.a.finish();
        }
    }
}
