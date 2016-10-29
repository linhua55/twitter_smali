package com.twitter.android;

import android.accounts.AccountAuthenticatorResponse;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.twitter.app.main.MainActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bk;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import defpackage.bex;

/* compiled from: Twttr */
class xy implements bk {
    final /* synthetic */ VerifyLoginActivity a;

    xy(VerifyLoginActivity verifyLoginActivity) {
        this.a = verifyLoginActivity;
    }

    public void a(Session session, String str, boolean z) {
        if (!this.a.isFinishing()) {
            long g = this.a.ab().g();
            Activity activity = this.a;
            iy.a(activity, session, true, str, this.a.aa());
            iy.a(activity, false, g);
            a(z);
            if (this.a.i == 2 && !z) {
                bbu.a(new TwitterScribeLog(g).b("native_login:push_verification:backup_code::success"));
            } else if (this.a.i == 2) {
                bbu.a(new TwitterScribeLog(g).b("native_login:push_verification:polling::success"));
            } else {
                bbu.a(new TwitterScribeLog(g).b("native_login:sms_verification:login_code::success"));
            }
            Intent intent = this.a.getIntent();
            Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
            if (intent2 != null) {
                this.a.startActivity(intent2);
            } else if (intent.getBooleanExtra("start_main", false)) {
                MainActivity.a(activity, null);
            }
            this.a.setResult(-1, new Intent().putExtra("AbsFragmentActivity_account_name", session.e()).putExtra("session", session).putExtra("user", str));
            Toast.makeText(activity, 2131362983, 1).show();
            az.a((Context) activity).a(bex.a((Context) activity, session), null);
            this.a.finish();
        }
    }

    public void a(Session session, int i, int i2, int[] iArr, boolean z) {
        if (!this.a.isFinishing()) {
            CharSequence charSequence;
            a(z);
            if (i == 2) {
                String string = this.a.getString(2131363928);
                AccountAuthenticatorResponse accountAuthenticatorResponse = (AccountAuthenticatorResponse) this.a.getIntent().getParcelableExtra("accountAuthenticatorResponse");
                if (accountAuthenticatorResponse != null) {
                    accountAuthenticatorResponse.onError(400, string);
                }
                charSequence = string;
            } else {
                int i3 = (iArr == null || iArr.length == 0) ? 0 : iArr[0];
                if (!z || i3 == 241 || i3 == 88) {
                    if (z) {
                        this.a.a("native_login:push_verification:polling", i2, i3);
                    } else if (this.a.i == 2) {
                        this.a.a("native_login:push_verification:backup_code", i2, i3);
                    } else {
                        this.a.a("native_login:sms_verification:login_code", i2, i3);
                    }
                    switch (i3) {
                        case mx.AppCompatTheme_actionModeCutDrawable /*32*/:
                            charSequence = this.a.getString(2131364204);
                            break;
                        case 236:
                            charSequence = this.a.getString(2131364204);
                            break;
                        case 241:
                            charSequence = this.a.getString(2131362984);
                            break;
                        default:
                            charSequence = this.a.getString(2131362952);
                            break;
                    }
                }
                this.a.j = Math.round(((double) this.a.j) * 1.2d);
                this.a.d.postDelayed(new xx(null), this.a.j);
                return;
            }
            Toast.makeText(this.a, charSequence, 1).show();
            this.a.setResult(0);
            bbu.a(new TwitterScribeLog(this.a.ab().g()).b("login::::failure"));
            this.a.finish();
        }
    }

    private void a(boolean z) {
        if (!z && this.a.b != null) {
            this.a.b.dismiss();
        }
    }
}
