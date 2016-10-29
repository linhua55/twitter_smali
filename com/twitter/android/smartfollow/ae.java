package com.twitter.android.smartfollow;

import com.twitter.model.core.TwitterUser;
import cyw;
import java.util.Set;

/* compiled from: Twttr */
final class ae implements cyw<TwitterUser, Boolean> {
    final /* synthetic */ Set a;

    ae(Set set) {
        this.a = set;
    }

    public Boolean a(TwitterUser twitterUser) {
        return Boolean.valueOf(this.a.contains(Long.valueOf(twitterUser.bf_())));
    }
}
