package com.google.android.gms.ads;

import android.content.Context;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.ads.internal.client.ai;
import com.google.android.gms.ads.internal.client.v;

public class b {
    private final v a;
    private final Context b;
    private final ai c;

    b(Context context, ai aiVar) {
        this(context, aiVar, v.a());
    }

    b(Context context, ai aiVar, v vVar) {
        this.b = context;
        this.c = aiVar;
        this.a = vVar;
    }

    private void a(com.google.android.gms.ads.internal.client.b bVar) {
        try {
            this.c.a(this.a.a(this.b, bVar));
        } catch (Throwable e) {
            com.google.android.gms.ads.internal.util.client.b.b("Failed to load ad.", e);
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public void a(d dVar) {
        a(dVar.a());
    }
}
