package com.twitter.android.moments.ui.fullscreen;

import adi;
import afk;
import afy;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import cgl;
import cmc;
import com.twitter.android.av.audio.AudioCardError;
import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.g;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.k;
import com.twitter.model.moments.viewmodels.s;
import com.twitter.moments.core.ui.widget.sectionpager.a;
import com.twitter.util.collection.x;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;
import com.twitter.util.y;
import com.twitter.util.z;

/* compiled from: Twttr */
public class gr implements g<MediaImageView>, a {
    static final /* synthetic */ boolean a;
    private final s b;
    private final afk c;
    private final y<Event> d;
    private final fg e;
    private final w f;
    private final z<Event> g;
    private final bn<String, PageLoadingEvent> h;
    private final y i;
    private final z<ae> j;
    private final z<ac> k;
    private final l l;
    private boolean m;
    private boolean n;

    static {
        a = !gr.class.desiredAssertionStatus();
    }

    gr(s sVar, afk afk, fg fgVar, w wVar, y<Event> yVar, bn<String, PageLoadingEvent> bnVar, y yVar2, adi adi, float f, l lVar) {
        this.j = new gs(this);
        this.k = new gt(this);
        this.b = sVar;
        this.c = afk;
        this.e = fgVar;
        this.f = wVar;
        this.d = yVar;
        this.h = bnVar;
        this.l = lVar;
        this.g = new cq(this.c.c(), fgVar, adi);
        this.i = yVar2;
        this.i.a(this.j, this.k);
        this.l.a();
        if (this.i.a(sVar) != null) {
            this.h.a(this.b.h(), PageLoadingEventType.DONE_SUCCESS.a());
        } else {
            x b = this.i.b(sVar);
            if (b.c()) {
                this.h.a(this.b.h(), new i(new ac(sVar, (AudioCardError) b.b())));
            } else {
                this.h.a(this.b.h(), PageLoadingEventType.START_BUFFERING.a());
            }
        }
        Tweet n = sVar.n();
        if (a || n != null) {
            cgl aa = n.aa();
            if (a || aa != null) {
                cmc a = cmc.a("player_image", aa.N());
                afy c = this.c.c();
                if (a != null) {
                    Size a2;
                    Rect rect;
                    c.a(this);
                    c.a(new b(a.a));
                    com.twitter.model.moments.g a3 = k.a(sVar.a, f);
                    if (a3 == null) {
                        a2 = Size.a(a.b, a.c);
                        rect = null;
                    } else {
                        a2 = a3.f;
                        rect = a3.a();
                    }
                    c.a(a2, rect);
                    return;
                }
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static gr a(Context context, s sVar, y yVar, y<Event> yVar2, bn<String, PageLoadingEvent> bnVar, adi adi, cg cgVar, fx fxVar) {
        afk a = a(context, sVar.a, fxVar);
        MediaImageView b = a.c().b();
        fg fgVar = new fg(b, context.getResources().getFraction(2131820554, 1, 1), 1);
        View d = a.d();
        ProgressBar progressBar = (ProgressBar) d.findViewById(2131952801);
        w jVar = new j(b, (ProgressBar) d.findViewById(2131952800), (TextView) d.findViewById(2131952799), d.findViewById(2131952798), context.getResources(), progressBar, sVar.g(), sVar.h(), bnVar);
        Tweet n = sVar.n();
        float e = r.a(context).e();
        l lVar = new l(a, cgVar, yVar, sVar);
        if (a || n != null) {
            return new gr(sVar, a, fgVar, jVar, yVar2, bnVar, yVar, adi, e, lVar);
        }
        throw new AssertionError();
    }

    private static afk a(Context context, k kVar, fx fxVar) {
        afy a;
        LayoutInflater from = LayoutInflater.from(context);
        if (kVar.g) {
            a = afy.a(from, 2130969034, fxVar.b(), true);
        } else {
            a = afy.a(from, 2130969014, true);
        }
        return new afk(a.a(), a);
    }

    public View a() {
        return this.c.d();
    }

    public void b() {
        this.d.a(this.g);
        this.h.a(this.b.h(), PageLoadingEventType.SHOWN_ON_SCREEN.a());
    }

    public void c() {
        this.d.b(this.g);
    }

    public void d() {
        this.i.b(this.j, this.k);
        this.f.g();
        this.l.b();
    }

    public void a(float f) {
        this.e.a(f);
        if (this.n && Math.abs(f) <= 0.001f) {
            this.h.a(this.b.h(), PageLoadingEventType.ON_SHOW_WITH_MEDIA.a());
        }
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        this.h.a(this.b.h(), PageLoadingEventType.THUMBNAIL_LOADED.a());
        if (imageResponse.f() != null && this.b.a.g) {
            this.c.c().a((Bitmap) imageResponse.f()).a();
        }
    }
}
