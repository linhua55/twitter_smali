package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
class ec implements OnClickListener {
    final /* synthetic */ long a;
    final /* synthetic */ String b;
    final /* synthetic */ DialogActivity c;

    ec(DialogActivity dialogActivity, long j, String str) {
        this.c = dialogActivity;
        this.a = j;
        this.b = str;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.a);
        String[] strArr = new String[5];
        strArr[0] = this.b;
        strArr[1] = BuildConfig.VERSION_NAME;
        strArr[2] = "friends_dialog";
        strArr[3] = BuildConfig.VERSION_NAME;
        strArr[4] = i == -1 ? "accept" : "dismiss";
        bbu.a(twitterScribeLog.b(strArr));
        if (i == -1) {
            new FollowFlowController("discover").a(true).e(false).c(this.c);
        }
    }
}
