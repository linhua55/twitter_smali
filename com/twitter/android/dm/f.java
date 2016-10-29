package com.twitter.android.dm;

import com.twitter.library.api.dm.requests.k;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.dms.ad;
import com.twitter.model.dms.bd;
import com.twitter.util.collection.CollectionUtils;

/* compiled from: Twttr */
final class f extends z {
    final /* synthetic */ g a;

    f(g gVar) {
        this.a = gVar;
    }

    public void a(x xVar) {
        super.a(xVar);
        k kVar = (k) xVar;
        if (xVar.U()) {
            bd bdVar = kVar.a;
            if (CollectionUtils.b(bdVar.c)) {
                this.a.a(null, false);
                return;
            }
            TwitterUser twitterUser = (TwitterUser) bdVar.c.get(0);
            ad adVar = (ad) bdVar.a.get(Long.valueOf(twitterUser.c));
            g gVar = this.a;
            boolean z = adVar != null && adVar.a;
            gVar.a(twitterUser, z);
        }
    }
}
