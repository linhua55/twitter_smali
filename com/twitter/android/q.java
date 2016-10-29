package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import bbu;
import cni;
import com.twitter.android.client.c;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.provider.a;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.ab;
import defpackage.cfn;
import java.util.ArrayList;
import java.util.HashSet;

/* compiled from: Twttr */
public class q {
    private final HashSet<Long> a;
    private final TwitterScribeAssociation b;
    private final ArrayList<TwitterScribeItem> c;
    private final Context d;

    public q(Context context, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = new HashSet();
        this.c = new ArrayList();
        this.d = context;
        this.b = twitterScribeAssociation;
    }

    protected void a(Tweet tweet, TwitterUser twitterUser, a aVar, int i, int i2) {
        TwitterScribeItem twitterScribeItem;
        long j;
        if (tweet != null) {
            String str;
            if (tweet.H()) {
                str = "focal";
            } else if (tweet.G()) {
                str = "ancestor";
            } else {
                str = null;
            }
            long j2 = tweet.u;
            TwitterScribeItem a = TwitterScribeItem.a(this.d, tweet, this.b, str);
            a.b = tweet.A;
            long j3 = j2;
            twitterScribeItem = a;
            j = j3;
        } else {
            twitterScribeItem = new TwitterScribeItem();
            if (twitterUser != null) {
                j = twitterUser.bf_();
            } else if (aVar != null) {
                j = aVar.b;
            } else {
                j = -1;
            }
        }
        twitterScribeItem.a = j;
        twitterScribeItem.x = (String) cfn.a.get(Integer.valueOf(i));
        twitterScribeItem.g = i2;
        this.c.add(twitterScribeItem);
    }

    public void a(Bundle bundle) {
        Tweet tweet = (Tweet) bundle.getParcelable("tweet");
        if (this.a.add(Long.valueOf(bundle.getLong("activity_id", -1)))) {
            if (!(tweet == null || tweet.g)) {
                cni cni = tweet.f;
                if (cni != null) {
                    c.a(this.d).a(PromotedEvent.a, cni);
                }
            }
            a(tweet, (TwitterUser) bundle.getParcelable("user"), (a) ab.a(bundle, "list", a.a), bundle.getInt("event_type", 0), bundle.getInt("position", 0) + 1);
        }
    }

    public void a(long j, String str) {
        if (!this.c.isEmpty()) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(j).b(new String[]{str})).b(this.c));
            this.c.clear();
        }
    }
}
