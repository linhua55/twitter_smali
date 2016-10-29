package com.twitter.app.common.app;

import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.app.internal.ag;
import com.twitter.util.object.b;

/* compiled from: Twttr */
class k implements b<UserIdentifier, o> {
    final /* synthetic */ TwitterApplication a;

    k(TwitterApplication twitterApplication) {
        this.a = twitterApplication;
    }

    public o a(UserIdentifier userIdentifier) {
        return l.p().a(new ag(userIdentifier));
    }
}
