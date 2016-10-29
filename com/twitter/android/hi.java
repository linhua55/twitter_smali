package com.twitter.android;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.timeline.an;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.bp;
import com.twitter.model.core.cr;
import com.twitter.util.aj;

/* compiled from: Twttr */
final class hi extends sg {
    final /* synthetic */ HomeTimelineFragment a;

    hi(HomeTimelineFragment homeTimelineFragment, Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, String str, sn snVar, an anVar, int i, ts tsVar) {
        this.a = homeTimelineFragment;
        super(fragment, twitterScribeAssociation, str, snVar, -1, anVar, i);
    }

    public void a(Tweet tweet, cr crVar) {
        if (tweet.ag == null || !aj.b(tweet.ag.e)) {
            super.a(tweet, crVar);
        } else {
            super.a(tweet, crVar, this.a.i() + "::" + tweet.ag.e + ":link:open_link");
        }
    }

    public void a(Tweet tweet, bp bpVar) {
        HomeTimelineFragment.a(this.a, tweet, bpVar, "click");
        FragmentActivity activity = this.a.getActivity();
        if (activity != null) {
            OpenUriHelper.a(activity, null, bpVar.d(), this.j.g(), null, null, this.f);
        }
    }
}
