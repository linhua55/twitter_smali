package com.twitter.android;

import com.twitter.library.api.upload.p;
import com.twitter.library.client.Session;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
class mp extends z {
    final /* synthetic */ ProfileActivity a;

    private mp(ProfileActivity profileActivity) {
        this.a = profileActivity;
    }

    public void a(x xVar) {
        Session d = this.a.ab();
        ab N = xVar.N();
        if (N != null && N.a(d) && (xVar instanceof p)) {
            p pVar = (p) xVar;
            TwitterUser twitterUser = (TwitterUser) pVar.o.getParcelable("user");
            if (this.a.C && twitterUser != null && twitterUser.bf_() == this.a.A && (pVar.e() || pVar.g() || pVar.f() || pVar.s())) {
                this.a.a(twitterUser);
            }
            if (pVar.f()) {
                this.a.az();
            }
        }
    }
}
