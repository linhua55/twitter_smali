package com.twitter.android.moments.ui.guide;

import adt;
import aia;
import android.content.Context;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.moments.data.ag;
import com.twitter.android.moments.data.bn;
import com.twitter.android.moments.data.s;
import com.twitter.android.moments.data.z;
import com.twitter.android.moments.ui.AutoplayableVideoFillCropFrameLayout;
import com.twitter.android.moments.ui.FillCropFrameLayout;
import com.twitter.android.moments.ui.fullscreen.MomentsVideoPlayerView;
import com.twitter.android.moments.ui.fullscreen.df;
import com.twitter.android.moments.ui.fullscreen.en;
import com.twitter.android.moments.ui.video.b;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.android.moments.viewmodels.ab;
import com.twitter.app.common.util.t;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.au;
import com.twitter.library.widget.a;
import com.twitter.model.moments.g;
import com.twitter.model.moments.k;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
class am extends s<ab> implements a {
    private final df m;
    private final t n;
    private final com.twitter.app.common.util.a o;
    private MomentsVideoPlayerView p;
    private b q;
    private final float r;
    private boolean s;

    am(Context context, aia aia, p pVar, LayoutInflater layoutInflater, ViewGroup viewGroup, df dfVar, e eVar, s sVar, s sVar2, ag agVar, adt adt, bn bnVar, t tVar) {
        super(context, aia, pVar, layoutInflater, viewGroup, eVar, sVar, sVar2, agVar, adt, bnVar);
        this.o = new an(this);
        this.m = dfVar;
        this.n = tVar;
        TypedValue typedValue = new TypedValue();
        context.getResources().getValue(2131690194, typedValue, true);
        this.r = typedValue.getFloat();
    }

    public void a(ab abVar) {
        a((MomentModule) abVar);
        AutoplayableVideoFillCropFrameLayout autoplayableVideoFillCropFrameLayout = (AutoplayableVideoFillCropFrameLayout) this.c.findViewById(2131952788);
        b a = this.m.a(abVar.g());
        autoplayableVideoFillCropFrameLayout.setAutoplayableItem(this);
        autoplayableVideoFillCropFrameLayout.setAVPlayerAttachment(a.g());
        this.p = new MomentsVideoPlayerView(this.a, a.g(), new en(), Mode.e);
        autoplayableVideoFillCropFrameLayout.setForeground(autoplayableVideoFillCropFrameLayout.getResources().getDrawable(2130840192));
        autoplayableVideoFillCropFrameLayout.setOnClickListener(new ao(this, abVar));
        autoplayableVideoFillCropFrameLayout.addView(this.p);
        g a2 = k.a(abVar.b);
        Size a3 = z.a((MomentModule) abVar, this.r);
        if (a3 != null) {
            autoplayableVideoFillCropFrameLayout.a(a3, a2 != null ? a2.a() : null);
        }
        this.p.setAVPlayerListener(new ap(this, a3, autoplayableVideoFillCropFrameLayout, a2));
        this.q = a;
        if (this.s) {
            a.a();
            a.c();
        } else {
            a.b();
        }
        a.f().d(true);
    }

    public void a() {
        super.a();
        if (this.q != null) {
            this.q.e();
            this.m.a(this.q);
            this.q = null;
        }
        ((FillCropFrameLayout) this.c.findViewById(2131952788)).removeAllViews();
        this.p = null;
    }

    public void e() {
        this.n.a(this.o);
        if (this.q != null) {
            this.q.a();
            this.q.d();
        }
        this.s = true;
    }

    public void f() {
        if (this.q != null) {
            this.q.e();
        }
        this.n.b(this.o);
        this.s = false;
    }

    public boolean c() {
        return true;
    }

    public au aR_() {
        e();
        return j();
    }

    public au aS_() {
        f();
        return j();
    }

    public au h() {
        if (this.q != null) {
            this.q.b();
        }
        return j();
    }

    private au j() {
        return this.q != null ? this.q.g().h() : au.a;
    }

    public View i() {
        return this.p;
    }
}
