package com.twitter.app.common.app;

import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.app.internal.an;
import com.twitter.util.object.b;

/* compiled from: Twttr */
class h implements b<UserIdentifier, o> {
    final /* synthetic */ InjectedApplication a;

    h(InjectedApplication injectedApplication) {
        this.a = injectedApplication;
    }

    public o a(UserIdentifier userIdentifier) {
        return a.a().a(new an(userIdentifier));
    }
}
