package com.twitter.app.common.app.internal;

import com.twitter.app.common.account.UserIdentifier;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;

/* compiled from: Twttr */
public class ag extends an {
    public ag(UserIdentifier userIdentifier) {
        super(userIdentifier);
    }

    static Session a(UserIdentifier userIdentifier, bg bgVar) {
        return bgVar.b(userIdentifier.b());
    }
}
