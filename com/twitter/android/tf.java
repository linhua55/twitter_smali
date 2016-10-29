package com.twitter.android;

import android.content.DialogInterface;
import com.twitter.app.common.base.m;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.model.core.Tweet;
import defpackage.bno;

/* compiled from: Twttr */
class tf implements m {
    final /* synthetic */ Session a;
    final /* synthetic */ Tweet b;
    final /* synthetic */ sn c;

    tf(sn snVar, Session session, Tweet tweet) {
        this.c = snVar;
        this.a = session;
        this.b = tweet;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i2 == -1) {
            az.a(this.c.g).a(bno.a(this.c.g, this.a, this.b), new tg(this));
            sn.a(this.c, "delete", this.b, null);
        }
    }
}
