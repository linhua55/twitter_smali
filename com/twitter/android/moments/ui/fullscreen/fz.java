package com.twitter.android.moments.ui.fullscreen;

import adi;
import afv;
import agv;
import android.app.Activity;
import android.view.LayoutInflater;
import bym;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.moments.data.ag;
import com.twitter.android.moments.data.bn;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.MomentPage.Type;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.model.moments.viewmodels.f;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.moments.core.ui.widget.sectionpager.d;
import com.twitter.util.y;

/* compiled from: Twttr */
class fz {
    private final Activity a;
    private final a b;
    private final LayoutInflater c;
    private final dm d;
    private final dz e;
    private final ag f;
    private final bn g;
    private final y<Event> h;
    private final adi i;
    private final fl j;
    private final t k;
    private final ft l;
    private final y m;
    private final com.twitter.android.card.a n;
    private final ek o;

    fz(Activity activity, LayoutInflater layoutInflater, a aVar, dm dmVar, ag agVar, bn bnVar, dz dzVar, y<Event> yVar, adi adi, fl flVar, t tVar, ft ftVar, y yVar2, com.twitter.android.card.a aVar2, ek ekVar) {
        this.a = activity;
        this.c = layoutInflater;
        this.b = aVar;
        this.d = dmVar;
        this.f = agVar;
        this.e = dzVar;
        this.h = yVar;
        this.i = adi;
        this.j = flVar;
        this.k = tVar;
        this.l = ftVar;
        this.m = yVar2;
        this.n = aVar2;
        this.g = bnVar;
        this.o = ekVar;
    }

    public d a(MomentPage momentPage) {
        if (momentPage instanceof f) {
            f fVar = (f) momentPage;
            if (!fVar.a()) {
                if (fVar.d() == Type.c) {
                    return new fp(this.a, fVar, this);
                }
                return new fo(this.a, fVar, this);
            }
        }
        if (momentPage.i() || momentPage.j()) {
            ab a = this.b.a();
            if (momentPage.i()) {
                Tweet tweet = null;
                if (momentPage instanceof o) {
                    tweet = ((o) momentPage).n();
                }
                return bj.a(this.a, a, tweet, this.f, this.g, this.i.e(), this.e, momentPage, this.l, this.b.c());
            } else if (bym.a(a)) {
                return new bp(a, afv.a(this.c), this.f, this.i.f(), this.j, this.d);
            } else {
                return new ey(afv.b(this.c), this.j, this.d);
            }
        }
        o oVar = (o) momentPage;
        switch (ga.a[oVar.d().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return hj.b(this.a, this.c, oVar, this.e, this.h, this.o, this.k, this.n);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return o.a(this.a, this.c, oVar, this.e, this.h, this.o, this.k, this.n, this.m);
            case Util.TYPE_OTHER /*3*/:
                return cs.a(this.a, this.c, oVar, this.e, this.h, this.o, this.k, this.n);
            default:
                return new gi(this.a, oVar, this.e, new agv(this.c));
        }
    }
}
