package com.twitter.android.timeline;

import bbu;
import cgu;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.timeline.aj;
import com.twitter.util.collection.n;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class cf {
    private final bg a;
    private final TwitterScribeAssociation b;
    private final HashSet<Long> c;

    public cf(bg bgVar, TwitterScribeAssociation twitterScribeAssociation, HashSet<Long> hashSet) {
        this.a = bgVar;
        if (twitterScribeAssociation == null) {
            twitterScribeAssociation = new TwitterScribeAssociation();
        }
        this.b = twitterScribeAssociation;
        this.c = hashSet;
    }

    public void a(cd cdVar, int i) {
        if (this.c.add(Long.valueOf(cdVar.d()))) {
            String str;
            n d = n.d();
            cgu cgu = cdVar.a;
            Map map = cdVar.c.g;
            int aU_ = cgu.aU_();
            for (int i2 = 0; i2 < aU_; i2++) {
                TwitterUser twitterUser = ((bd) cgu.a(i2)).a;
                TwitterScribeItem a = TwitterScribeItem.a(twitterUser);
                a.h = i2;
                a.g = i;
                a.am = (aj) map.get(twitterUser.bg_());
                d.c(a);
            }
            String a2 = this.b != null ? this.b.a() : null;
            if (cdVar.c.e != null) {
                str = cdVar.c.e.e;
            } else {
                str = null;
            }
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.a.c().g()).b(new String[]{a2, null, str, null, "impression"})).a(this.b)).b((List) d.q()));
        }
    }

    public HashSet<Long> a() {
        return this.c;
    }
}
