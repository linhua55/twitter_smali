package com.twitter.android.businessprofiles;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import bft;
import com.twitter.android.profiles.av;
import com.twitter.model.businessprofiles.m;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.serialization.n;
import defpackage.bfu;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class d extends av<m> implements bfu {
    private final WeakReference<Context> c;
    private final WeakReference<c> d;
    private final LoaderManager e;
    private final int f;
    private final TwitterUser g;
    private final String h;

    public d(Context context, c cVar, LoaderManager loaderManager, int i, TwitterUser twitterUser, String str) {
        this.c = new WeakReference(context);
        this.d = new WeakReference(cVar);
        this.e = loaderManager;
        this.f = i;
        this.g = twitterUser;
        this.h = str;
    }

    public String a() {
        return "business_profile";
    }

    protected void b() {
        Context context = (Context) this.c.get();
        if (context != null) {
            bft.a(context, this.e, this.g, this.f, this, this.h);
        }
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        a((m) this.a);
    }

    protected n<m> c() {
        return m.a;
    }

    public void a(m mVar) {
        c cVar = (c) this.d.get();
        if (mVar != null) {
            this.a = mVar;
            cVar.a((m) this.a);
        }
    }
}
