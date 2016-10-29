package com.twitter.android;

import android.accounts.AccountAuthenticatorResponse;
import android.content.Intent;
import android.widget.Toast;
import com.twitter.android.widget.ec;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.bk;
import com.twitter.library.client.bm;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.account.LoginVerificationRequiredResponse;
import com.twitter.model.login.OneFactorEligibleFactor;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.bbu;
import defpackage.zs;
import java.util.List;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;

/* compiled from: Twttr */
class it implements bk, bm {
    final /* synthetic */ LoginActivity a;

    it(LoginActivity loginActivity) {
        this.a = loginActivity;
    }

    public void a(Session session, String str) {
        if (this.a.l_()) {
            this.a.removeDialog(1);
            this.a.a(session, str);
        }
    }

    public void a(Session session, LoginVerificationRequiredResponse loginVerificationRequiredResponse) {
        if (this.a.l_()) {
            Class cls;
            String str;
            int i;
            this.a.removeDialog(1);
            if (d.a("two_factor_challenge_in_web_view_enabled")) {
                cls = LoginChallengeActivity.class;
                str = "login_challenge_required_response";
                i = 3;
            } else {
                cls = VerifyLoginActivity.class;
                str = "login_verification_required_response";
                i = 2;
            }
            Intent putExtra = new Intent(this.a, cls).putExtra(str, loginVerificationRequiredResponse).putExtra(UsernameError.USERNAME_ERROR_FIELD, this.a.m()).putExtra("session_id", session.c());
            if (this.a.k && !this.a.getIntent().hasExtra("android.intent.extra.INTENT")) {
                putExtra.putExtra("start_main", true);
            }
            this.a.k = false;
            this.a.startActivityForResult(putExtra, i);
        }
    }

    public void b(Session session, LoginVerificationRequiredResponse loginVerificationRequiredResponse) {
        if (this.a.l_()) {
            this.a.removeDialog(1);
            this.a.startActivityForResult(new Intent(this.a, LoginChallengeActivity.class).putExtra("login_challenge_required_response", loginVerificationRequiredResponse).putExtra(UsernameError.USERNAME_ERROR_FIELD, this.a.m()).putExtra("session_id", session.c()), 3);
        }
    }

    private void b(Session session, int i, int[] iArr, List<OneFactorEligibleFactor> list) {
        if (this.a.l_()) {
            this.a.removeDialog(1);
            if (list == null || !zs.a()) {
                int i2;
                long g = session.g();
                if (i != 2) {
                    i2 = (iArr == null || iArr.length == 0) ? 0 : iArr[0];
                    switch (i2) {
                        case mx.AppCompatTheme_actionModeCutDrawable /*32*/:
                        case 267:
                            i2 = iy.a(g, this.a.m().trim());
                            this.a.d = this.a.d + 1;
                            break;
                        case 229:
                            this.a.l();
                            bbu.a(new TwitterScribeLog(g).b("login:form::identifier:ambiguous"));
                            return;
                        case 231:
                            this.a.i();
                            return;
                        case 244:
                            this.a.j();
                            return;
                        case 305:
                            i2 = 2131362958;
                            bbu.a(new TwitterScribeLog(g).b("login:form::identifier:shared_email"));
                            break;
                        default:
                            if (!TelephonyUtil.i().h()) {
                                i2 = 2131362957;
                                break;
                            } else {
                                i2 = 2131362952;
                                break;
                            }
                    }
                }
                if (this.a.a) {
                    AccountAuthenticatorResponse accountAuthenticatorResponse = (AccountAuthenticatorResponse) this.a.getIntent().getParcelableExtra("accountAuthenticatorResponse");
                    if (accountAuthenticatorResponse != null) {
                        accountAuthenticatorResponse.onError(400, this.a.getString(2131363928));
                    }
                }
                bbu.a(new TwitterScribeLog(g).b("login::::failure"));
                i2 = 2131363928;
                if (i2 != 0) {
                    Toast.makeText(this.a, i2, 1).show();
                }
                if (this.a.d >= 4) {
                    this.a.d = 0;
                    ((ec) ((ec) ((ec) new ec(2).a(2131362959)).d(2131364205)).f(2131363158)).i().a(this.a.getSupportFragmentManager());
                    bbu.a(new TwitterScribeLog(g).b("login::forgot_password_prompt::impression"));
                    return;
                }
                return;
            }
            this.a.a((List) list);
        }
    }

    public void a(Session session, int i, int[] iArr, List<OneFactorEligibleFactor> list) {
        b(session, i, iArr, list);
    }

    public void a(Session session, String str, boolean z) {
        if (this.a.l_()) {
            this.a.removeDialog(1);
            this.a.a(session, str);
            this.a.k = false;
            if (this.a.l == 6) {
                bbu.a(new TwitterScribeLog(session.g()).b(null, "deeplink::1fa_login:success"));
            }
        }
    }

    public void a(Session session, int i, int i2, int[] iArr, boolean z) {
        b(session, i, iArr, null);
        this.a.k = false;
        if (this.a.l == 6) {
            bbu.a(new TwitterScribeLog(session.g()).b(null, "deeplink::1fa_login:failure"));
        }
    }
}
