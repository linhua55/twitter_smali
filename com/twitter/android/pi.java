package com.twitter.android;

import android.support.v4.app.Fragment;
import com.twitter.library.scribe.ScribeLog$SearchDetails;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import java.util.List;

/* compiled from: Twttr */
final class pi extends sn {
    protected final ScribeLog$SearchDetails a;
    protected final List<TwitterScribeItem> b;

    pi(Fragment fragment, TwitterScribeAssociation twitterScribeAssociation, ScribeLog$SearchDetails scribeLog$SearchDetails, List<TwitterScribeItem> list) {
        super(fragment, twitterScribeAssociation);
        this.a = scribeLog$SearchDetails;
        this.b = list;
    }

    protected TwitterScribeLog a(String str, String str2, Tweet tweet, TwitterScribeItem twitterScribeItem) {
        String b = Tweet.b(tweet);
        return (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.d.c().g()).a(this.g, tweet, this.f, a(tweet)).b(new String[]{TwitterScribeLog.a(this.f, b, str, str2)})).a(this.f)).a(twitterScribeItem)).a(this.b)).a(this.a);
    }
}
