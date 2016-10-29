package com.twitter.android.moments.ui.fullscreen;

import adi;
import agy;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.VisibleForTesting;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.client.bo;
import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;
import com.twitter.android.moments.ui.video.b;
import com.twitter.app.common.util.t;
import com.twitter.library.av.VideoPlayerView;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.be;
import com.twitter.library.av.s;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.moments.g;
import com.twitter.model.moments.k;
import com.twitter.model.moments.viewmodels.MomentTweetStreamingVideoPage;
import com.twitter.moments.core.ui.widget.sectionpager.a;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;
import com.twitter.util.y;
import com.twitter.util.z;

/* compiled from: Twttr */
public class gu implements a {
    final com.twitter.app.common.util.a a;
    final s b;
    private final MomentTweetStreamingVideoPage c;
    private final agy d;
    private final fg e;
    private final b f;
    private final w g;
    private final df h;
    private final cg i;
    private final y<Event> j;
    private final bn<String, PageLoadingEvent> k;
    private final t l;
    private final z<Event> m;
    private final z<Boolean> n;
    private final fq o;
    private final fb p;
    private final adi q;
    private final bo r;
    private final float s;
    private boolean t;
    private boolean u;
    private boolean v;

    gu(MomentTweetStreamingVideoPage momentTweetStreamingVideoPage, agy agy, fg fgVar, b bVar, w wVar, df dfVar, cg cgVar, y<Event> yVar, bn<String, PageLoadingEvent> bnVar, t tVar, fq fqVar, fb fbVar, adi adi, bo boVar, float f) {
        this.a = new gv(this);
        this.b = new gw(this);
        this.n = new gx(this);
        this.c = momentTweetStreamingVideoPage;
        this.d = agy;
        this.e = fgVar;
        this.f = bVar;
        this.g = wVar;
        this.h = dfVar;
        this.i = cgVar;
        this.j = yVar;
        this.l = tVar;
        this.o = fqVar;
        this.p = fbVar;
        this.q = adi;
        this.r = boVar;
        this.m = e();
        this.k = bnVar;
        this.s = f;
        this.d.a(this.b);
        this.d.a(bVar.g());
        this.f.b();
        fqVar.g();
        tVar.a(this.a);
        ImageSpec o = be.o(momentTweetStreamingVideoPage.n());
        if (o != null) {
            a((int) o.d.x, (int) o.d.y);
        }
        this.d.k().b(new gy(this));
        if (this.c.b.g) {
            this.d.k().b(new gz(this));
        }
        if (!this.c.j() && !this.c.i() && this.r.b()) {
            agy.i();
            agy.a(new ha(this, agy));
        }
    }

    protected z<Event> e() {
        return new hb(this, this.d, this.e, this.q);
    }

    public static gu a(Activity activity, MomentTweetStreamingVideoPage momentTweetStreamingVideoPage, y<Event> yVar, bn<String, PageLoadingEvent> bnVar, df dfVar, cg cgVar, t tVar, fq fqVar, fb fbVar, adi adi, fx fxVar) {
        b a = dfVar.a(momentTweetStreamingVideoPage.n());
        agy a2 = a(activity, momentTweetStreamingVideoPage, a.g(), new en(), fxVar);
        w wVar = new w(a2.f(), a2.c(), a2.e(), a2.d(), activity.getResources(), a2.b(), momentTweetStreamingVideoPage.g(), momentTweetStreamingVideoPage.h(), bnVar);
        return new gu(momentTweetStreamingVideoPage, a2, new fg(a2.f(), activity.getResources().getFraction(2131820554, 1, 1), 1), a, wVar, dfVar, cgVar, yVar, bnVar, tVar, fqVar, fbVar, adi, bo.a(activity), r.a(activity).e());
    }

    @VisibleForTesting
    static agy a(Context context, MomentTweetStreamingVideoPage momentTweetStreamingVideoPage, AVPlayerAttachment aVPlayerAttachment, en enVar, fx fxVar) {
        LayoutInflater from = LayoutInflater.from(context);
        if (momentTweetStreamingVideoPage.b.g) {
            return agy.a(from, new VideoPlayerView(context, aVPlayerAttachment, enVar, Mode.e), fxVar.b());
        }
        return agy.a(from, new MomentsVideoPlayerView(context, aVPlayerAttachment, enVar, Mode.e));
    }

    public View a() {
        return this.d.a();
    }

    public void b() {
        if (!this.t) {
            this.k.a(this.c.h(), PageLoadingEventType.SHOWN_ON_SCREEN.a());
        }
        this.f.g().i();
        this.f.f().d(this.i.a());
        f();
        this.u = true;
        this.j.a(this.m);
        this.i.c().a(this.n);
    }

    public void c() {
        this.u = false;
        this.f.f().a(0);
        this.f.e();
        this.f.g().j();
        this.j.b(this.m);
        this.i.c().b(this.n);
    }

    public void d() {
        this.l.b(this.a);
        this.h.a(this.f, !this.l.isChangingConfigurations());
        this.g.g();
    }

    public void a(float f) {
        this.e.a(f);
        AVPlayer f2 = this.f.f();
        f2.a(h.a(1.0f - Math.abs(f)));
        f2.b(1.0f - Math.abs(f));
        if (this.v && f2.T()) {
            this.k.a(this.c.h(), PageLoadingEventType.ON_SHOW_WITH_MEDIA.a());
        }
        if ((f == 0.0f ? 1 : null) != null) {
            this.f.g().i();
            f();
        }
    }

    private void f() {
        if (!this.r.b()) {
            this.f.c();
        }
    }

    private void a(int i, int i2) {
        Size a;
        Rect rect;
        g a2 = k.a(this.c.b, this.s);
        if (a2 == null) {
            a = Size.a(i, i2);
            rect = null;
        } else {
            a = a2.f;
            rect = a2.a();
        }
        this.d.a(a, rect);
    }
}
