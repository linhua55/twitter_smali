package com.twitter.android.profilecompletionmodule;

import android.support.annotation.VisibleForTesting;
import com.twitter.library.client.bg;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class aa {
    public static boolean a(boolean z) {
        return z && a(bg.a().c().f());
    }

    @VisibleForTesting
    protected static boolean a(TwitterUser twitterUser) {
        return twitterUser != null && ((twitterUser.g() || aj.a(twitterUser.e)) && aj.a(twitterUser.G) && aj.a(twitterUser.g) && aj.a(twitterUser.q) && twitterUser.s);
    }
}
