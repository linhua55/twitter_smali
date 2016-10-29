package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import java.util.concurrent.Callable;

final class ol implements Callable<Void> {
    final /* synthetic */ oj a;
    final /* synthetic */ Context b;
    final /* synthetic */ AdRequestInfoParcel c;
    final /* synthetic */ Bundle d;

    ol(oj ojVar, Context context, AdRequestInfoParcel adRequestInfoParcel, Bundle bundle) {
        this.a = ojVar;
        this.b = context;
        this.c = adRequestInfoParcel;
        this.d = bundle;
    }

    public Void a() throws Exception {
        this.a.i.a(this.b, this.c.g.packageName, this.d);
        return null;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }
}
