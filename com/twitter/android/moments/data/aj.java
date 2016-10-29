package com.twitter.android.moments.data;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.p;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.util.collection.r;
import com.twitter.util.z;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
class aj implements z<List<Tweet>> {
    final /* synthetic */ List a;
    final /* synthetic */ ai b;

    aj(ai aiVar, List list) {
        this.b = aiVar;
        this.a = list;
    }

    public void a(List<Tweet> list) {
        r d = r.d();
        for (Tweet tweet : list) {
            d.b(Long.valueOf(tweet.H), tweet);
        }
        Map map = (Map) d.q();
        for (o oVar : this.a) {
            if (map.containsKey(Long.valueOf(oVar.m()))) {
                int i = ((Tweet) map.get(Long.valueOf(oVar.m()))).m;
                if (p.d(i) || p.e(i)) {
                    oVar.a(true);
                } else {
                    oVar.a((Tweet) map.get(Long.valueOf(oVar.m())));
                }
            }
        }
    }
}
