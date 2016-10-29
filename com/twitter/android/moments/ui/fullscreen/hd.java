package com.twitter.android.moments.ui.fullscreen;

import ahc;
import ahd;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.viewmodels.m;
import com.twitter.model.moments.viewmodels.v;
import com.twitter.moments.core.ui.widget.sectionpager.a;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class hd implements a {
    private final fe a;
    private final ahc b;

    hd(v vVar, ahc ahc, ahd ahd, bn<String, PageLoadingEvent> bnVar, t tVar, fe feVar) {
        this.b = ahc;
        ahd.a(vVar, vVar.n());
        ahd.a(tVar);
        bnVar.a(vVar.h(), PageLoadingEventType.DONE_SUCCESS.a());
        this.a = feVar;
        this.a.a();
    }

    public static hd a(Activity activity, v vVar, bn<String, PageLoadingEvent> bnVar, t tVar, ek ekVar, com.twitter.android.card.a aVar) {
        ahc a = ahc.a(LayoutInflater.from(activity));
        return new hd(vVar, a, new ahd(activity.getResources(), a, ekVar), bnVar, tVar, fc.a(activity, a.a(), (Tweet) e.a(vVar.n()), vVar, aVar));
    }

    public static hd a(Activity activity, m mVar, bn<String, PageLoadingEvent> bnVar, t tVar, ek ekVar) {
        ahc a = ahc.a(LayoutInflater.from(activity));
        return new hd(mVar, a, new ahd(activity.getResources(), a, ekVar), bnVar, tVar, new fs((ViewGroup) a.a().findViewById(2131952782), (Tweet) e.a(mVar.n())));
    }

    public View a() {
        return this.b.a();
    }

    public void b() {
    }

    public void c() {
    }

    public void d() {
        this.a.b();
    }

    public void a(float f) {
    }
}
