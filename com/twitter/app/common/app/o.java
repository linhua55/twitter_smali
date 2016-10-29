package com.twitter.app.common.app;

import com.twitter.app.common.account.UserIdentifier;
import com.twitter.util.object.a;
import com.twitter.util.object.b;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public abstract class o implements b {
    private static a<UserIdentifier, o> a;
    private static UserIdentifier b;

    static {
        b = UserIdentifier.a;
    }

    public static o t() {
        return a(b);
    }

    public static o a(UserIdentifier userIdentifier) {
        return (o) ((a) e.a(a)).a(userIdentifier);
    }

    public static void b(UserIdentifier userIdentifier) {
        ((a) e.a(a)).b(userIdentifier);
        if (userIdentifier.a(b)) {
            b = UserIdentifier.a;
        }
    }

    public static void a(b<UserIdentifier, o> bVar) {
        a = new a(bVar);
    }

    public static void c(UserIdentifier userIdentifier) {
        b = userIdentifier;
    }
}
