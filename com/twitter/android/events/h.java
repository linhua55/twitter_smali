package com.twitter.android.events;

import android.net.Uri;
import bbu;
import com.twitter.android.km;
import com.twitter.android.kx;
import com.twitter.library.client.at;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class h extends kx {
    final /* synthetic */ TwitterEventActivity a;

    h(TwitterEventActivity twitterEventActivity, Uri uri, km kmVar) {
        this.a = twitterEventActivity;
        super(uri, kmVar);
    }

    public void a(int i) {
        this.a.a(false);
        super.a(i);
    }

    public void a() {
        this.a.a(false);
        super.a();
    }

    protected void a(at atVar) {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(TwitterEventActivity.g(this.a).g()).b(new String[]{TwitterEventActivity.e(this.a), atVar.e, TwitterEventActivity.f(this.a), null, "polled_content_available"})).a(TwitterScribeItem.a(TwitterEventActivity.c(this.a), TwitterEventActivity.d(this.a))));
    }
}
