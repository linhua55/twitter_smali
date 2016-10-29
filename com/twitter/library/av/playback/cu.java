package com.twitter.library.av.playback;

import android.content.Context;
import cni;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.model.core.Tweet;
import defpackage.bps;
import defpackage.bpu;

/* compiled from: Twttr */
public class cu implements cv {
    protected final Tweet a;
    private final bps c;

    public cu(Tweet tweet) {
        this.a = tweet;
        this.c = new bpu(tweet);
    }

    public TwitterScribeItem a(Context context, TwitterScribeAssociation twitterScribeAssociation) {
        return TwitterScribeItem.a(context, this.a, twitterScribeAssociation, null);
    }

    public bps a() {
        return this.c;
    }

    public cni b() {
        return this.a.f;
    }
}
