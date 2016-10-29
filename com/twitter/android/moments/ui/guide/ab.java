package com.twitter.android.moments.ui.guide;

import adn;
import adr;
import ads;
import aeq;
import aew;
import aex;
import aho;
import aia;
import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import android.widget.TextView;
import bdl;
import cgu;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.av.t;
import com.twitter.android.moments.data.ag;
import com.twitter.android.moments.data.bf;
import com.twitter.android.moments.data.bn;
import com.twitter.android.moments.data.h;
import com.twitter.android.moments.data.s;
import com.twitter.android.moments.ui.fullscreen.df;
import com.twitter.android.moments.viewmodels.MomentGuideListItem;
import com.twitter.android.moments.viewmodels.MomentGuideListItem.Type;
import com.twitter.android.moments.viewmodels.n;
import com.twitter.android.moments.viewmodels.p;
import com.twitter.android.moments.viewmodels.q;
import com.twitter.app.common.inject.o;
import com.twitter.library.av.playback.ai;
import java.util.Set;

/* compiled from: Twttr */
class ab extends bdl<MomentGuideListItem> {
    private final p a;
    private final LayoutInflater b;
    private final t c;
    private final ads d;
    private final s e;
    private final s f;
    private final ag g;
    private final bn h;
    private final d i;
    private final Set<Long> j;
    private final e k;
    private final adr l;
    private final aho m;
    private final o n;

    ab(Context context, p pVar, LayoutInflater layoutInflater, adn adn, t tVar, s sVar, s sVar2, ag agVar, bn bnVar, d dVar, Set<Long> set, e eVar, aho aho, o oVar) {
        super(context);
        this.a = pVar;
        this.b = layoutInflater;
        this.d = adn.b();
        this.l = adn.d();
        this.c = tVar;
        this.e = sVar;
        this.f = sVar2;
        this.g = agVar;
        this.h = bnVar;
        this.i = dVar;
        this.j = set;
        this.k = eVar;
        this.m = aho;
        this.n = oVar;
        a(cgu.f());
    }

    protected int a(MomentGuideListItem momentGuideListItem) {
        return momentGuideListItem.b().ordinal();
    }

    public int getViewTypeCount() {
        return MomentGuideListItem.b;
    }

    protected View a(Context context, MomentGuideListItem momentGuideListItem, ViewGroup viewGroup) {
        View inflate;
        switch (ac.a[momentGuideListItem.b().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.b.inflate(2130969041, viewGroup, false);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return this.b.inflate(2130969047, viewGroup, false);
            case Util.TYPE_OTHER /*3*/:
                return this.b.inflate(2130969380, viewGroup, false);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                inflate = this.b.inflate(2130969042, viewGroup, false);
                inflate.setTag(new aj((ViewGroup) inflate, new h(new aeq(inflate), this.g, this.d), new bf(new aew(aex.a(inflate.getResources(), inflate, 2131952763, 2131952764)), this.h), this.a, this.e, this.f, this.i, aia.a(inflate), this.d, this.j));
                return inflate;
            case EbmlReader.TYPE_FLOAT /*5*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                View a = a(momentGuideListItem.b(), viewGroup);
                df dfVar = new df(i(), ai.a());
                aia b = aia.b(a);
                u uVar = new u(i(), b, this.a, this.b, (ViewGroup) a, this.k, this.e, this.f, this.g, this.l, this.h);
                aia aia = b;
                df dfVar2 = dfVar;
                ViewGroup viewGroup2 = (ViewGroup) a;
                u uVar2 = uVar;
                r rVar = new r(viewGroup2, new am(i(), aia, this.a, this.b, (ViewGroup) a, dfVar2, this.k, this.e, this.f, this.g, this.l, this.h, (com.twitter.app.common.util.t) i()), uVar2, this.l, this.c, this.i);
                a.setTag(rVar);
                this.n.a(rVar);
                return a;
            case C.ENCODING_DTS /*7*/:
                inflate = this.b.inflate(2130969038, viewGroup, false);
                this.m.a((RecyclerView) inflate.findViewById(2131952790)).a();
                return inflate;
            default:
                return null;
        }
    }

    private View a(Type type, ViewGroup viewGroup) {
        if (type == Type.HERO) {
            return this.b.inflate(2130969039, viewGroup, false);
        }
        if (type == Type.HERO_WITH_CATEGORY_PILLS) {
            ViewGroup viewGroup2 = (ViewGroup) this.b.inflate(2130969040, viewGroup, false);
            this.m.b((RecyclerView) viewGroup2.findViewById(2131952790)).a();
            return viewGroup2;
        }
        com.twitter.util.h.a("Invalid type " + type + " provided to inflateHeroView");
        return new Space(viewGroup.getContext());
    }

    protected void a(View view, Context context, MomentGuideListItem momentGuideListItem) {
        switch (ac.a[momentGuideListItem.b().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                ((TextView) view.findViewById(2131952748)).setText(((n) momentGuideListItem).a());
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                ((TextView) view.findViewById(2131952795)).setText(((com.twitter.android.moments.viewmodels.t) momentGuideListItem).a());
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                aj ajVar = (aj) view.getTag();
                ajVar.a(((q) momentGuideListItem).a);
                this.a.b(ajVar.a());
            case EbmlReader.TYPE_FLOAT /*5*/:
                ((r) view.getTag()).a(((com.twitter.android.moments.viewmodels.o) momentGuideListItem).a);
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                ((r) view.getTag()).a(((p) momentGuideListItem).a);
            default:
        }
    }
}
