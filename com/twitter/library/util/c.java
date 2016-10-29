package com.twitter.library.util;

import com.twitter.app.common.account.a;
import com.twitter.app.common.account.e;

/* compiled from: Twttr */
final class c implements e {
    c() {
    }

    public void a(a aVar, a aVar2) {
        aVar2.a("account_user_info", aVar.a("account_user_info"));
        aVar2.a("account_settings", aVar.a("account_settings"));
        aVar2.b("com.twitter.android.oauth.token", aVar.c("com.twitter.android.oauth.token"));
        aVar2.b("com.twitter.android.oauth.token.secret", aVar.c("com.twitter.android.oauth.token.secret"));
    }
}
