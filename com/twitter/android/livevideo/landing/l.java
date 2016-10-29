package com.twitter.android.livevideo.landing;

import android.support.v4.app.Fragment;
import com.twitter.android.sn;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
class l extends sn {
    private final List<TwitterScribeItem> a;

    l(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeItem twitterScribeItem) {
        super(fragment, twitterScribeAssociation);
        this.a = n.b(twitterScribeItem);
    }

    protected TwitterScribeLog a(String str, String str2, Tweet tweet, TwitterScribeItem twitterScribeItem) {
        String b = Tweet.b(tweet);
        return (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.d.c().g()).a(this.g, tweet, this.f, a(tweet)).b(new String[]{TwitterScribeLog.a(this.f, b, str, str2)})).a(this.f)).a(twitterScribeItem)).a(this.a);
    }
}
