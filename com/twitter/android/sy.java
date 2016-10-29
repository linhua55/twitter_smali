package com.twitter.android;

import android.support.v4.app.FragmentActivity;
import bbu;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.widget.au;
import com.twitter.model.core.Tweet;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class sy implements nu {
    final /* synthetic */ WeakReference a;
    final /* synthetic */ FragmentActivity b;
    final /* synthetic */ Tweet c;
    final /* synthetic */ TwitterScribeItem d;
    final /* synthetic */ long e;
    final /* synthetic */ TwitterScribeAssociation f;
    final /* synthetic */ sn g;

    sy(sn snVar, WeakReference weakReference, FragmentActivity fragmentActivity, Tweet tweet, TwitterScribeItem twitterScribeItem, long j, TwitterScribeAssociation twitterScribeAssociation) {
        this.g = snVar;
        this.a = weakReference;
        this.b = fragmentActivity;
        this.c = tweet;
        this.d = twitterScribeItem;
        this.e = j;
        this.f = twitterScribeAssociation;
    }

    public void a(long j, Tweet tweet, boolean z) {
        au auVar = (au) this.a.get();
        if (auVar != null) {
            auVar.b(z);
        }
        if (z) {
            if (a()) {
                sn.a(this.g, this.g.a(this.b), "self_unretweet", this.c, this.d);
            }
            sn.a(this.g, this.g.a(this.b), "unretweet", this.c, this.d);
            return;
        }
        if (a()) {
            sn.a(this.g, this.g.a(this.b), "self_retweet", this.c, this.d);
        }
        sn.a(this.g, this.g.a(this.b), "retweet", this.c, this.d);
    }

    public void a(long j, boolean z, boolean z2, boolean z3) {
        sn.a(z, z2, this.g.g, z3);
    }

    public void b(long j, Tweet tweet, boolean z) {
        if (a()) {
            sn.a(this.g, this.g.a(this.b), "self_quote", this.c, this.d);
        }
        sn.a(this.g, this.g.a(this.b), "quote", this.c, this.d);
    }

    public void c(long j, Tweet tweet, boolean z) {
        bbu.a(new TwitterScribeLog(this.e).b(new String[]{TwitterScribeLog.a(this.f, "retweet_dialog", TtmlNode.ANONYMOUS_REGION_ID, "dismiss")}));
    }

    public void d(long j, Tweet tweet, boolean z) {
        bbu.a(new TwitterScribeLog(this.e).b(new String[]{TwitterScribeLog.a(this.f, "retweet_dialog", TtmlNode.ANONYMOUS_REGION_ID, "impression")}));
    }

    private boolean a() {
        return this.c.s == this.e;
    }
}
