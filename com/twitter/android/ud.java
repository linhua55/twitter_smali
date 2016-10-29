package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.support.v4.app.FragmentActivity;

/* compiled from: Twttr */
class ud implements OnDismissListener {
    final /* synthetic */ FragmentActivity a;
    final /* synthetic */ TweetFragment b;

    ud(TweetFragment tweetFragment, FragmentActivity fragmentActivity) {
        this.b = tweetFragment;
        this.a = fragmentActivity;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.a.getIntent().removeExtra("email_redirect_favorite");
    }
}
