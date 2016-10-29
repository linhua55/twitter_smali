package com.google.android.gms.internal;

import android.content.Context;
import java.util.WeakHashMap;

@oi
public final class pd {
    private WeakHashMap<Context, pe> a;

    public pd() {
        this.a = new WeakHashMap();
    }

    public pb a(Context context) {
        pe peVar = (pe) this.a.get(context);
        pb a = (peVar == null || peVar.a() || !((Boolean) cj.al.c()).booleanValue()) ? new pc(context).a() : new pc(context, peVar.b).a();
        this.a.put(context, new pe(this, a));
        return a;
    }
}
