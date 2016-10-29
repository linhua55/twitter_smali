package com.twitter.android.nativecards.pollcompose;

import bmx;
import cgf;
import com.twitter.android.client.tweetuploadmanager.TweetUploadException;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.internal.android.service.ab;
import com.twitter.library.service.aa;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.z;
import defpackage.cme;

/* compiled from: Twttr */
class af extends ad {
    private final ObservablePromise<cme> a;
    private final c b;

    af(c cVar, cgf cgf, z<bmx> zVar, ObservablePromise<cme> observablePromise) {
        super(cVar.e(), cVar.l(), cVar.f(), cVar.o(), cgf, zVar);
        this.a = observablePromise;
        this.b = cVar;
    }

    public void a(ab<aa> abVar) {
        super.a(abVar);
        this.b.h().a((aa) l().b());
        cme a = a();
        if (a != null) {
            this.b.a(a.a);
            this.a.set(a);
            return;
        }
        this.a.setException(new TweetUploadException(this.b, "poll failed"));
    }
}
