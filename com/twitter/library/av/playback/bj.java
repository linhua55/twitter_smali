package com.twitter.library.av.playback;

import android.content.Context;
import cni;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import defpackage.bps;

/* compiled from: Twttr */
class bj implements cv {
    final /* synthetic */ DMAVDataSource a;

    bj(DMAVDataSource dMAVDataSource) {
        this.a = dMAVDataSource;
    }

    public TwitterScribeItem a(Context context, TwitterScribeAssociation twitterScribeAssociation) {
        return new TwitterScribeItem();
    }

    public bps a() {
        return new bk(this);
    }

    public cni b() {
        return null;
    }
}
