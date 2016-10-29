package com.twitter.android.smartfollow;

import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.model.core.TwitterUser;
import cyw;
import java.util.List;

/* compiled from: Twttr */
final class ad implements cyw<TwitterUser, TwitterScribeItem> {
    final /* synthetic */ List a;

    ad(List list) {
        this.a = list;
    }

    public TwitterScribeItem a(TwitterUser twitterUser) {
        return ac.a(twitterUser, this.a.indexOf(twitterUser));
    }
}
