package com.twitter.library.util;

import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.f;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class d implements f {
    public int a() {
        return 2;
    }

    public void a(a aVar, int i, int i2) {
        if (i < i2 && i == 1) {
            a(aVar);
            i++;
        }
        aVar.a(i);
    }

    private void a(a aVar) {
        TwitterUser c = b.c(aVar);
        if (c != null) {
            UserIdentifier userIdentifier = new UserIdentifier(c.c);
            if (userIdentifier.a()) {
                aVar.a(userIdentifier);
            }
        }
    }
}
