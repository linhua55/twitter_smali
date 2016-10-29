package com.twitter.library.api.activity;

import android.content.Context;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
public class h extends b {
    private final long a;

    protected /* synthetic */ c f() {
        return b();
    }

    public h(Context context, Session session, long j) {
        super(context, h.class.getName(), session);
        this.a = j;
    }

    protected d a() {
        return K().a(RequestMethod.b).a("activity", "about_me", "unread").a("cursor", String.valueOf(this.a)).a("1.1").a();
    }

    protected as b() {
        return null;
    }
}
