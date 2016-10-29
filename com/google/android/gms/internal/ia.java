package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

class ia implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ VersionInfoParcel b;
    final /* synthetic */ ic c;
    final /* synthetic */ y d;
    final /* synthetic */ String e;
    final /* synthetic */ hz f;

    ia(hz hzVar, Context context, VersionInfoParcel versionInfoParcel, ic icVar, y yVar, String str) {
        this.f = hzVar;
        this.a = context;
        this.b = versionInfoParcel;
        this.c = icVar;
        this.d = yVar;
        this.e = str;
    }

    public void run() {
        hz.a(this.f, this.a, this.b, this.c, this.d).b(this.e);
    }
}
