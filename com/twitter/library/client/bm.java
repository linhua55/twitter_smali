package com.twitter.library.client;

import com.twitter.model.account.LoginVerificationRequiredResponse;
import com.twitter.model.login.OneFactorEligibleFactor;
import java.util.List;

/* compiled from: Twttr */
public interface bm extends bo {
    void a(Session session, int i, int[] iArr, List<OneFactorEligibleFactor> list);

    void a(Session session, LoginVerificationRequiredResponse loginVerificationRequiredResponse);

    void a(Session session, String str);

    void b(Session session, LoginVerificationRequiredResponse loginVerificationRequiredResponse);
}
