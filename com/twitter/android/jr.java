package com.twitter.android;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.model.core.Tweet;
import defpackage.bno;

/* compiled from: Twttr */
final class jr implements OnClickListener {
    final /* synthetic */ TwitterFragmentActivity a;
    final /* synthetic */ Tweet b;

    jr(TwitterFragmentActivity twitterFragmentActivity, Tweet tweet) {
        this.a = twitterFragmentActivity;
        this.b = tweet;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        Session c = bg.a().c();
        Context applicationContext = this.a.getApplicationContext();
        az.a(applicationContext).a(bno.a(applicationContext, c, this.b), new js(this, applicationContext));
        Intent intent = new Intent();
        intent.putExtra("deleted", this.b.u);
        this.a.setResult(1, intent);
        this.a.finish();
    }
}
