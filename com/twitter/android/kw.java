package com.twitter.android;

import com.twitter.library.client.Session;
import com.twitter.library.client.bm;
import com.twitter.model.account.LoginVerificationRequiredResponse;
import com.twitter.model.login.OneFactorEligibleFactor;
import defpackage.bbl;
import defpackage.bbn;
import java.util.List;

/* compiled from: Twttr */
class kw implements bm {
    final /* synthetic */ OneFactorAuthVerificationActivity a;

    private kw(OneFactorAuthVerificationActivity oneFactorAuthVerificationActivity) {
        this.a = oneFactorAuthVerificationActivity;
    }

    public void a(Session session, String str) {
        if (this.a.l_()) {
            this.a.r();
            this.a.a(session, str);
            ks.a(":::1fa_login:success");
            if (this.a.s() != null) {
                ks.a("1fa_verify", this.a.s(), "::success");
            }
        }
    }

    public void a(Session session, int i, int[] iArr, List<OneFactorEligibleFactor> list) {
        this.a.r();
        this.a.a(iArr);
        if (this.a.s() != null) {
            ks.a("1fa_verify", this.a.s(), "::failure");
        }
    }

    public void b(Session session, LoginVerificationRequiredResponse loginVerificationRequiredResponse) {
        bbn.a(new bbl().a("cause", Integer.valueOf(loginVerificationRequiredResponse.e)).a(new IllegalStateException("onLoginChallengeRequired called while verifying 1FA login")));
    }

    public void a(Session session, LoginVerificationRequiredResponse loginVerificationRequiredResponse) {
        bbn.a(new bbl().a("cause", Integer.valueOf(loginVerificationRequiredResponse.e)).a(new IllegalStateException("onLoginVerificationRequired called while verifying 1FA login")));
    }
}
