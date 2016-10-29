package com.twitter.android.widget;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import bbu;
import com.twitter.android.io;
import com.twitter.android.util.AppEventTrack;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class by implements OnClickListener {
    final /* synthetic */ Activity a;
    final /* synthetic */ LoggedOutBar b;

    by(LoggedOutBar loggedOutBar, Activity activity) {
        this.b = loggedOutBar;
        this.a = activity;
    }

    public void onClick(View view) {
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(0);
        AppEventTrack.a(this.a, twitterScribeLog);
        String b = io.b(this.a);
        switch (view.getId()) {
            case 2131952670:
                twitterScribeLog.b(new String[]{b + ":login_signup_bar::signup:click"});
                bbu.a(twitterScribeLog);
                io.b(this.a);
            case 2131952671:
                twitterScribeLog.b(new String[]{b + ":login_signup_bar::login:click"});
                bbu.a(twitterScribeLog);
                io.c(this.a);
            default:
                throw new IllegalArgumentException();
        }
    }
}
