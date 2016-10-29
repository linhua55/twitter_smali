package com.twitter.library.media.manager;

import android.content.Context;
import com.twitter.internal.network.i;
import com.twitter.library.client.Session;
import com.twitter.library.network.a;
import com.twitter.media.request.ResourceRequestType;
import com.twitter.util.z;

/* compiled from: Twttr */
public class r {
    private final String a;
    private final Context b;
    private Session c;
    private ResourceRequestType d;
    private String e;
    private i f;
    private a g;
    private z<Double> h;
    private s i;

    public r(Context context, String str) {
        this.a = str;
        this.b = context;
    }

    public r a(Session session) {
        this.c = session;
        return this;
    }

    public r a(a aVar) {
        this.g = aVar;
        return this;
    }

    public r a(ResourceRequestType resourceRequestType) {
        this.d = resourceRequestType;
        return this;
    }

    public r a(String str) {
        this.e = str;
        return this;
    }

    public r a(z<Double> zVar) {
        this.h = zVar;
        return this;
    }

    public r a(i iVar) {
        this.f = iVar;
        return this;
    }

    public r a(s sVar) {
        this.i = sVar;
        return this;
    }

    public p a() {
        if (this.c != null && this.d != null && this.f != null) {
            return new p();
        }
        throw new IllegalStateException("Required parameters have not been set.");
    }
}
