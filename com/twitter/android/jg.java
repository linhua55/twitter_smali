package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import bbu;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.account.LoginVerificationRequest;

/* compiled from: Twttr */
class jg implements OnClickListener {
    final /* synthetic */ LoginVerificationRequest a;
    final /* synthetic */ je b;

    jg(je jeVar, LoginVerificationRequest loginVerificationRequest) {
        this.b = jeVar;
        this.a = loginVerificationRequest;
    }

    public void onClick(View view) {
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(LoginVerificationFragment.b(this.b.a).g()).b(new String[]{"login_verification::request:reject:click"});
        twitterScribeLog.a(TwitterScribeItem.b(this.a.b));
        bbu.a(twitterScribeLog);
        new jd(this.b.a, this.b.a.getActivity().getApplicationContext(), this.a.g, this.a.b, this.a.c).execute(new Void[0]);
    }
}
