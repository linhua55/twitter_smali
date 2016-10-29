package com.twitter.android;

import android.content.DialogInterface;
import bbu;
import com.twitter.app.common.base.m;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import defpackage.bnp;

/* compiled from: Twttr */
class mc implements m {
    final /* synthetic */ Session a;
    final /* synthetic */ Tweet b;
    final /* synthetic */ boolean c;
    final /* synthetic */ TwitterScribeLog d;
    final /* synthetic */ mb e;

    mc(mb mbVar, Session session, Tweet tweet, boolean z, TwitterScribeLog twitterScribeLog) {
        this.e = mbVar;
        this.a = session;
        this.b = tweet;
        this.c = z;
        this.d = twitterScribeLog;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i2 == -1) {
            mb.c(this.e).a(new bnp(mb.a(this.e), this.a, this.b.H, this.c), new md(this));
            bbu.a(this.d);
        }
    }
}
