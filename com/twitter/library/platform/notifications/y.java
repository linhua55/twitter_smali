package com.twitter.library.platform.notifications;

import android.content.Context;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bmo;

/* compiled from: Twttr */
final class y extends z {
    final /* synthetic */ Context a;
    final /* synthetic */ boolean b;
    final /* synthetic */ boolean c;
    final /* synthetic */ String d;
    final /* synthetic */ int e;

    y(Context context, boolean z, boolean z2, String str, int i) {
        this.a = context;
        this.b = z;
        this.c = z2;
        this.d = str;
        this.e = i;
    }

    public void a(x xVar) {
        bmo bmo = (bmo) xVar;
        if (bmo.U()) {
            PushRegistration.a(this.a, this.b ? PushRegistration.b : PushRegistration.a, 1, this.c, this.d, this.e, bmo.g());
        } else if (bmo.b() == 134) {
            PushRegistration.a(this.a, this.d, "Device limit exceeded failure when updating push destinations");
        }
    }
}
