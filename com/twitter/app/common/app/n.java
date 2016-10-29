package com.twitter.app.common.app;

import auk;
import com.twitter.database.schema.DraftsSchema;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import uq;

/* compiled from: Twttr */
public abstract class n extends o implements m {
    public abstract Session a();

    public abstract di i();

    public abstract DraftsSchema p();

    public abstract auk q();

    public abstract uq r();

    public static n s() {
        return (n) ObjectUtils.a(e.a(o.t()), n.class);
    }
}
