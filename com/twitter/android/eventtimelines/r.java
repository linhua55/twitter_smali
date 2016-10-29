package com.twitter.android.eventtimelines;

import android.app.Application;
import android.content.res.Resources;
import com.twitter.app.common.inject.d;
import com.twitter.app.common.inject.t;
import com.twitter.util.aj;
import java.util.Random;

/* compiled from: Twttr */
public class r extends d {
    private final l a;
    private final t b;

    public r(l lVar, t tVar) {
        this.a = lVar;
        this.b = tVar;
    }

    static Resources a(Application application) {
        return application.getResources();
    }

    static Random a() {
        return aj.a;
    }

    public l b() {
        return this.a;
    }

    public SearchTimelineState c() {
        return (SearchTimelineState) this.b.a("search_timeline_presenter");
    }

    static com.twitter.app.common.di.d a(o oVar) {
        return oVar;
    }
}
