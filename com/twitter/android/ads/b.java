package com.twitter.android.ads;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.LoaderManager;
import bfa;
import com.twitter.android.profiles.av;
import com.twitter.model.ads.e;
import com.twitter.util.serialization.n;
import defpackage.bfb;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class b extends av<e> implements bfb {
    private final WeakReference<Context> c;
    private final WeakReference<a> d;
    private final LoaderManager e;
    private final int f;

    public b(Context context, a aVar, LoaderManager loaderManager, int i) {
        this.c = new WeakReference(context);
        this.d = new WeakReference(aVar);
        this.e = loaderManager;
        this.f = i;
    }

    public String a() {
        return "ads_account_permissions";
    }

    protected void b() {
        Context context = (Context) this.c.get();
        if (context != null) {
            bfa.a(context, this.e, this.f, this);
        }
    }

    public void a(Bundle bundle) {
        super.a(bundle);
        a((e) this.a);
    }

    protected n<e> c() {
        return e.a;
    }

    public void a(e eVar) {
        a aVar = (a) this.d.get();
        if (eVar != null) {
            this.a = eVar;
            aVar.a((e) this.a);
        }
    }
}
