package com.twitter.android.moments.ui.fullscreen;

import aia;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewCompat;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.TextView;
import com.twitter.android.moments.data.w;
import com.twitter.android.moments.data.z;
import com.twitter.android.moments.ui.animation.MomentsActivityTransition;
import com.twitter.android.moments.ui.animation.MomentsActivityTransition$Type;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.af;
import com.twitter.model.moments.g;
import com.twitter.model.moments.k;
import com.twitter.util.math.Size;
import com.twitter.util.object.b;
import com.twitter.util.object.e;
import cql;
import defpackage.ckz;

/* compiled from: Twttr */
public class cx {
    private final ViewGroup a;
    private final Activity b;
    private final Resources c;
    private final b<ViewGroup, aia> d;
    private boolean e;
    private TextView f;
    private MediaImageView g;
    private ViewGroup h;
    private String i;
    private aia j;

    public cx(Activity activity, ViewGroup viewGroup, Resources resources, b<ViewGroup, aia> bVar) {
        this.a = viewGroup;
        this.b = activity;
        this.c = resources;
        this.d = bVar;
    }

    public void a(af afVar) {
        a();
        ab abVar = afVar.b;
        this.j.a(abVar);
        ((TextView) e.a(this.f)).setText(abVar.c);
        e.a(this.g);
        ((ViewGroup) e.a(this.h)).setOnClickListener(new cy(this, abVar, afVar));
    }

    public void a(af afVar, Tweet tweet) {
        a();
        ckz ckz = afVar.c.g;
        if (ckz != null) {
            MediaImageView mediaImageView = (MediaImageView) e.a(this.g);
            g a = k.a(afVar.c.e, Size.a(mediaImageView).e());
            String a2 = w.a(tweet, ckz.b, ckz.d);
            mediaImageView.a(z.a(a2, mediaImageView, a, ckz.c));
            this.i = a2;
        }
    }

    private boolean b() {
        return (this.g == null || !this.g.r() || this.i == null) ? false : true;
    }

    private void a(ab abVar, af afVar, String str, MediaImageView mediaImageView) {
        Intent b = MomentsFullScreenPagerActivity.b(this.b, afVar.b.b);
        MomentsActivityTransition.a(b, abVar, Size.a(mediaImageView), str, afVar.c.e, MomentsActivityTransition$Type.THUMBNAIL_TRANSITION);
        cql.a(this.b, b, mediaImageView);
    }

    private void b(af afVar) {
        this.b.startActivity(MomentsFullScreenPagerActivity.b(this.b, afVar.b.b));
        this.b.overridePendingTransition(2131034176, 2131034172);
    }

    @VisibleForTesting
    void a() {
        if (this.h == null) {
            LayoutInflater.from(this.a.getContext()).inflate(2130969011, this.a);
            this.h = (ViewGroup) this.a.findViewById(2131952751);
            this.j = (aia) this.d.a(this.h);
            this.f = (TextView) this.a.findViewById(2131952748);
            this.g = (MediaImageView) this.a.findViewById(2131952752);
            this.g.setScaleType(ScaleType.b);
        }
        this.a.setVisibility(0);
    }

    public void a(boolean z) {
        this.e = z;
    }

    private void c() {
        int integer = this.c.getInteger(2131755022);
        ViewCompat.animate(this.a).translationX(-this.c.getDimension(2131689694)).setInterpolator(new OvershootInterpolator()).setDuration((long) integer).withEndAction(new cz(this, integer)).start();
    }
}
