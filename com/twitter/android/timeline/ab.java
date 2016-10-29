package com.twitter.android.timeline;

import aef;
import aej;
import ael;
import aem;
import android.app.Activity;
import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.moments.viewmodels.j;
import com.twitter.android.moments.viewmodels.z;
import com.twitter.android.widget.MomentsCardCarouselItemView;
import com.twitter.android.widget.ex;
import com.twitter.android.widget.l;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.moments.a;
import com.twitter.model.moments.as;
import com.twitter.util.h;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.b;

/* compiled from: Twttr */
public class ab implements l<ba> {
    private final Activity a;
    private final TwitterScribeAssociation b;
    private final b<Activity, aef> c;
    private final b<Activity, aem> d;
    private final b<as, j> e;
    private final ag f;
    private final ae g;

    public /* synthetic */ void a(View view, Object obj, int i) {
        b(view, (ba) obj, i);
    }

    public /* synthetic */ void b(View view, Object obj, int i) {
        a(view, (ba) obj, i);
    }

    public static ab a(Activity activity, TwitterScribeAssociation twitterScribeAssociation, bg bgVar, ag agVar) {
        return new ab(activity, twitterScribeAssociation, aej.a(bgVar), aem.a, new z(), agVar, new ae());
    }

    public ab(Activity activity, TwitterScribeAssociation twitterScribeAssociation, b<Activity, aef> bVar, b<Activity, aem> bVar2, z zVar, ag agVar, ae aeVar) {
        this.a = activity;
        this.b = twitterScribeAssociation;
        this.c = bVar;
        this.d = bVar2;
        this.e = zVar;
        this.f = agVar;
        this.g = aeVar;
    }

    public View a(Context context, ba baVar, int i) {
        View momentsCardCarouselItemView = new MomentsCardCarouselItemView(context);
        a(momentsCardCarouselItemView, baVar, i);
        return momentsCardCarouselItemView;
    }

    public void a(View view, ba baVar, int i) {
        h.b(view instanceof MomentsCardCarouselItemView);
        MomentsCardCarouselItemView momentsCardCarouselItemView = (MomentsCardCarouselItemView) ObjectUtils.a(view);
        j jVar = (j) this.e.a(baVar.a);
        if (momentsCardCarouselItemView.getBoundMomentId() != jVar.b()) {
            ael ael;
            if (baVar instanceof ex) {
                ael = (aem) this.d.a(this.a);
                ael.a(a(this.a, (ex) ObjectUtils.a(baVar), i));
            } else {
                aef aef = (aef) this.c.a(this.a);
                a aVar = baVar.a.b.o;
                aef.a(null);
                aef.a(aVar);
                aef.a(a(this.a, baVar, i));
                ael = aef;
            }
            ael.a(jVar, this.b);
            ael.b();
            momentsCardCarouselItemView.a(ael);
        }
    }

    public void b(View view, ba baVar, int i) {
    }

    @VisibleForTesting
    OnClickListener a(Activity activity, ba baVar, int i) {
        return new ac(this, baVar, i, activity);
    }

    private OnClickListener a(Activity activity, ex exVar, int i) {
        return new ad(this, exVar, i, activity);
    }
}
