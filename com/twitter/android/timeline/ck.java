package com.twitter.android.timeline;

import bbu;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.TwitterUser;
import java.util.HashSet;

/* compiled from: Twttr */
public class ck {
    private final bg a;
    private final TwitterScribeAssociation b;
    private final HashSet<Long> c;

    public ck(bg bgVar, TwitterScribeAssociation twitterScribeAssociation, HashSet<Long> hashSet) {
        this.a = bgVar;
        if (twitterScribeAssociation == null) {
            twitterScribeAssociation = new TwitterScribeAssociation();
        }
        this.b = twitterScribeAssociation;
        this.c = hashSet;
    }

    public void a(bd bdVar, int i) {
        TwitterUser twitterUser = bdVar.a;
        if (this.c.add(Long.valueOf(twitterUser.bf_()))) {
            TwitterScribeItem a = TwitterScribeItem.a(twitterUser);
            a.h = i;
            String str = twitterUser.T != null ? twitterUser.T.e : null;
            String a2 = this.b.a();
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.c().g()).b(new String[]{a2, null, str, "user", "results"})).a(this.b)).a(a));
        }
    }

    public HashSet<Long> a() {
        return this.c;
    }
}
