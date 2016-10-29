package com.twitter.android.provider;

import biw;
import com.twitter.library.database.dm.ShareHistoryTable.Type;
import com.twitter.library.database.dm.l;
import com.twitter.library.provider.m;
import com.twitter.model.core.TwitterUser;
import cuj;
import java.util.Map;

/* compiled from: Twttr */
class k implements cuj<com.twitter.library.provider.k> {
    private final Map<String, l> a;
    private final l b;

    k(Map<String, l> map, l lVar) {
        this.a = map;
        this.b = lVar;
    }

    public boolean a(com.twitter.library.provider.k kVar) {
        if (kVar == null || this.a.containsKey(kVar.d())) {
            return false;
        }
        if (!kVar.b()) {
            m mVar = (m) kVar;
            TwitterUser twitterUser = mVar.b;
            if ((twitterUser.c == this.b.b && mVar.d != Type.TWEET_SHARED) || twitterUser.c == this.b.c) {
                return false;
            }
            if (!biw.a(twitterUser)) {
                return false;
            }
        } else if (kVar.a().size() <= 1) {
            return false;
        }
        return true;
    }
}
