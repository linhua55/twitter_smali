package com.twitter.library.av.playback.livevideo;

import android.content.Context;
import cni;
import com.twitter.library.av.playback.cv;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.util.aj;
import defpackage.bps;
import defpackage.cjl;

/* compiled from: Twttr */
public class a implements cv {
    private final cjl a;

    a(cjl cjl) {
        this.a = cjl;
    }

    public TwitterScribeItem a(Context context, TwitterScribeAssociation twitterScribeAssociation) {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.a = aj.a(this.a.b, -1);
        twitterScribeItem.c = 28;
        return twitterScribeItem;
    }

    public bps a() {
        return this.a.g == null ? bps.a : new c(this.a.g);
    }

    public cni b() {
        return null;
    }
}
