package com.twitter.android.moments.ui.fullscreen;

import adi;
import android.app.Activity;
import android.support.v4.app.LoaderManager;
import android.view.LayoutInflater;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.card.a;
import com.twitter.android.moments.viewmodels.aa;
import com.twitter.android.moments.viewmodels.x;
import com.twitter.app.common.util.t;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.MomentTweetStreamingVideoPage;
import com.twitter.model.moments.viewmodels.f;
import com.twitter.model.moments.viewmodels.i;
import com.twitter.model.moments.viewmodels.k;
import com.twitter.model.moments.viewmodels.m;
import com.twitter.model.moments.viewmodels.q;
import com.twitter.model.moments.viewmodels.s;
import com.twitter.model.moments.viewmodels.v;
import com.twitter.moments.core.ui.widget.sectionpager.b;
import com.twitter.moments.core.ui.widget.sectionpager.c;
import com.twitter.moments.core.ui.widget.sectionpager.d;
import com.twitter.util.collection.MutableList;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.y;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class ba {
    private final Activity a;
    private final y<Event> b;
    private final fz c;
    private final df d;
    private final y e;
    private final cg f;
    private final fb g;
    private final t h;
    private final adi i;
    private final bn<String, PageLoadingEvent> j;
    private final t k;
    private final ek l;
    private final a m;

    public ba(Activity activity, LayoutInflater layoutInflater, y<Event> yVar, LoaderManager loaderManager, fz fzVar, df dfVar, y yVar2, cg cgVar, t tVar, fb fbVar, adi adi, bn<String, PageLoadingEvent> bnVar, t tVar2, ek ekVar, a aVar) {
        this.b = yVar;
        this.c = fzVar;
        this.d = dfVar;
        this.a = activity;
        this.e = yVar2;
        this.f = cgVar;
        this.g = fbVar;
        this.h = tVar;
        this.i = adi;
        this.j = bnVar;
        this.k = tVar2;
        this.l = ekVar;
        this.m = aVar;
    }

    public c a(i iVar) {
        List a = MutableList.a(iVar.a.size());
        for (MomentPage a2 : iVar.a) {
            a.add(a(a2));
        }
        return new c(a, new bb(this, iVar));
    }

    public List<c> a(com.twitter.model.moments.viewmodels.a aVar) {
        List<c> arrayList = new ArrayList();
        for (i a : aVar.e()) {
            arrayList.add(a(a));
        }
        return arrayList;
    }

    b a(MomentPage momentPage) {
        switch (bd.a[momentPage.d().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case EbmlReader.TYPE_FLOAT /*5*/:
                return new b(new be(this.a, this, (f) momentPage));
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return new b(new bc(this, momentPage));
            default:
                throw new IllegalArgumentException("Unrecognized moment page type: " + momentPage.d());
        }
    }

    com.twitter.moments.core.ui.widget.sectionpager.a a(MomentPage momentPage, d dVar) {
        fx fxVar = (fx) ObjectUtils.a(dVar, fx.class, fx.a);
        switch (bd.a[momentPage.d().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return gr.a(this.a, (s) momentPage, this.e, this.b, this.j, this.i, this.f, fxVar);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return hd.a(this.a, (v) momentPage, this.j, this.k, this.l, this.m);
            case Util.TYPE_OTHER /*3*/:
                return ci.a(this.a, momentPage, new aa((q) momentPage), this.b, this.j, this.i, fxVar);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                MomentTweetStreamingVideoPage momentTweetStreamingVideoPage = (MomentTweetStreamingVideoPage) momentPage;
                fq fqVar = new fq(dVar);
                return gu.a(this.a, momentTweetStreamingVideoPage, this.b, this.j, this.d, this.f, this.h, fqVar, this.g, this.i, fxVar);
            case EbmlReader.TYPE_FLOAT /*5*/:
                m mVar = (m) momentPage;
                return hd.a(this.a, mVar, this.j, this.k, this.l);
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return ci.a(this.a, momentPage, new x((k) momentPage), this.b, this.j, this.i, fxVar);
            default:
                throw new IllegalArgumentException("Unrecognized moment page type: " + momentPage.d());
        }
    }

    com.twitter.moments.core.ui.widget.sectionpager.a a(String str) {
        return new gq(this.a, this.j, str);
    }
}
