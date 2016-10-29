package com.twitter.android;

import android.content.Context;
import android.net.Uri;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.j;
import com.twitter.library.client.at;
import com.twitter.library.client.au;

/* compiled from: Twttr */
public class ko {
    private final boolean a;
    private final boolean b;
    private final boolean c;

    public ko(boolean z, boolean z2, boolean z3) {
        this.a = z;
        this.b = z2;
        this.c = z3;
    }

    public at a(Context context, Uri uri, g gVar) {
        j jVar;
        if (gVar == null || !(gVar instanceof h)) {
            jVar = new j();
        } else {
            jVar = (j) gVar.f();
        }
        return new au(uri, kp.a(jVar, this.a, this.b, this.c)).a(context.getString(2131363171)).a(2130839039).a("connect").a(jVar.b()).a(true).b(2131953442).a();
    }
}
