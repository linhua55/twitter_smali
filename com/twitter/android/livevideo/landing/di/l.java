package com.twitter.android.livevideo.landing.di;

import com.twitter.android.composer.aw;
import com.twitter.android.livevideo.landing.LiveVideoLandingActivity;
import com.twitter.android.livevideo.landing.a;
import com.twitter.android.livevideo.landing.c;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.app.common.base.n;
import com.twitter.app.common.inject.e;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.j;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.media.model.MediaType;
import defpackage.abr;
import defpackage.abt;
import defpackage.abu;
import defpackage.ape;

/* compiled from: Twttr */
public class l extends e {
    private final abu c;
    private final LiveVideoLandingActivity d;
    private final n e;
    private final a f;

    public l(LiveVideoLandingActivity liveVideoLandingActivity, t tVar, n nVar) {
        super(liveVideoLandingActivity, tVar);
        this.d = liveVideoLandingActivity;
        this.c = new abu(liveVideoLandingActivity);
        this.e = nVar;
        this.f = a.a(liveVideoLandingActivity.getIntent());
    }

    static abr a(c cVar) {
        return cVar.d();
    }

    ape<aw> a() {
        return this.c;
    }

    h a(a aVar) {
        return aVar.a((j) ((j) ((j) ((j) j.a(this.d.getIntent()).h(true)).b(2131363168)).b("timeline_tag", String.valueOf(aVar.a))).a("type", 3));
    }

    MediaAttachmentController a(Session session) {
        return MediaAttachmentController.a(this.d, this.d, "reply_composition", MediaType.h, 1, session);
    }

    n b() {
        return this.e;
    }

    abt c() {
        return this.d;
    }

    a d() {
        return this.f;
    }

    TwitterScribeItem e() {
        TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.a = Long.parseLong(this.f.a);
        twitterScribeItem.c = 28;
        return twitterScribeItem;
    }
}
