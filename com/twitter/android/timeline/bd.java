package com.twitter.android.timeline;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.timeline.aj;
import java.util.List;

/* compiled from: Twttr */
public class bd extends aw {
    public final TwitterUser a;

    public bd(ar arVar, long j, TwitterUser twitterUser, aj ajVar) {
        super(arVar, j, ajVar);
        this.a = twitterUser;
    }

    public void a(List<Long> list, List<Long> list2, List<Long> list3) {
        list2.add(Long.valueOf(this.a.c));
    }
}
