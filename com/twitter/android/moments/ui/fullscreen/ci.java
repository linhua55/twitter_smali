package com.twitter.android.moments.ui.fullscreen;

import adi;
import afy;
import agd;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.moments.ui.fullscreen.PageLoadingEvent.PageLoadingEventType;
import com.twitter.android.moments.viewmodels.f;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.i;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.moments.core.ui.widget.sectionpager.a;
import com.twitter.util.y;
import com.twitter.util.z;

/* compiled from: Twttr */
public class ci implements i<ImageResponse>, a {
    private final MomentPage a;
    private final co b;
    private final fg c;
    private final y<Event> d;
    private final z<Event> e;
    private final bn<String, PageLoadingEvent> f;
    private final afy g;
    private boolean h;
    private boolean i;

    ci(MomentPage momentPage, afy afy, agd agd, co coVar, fg fgVar, y<Event> yVar, bn<String, PageLoadingEvent> bnVar, adi adi) {
        this.a = momentPage;
        this.g = afy;
        this.c = fgVar;
        this.d = yVar;
        this.e = new cq(this.g, fgVar, adi);
        this.b = coVar;
        this.f = bnVar;
        agd.a(this);
        agd.a(this.a, dl.a(this.a));
        this.f.a(this.a.h(), PageLoadingEventType.START_LOADING.a());
    }

    public static ci a(Context context, MomentPage momentPage, f fVar, y<Event> yVar, bn<String, PageLoadingEvent> bnVar, adi adi, fx fxVar) {
        afy a = afy.a(LayoutInflater.from(context), fVar.c(), fxVar, true);
        fg fgVar = new fg(a.b(), context.getResources().getFraction(2131820554, 1, 1), 1);
        return new ci(momentPage, a, agd.a(a, fVar), new co(a, context.getResources(), momentPage.h(), bnVar), fgVar, yVar, bnVar, adi);
    }

    public View a() {
        return this.g.a();
    }

    public void b() {
        if (!this.h) {
            this.f.a(this.a.h(), PageLoadingEventType.SHOWN_ON_SCREEN.a());
            this.d.a(this.e);
        }
    }

    public void c() {
        this.d.b(this.e);
    }

    public void d() {
        this.d.b(this.e);
        this.b.g();
    }

    public void a(float f) {
        this.c.a(f);
        if (this.i && Math.abs(f) <= 0.001f) {
            this.f.a(this.a.h(), PageLoadingEventType.ON_SHOW_WITH_MEDIA.a());
        }
    }

    public void a(ImageResponse imageResponse) {
        if (imageResponse.f() != null) {
            this.f.a(this.a.h(), PageLoadingEventType.DONE_SUCCESS.a());
            this.i = true;
            return;
        }
        this.f.a(this.a.h(), PageLoadingEventType.DONE_FAILED.a());
        this.h = true;
    }
}
