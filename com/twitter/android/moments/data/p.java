package com.twitter.android.moments.data;

import android.content.Context;
import byi;
import com.twitter.library.client.bg;
import com.twitter.util.collection.x;
import com.twitter.util.object.b;
import defpackage.bmb;

/* compiled from: Twttr */
final class p implements b<x<String>, bmb> {
    final /* synthetic */ Context a;
    final /* synthetic */ bg b;
    final /* synthetic */ byi c;
    final /* synthetic */ String d;

    p(Context context, bg bgVar, byi byi, String str) {
        this.a = context;
        this.b = bgVar;
        this.c = byi;
        this.d = str;
    }

    public bmb a(x<String> xVar) {
        return new bmb(this.a, this.b.c(), this.c, this.d, (String) xVar.c(null));
    }
}
