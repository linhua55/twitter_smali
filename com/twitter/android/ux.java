package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.support.v4.app.FragmentActivity;

/* compiled from: Twttr */
class ux implements OnDismissListener {
    final /* synthetic */ FragmentActivity a;
    final /* synthetic */ TweetFragment2 b;

    ux(TweetFragment2 tweetFragment2, FragmentActivity fragmentActivity) {
        this.b = tweetFragment2;
        this.a = fragmentActivity;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.a.getIntent().removeExtra("email_redirect_favorite");
    }
}
