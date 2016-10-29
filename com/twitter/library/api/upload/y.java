package com.twitter.library.api.upload;

import android.content.Context;
import com.twitter.library.network.an;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.util.collection.n;

/* compiled from: Twttr */
public class y extends p {
    public y(Context context, ab abVar, TwitterUser twitterUser) {
        super(context, y.class.getName(), abVar, twitterUser);
    }

    protected void a(aa aaVar) {
        ab N = N();
        ab a = new ab(this.p, N).a(an.a(this.q.a, new Object[]{"1.1", "account", "remove_profile_banner"}).append(".json"));
        w();
        a.a(a.a().c(), aaVar);
        x();
        if (aaVar.b()) {
            TwitterUser twitterUser = (TwitterUser) new cp(this.a).h(null).q();
            e T = T();
            S().a(n.b(twitterUser), -1, -1, -1, null, null, true, T);
            T.a();
        }
        this.o.putParcelable("user", this.a);
    }
}
