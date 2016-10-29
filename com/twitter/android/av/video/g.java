package com.twitter.android.av.video;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import bqk;
import com.twitter.android.av.AutoPlayBadgeView;
import com.twitter.android.av.bd;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.av;
import com.twitter.library.av.aw;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.client.s;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.util.object.b;
import defpackage.bcu;

/* compiled from: Twttr */
public class g<ActivityWithListenerRegistry extends Activity & s> extends k<ActivityWithListenerRegistry> {
    private av a;
    private final aw b;
    private final b<Context, ViewGroup> c;
    private final LayoutInflater d;

    public g(ActivityWithListenerRegistry activityWithListenerRegistry, ViewGroup viewGroup, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, OnClickListener onClickListener) {
        this(activityWithListenerRegistry, viewGroup, twitterScribeAssociation, aVDataSource, new aw(), onClickListener, new bd(), new h());
    }

    @VisibleForTesting
    g(ActivityWithListenerRegistry activityWithListenerRegistry, ViewGroup viewGroup, TwitterScribeAssociation twitterScribeAssociation, AVDataSource aVDataSource, aw awVar, OnClickListener onClickListener, bd bdVar, b<Context, ViewGroup> bVar) {
        super(activityWithListenerRegistry, viewGroup, twitterScribeAssociation, aVDataSource, bdVar, onClickListener);
        this.b = awVar;
        this.c = bVar;
        this.d = LayoutInflater.from(activityWithListenerRegistry);
    }

    public void a(bqk bqk, Mode mode) {
        Activity m = m();
        if (m != null) {
            this.a = this.b.a(m.getBaseContext());
            this.a.getView().setId(2131952522);
            ImageSpec l = this.g.l();
            if (l != null) {
                this.a.setImageSpec(l);
            } else {
                this.a.setPlaceholderDrawable(new ColorDrawable(m.getResources().getColor(bcu.faded_gray)));
            }
            this.a.getView().setOnClickListener(l());
            ViewGroup viewGroup = (ViewGroup) this.c.a(m);
            LayoutParams layoutParams = new LayoutParams(-1, -2);
            viewGroup.addView(this.a.getView(), layoutParams);
            this.f.addView(viewGroup, layoutParams);
            this.d.inflate(2130968636, viewGroup, true);
            ((AutoPlayBadgeView) this.f.findViewById(2131951997)).setAVDataSource(this.g);
        }
    }

    public void a() {
        if (this.a != null) {
            this.a.b();
            this.f.removeAllViews();
        }
    }

    public void b() {
        if (this.a != null) {
            this.a.a();
        }
    }
}
