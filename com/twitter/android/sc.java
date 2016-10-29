package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.FragmentActivity;
import bbu;
import com.twitter.android.client.c;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
final class sc implements OnClickListener {
    final /* synthetic */ Tweet a;
    final /* synthetic */ bg b;
    final /* synthetic */ FragmentActivity c;
    final /* synthetic */ TwitterScribeAssociation d;
    final /* synthetic */ c e;

    sc(Tweet tweet, bg bgVar, FragmentActivity fragmentActivity, TwitterScribeAssociation twitterScribeAssociation, c cVar) {
        this.a = tweet;
        this.b = bgVar;
        this.c = fragmentActivity;
        this.d = twitterScribeAssociation;
        this.e = cVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        String b = Tweet.b(this.a);
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.b.c().g()).a(this.c, this.a, this.d, null).b(new String[]{TwitterScribeLog.a(this.d, b, null, "dismiss")})).a(this.d));
        this.e.a(this.a);
    }
}
