package com.twitter.library.api;

import android.content.Context;
import android.os.Bundle;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
public class w extends b {
    public w(Context context, Session session) {
        this(context, w.class.getName(), session);
    }

    public w(Context context, String str, Session session) {
        super(context, str, session);
    }

    protected final d a() {
        Bundle bundle = this.o;
        e b = K().a(null).a(RequestMethod.b).b("i", "anonymize");
        if (bundle.containsKey("data")) {
            b.a("data", bundle.getString("data"));
        }
        a(b);
        return b.a();
    }

    protected c f() {
        return null;
    }

    protected void a(e eVar) {
    }
}
