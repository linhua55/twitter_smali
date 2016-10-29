package com.twitter.android.moments.ui.fullscreen;

import agg;
import agi;
import ahi;
import android.app.Activity;
import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import com.twitter.android.card.a;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.util.object.e;
import com.twitter.util.y;
import com.twitter.util.z;
import cym;
import rx.t;

/* compiled from: Twttr */
class hj extends cs implements fr {
    private final ahi b;

    public static hj b(Activity activity, LayoutInflater layoutInflater, o oVar, dz dzVar, y<Event> yVar, ek ekVar, t tVar, a aVar) {
        agg a = agg.a(layoutInflater);
        Tweet tweet = (Tweet) e.a(oVar.n());
        ahi ahi = new ahi(a, tweet);
        agi agi = new agi(a, ekVar, activity.getResources());
        fc.a(activity, a.d(), tweet, oVar, aVar).a();
        gk a2 = gk.a(activity, a.e(), tweet, dzVar, a.f());
        bh bhVar = new bh(a.c());
        return new hj(oVar, yVar, tVar, cym.a(), ahi, agi, bhVar, a2);
    }

    @VisibleForTesting
    hj(o oVar, y<Event> yVar, t tVar, t tVar2, ahi ahi, agi agi, z<Event> zVar, gk gkVar) {
        super(oVar, yVar, tVar, tVar2, ahi.d(), agi, zVar, gkVar);
        this.b = ahi;
    }

    public void g() {
        this.b.a();
    }

    public void a(AVMedia aVMedia) {
        this.b.b();
    }

    public void a(bd bdVar) {
        this.b.a(bdVar);
    }

    public void h() {
        this.b.c();
    }
}
