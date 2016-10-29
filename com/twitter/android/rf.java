package com.twitter.android;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.annotation.VisibleForTesting;
import android.text.SpannableStringBuilder;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.TextView;
import bbl;
import bbn;
import bbu;
import bym;
import cgu;
import chj;
import cni;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.twitter.android.av.ad;
import com.twitter.android.revenue.d;
import com.twitter.android.revenue.p;
import com.twitter.android.revenue.y;
import com.twitter.android.timeline.ab;
import com.twitter.android.timeline.af;
import com.twitter.android.timeline.ag;
import com.twitter.android.timeline.al;
import com.twitter.android.timeline.ar;
import com.twitter.android.timeline.aw;
import com.twitter.android.timeline.az;
import com.twitter.android.timeline.b;
import com.twitter.android.timeline.bb;
import com.twitter.android.timeline.be;
import com.twitter.android.timeline.bi;
import com.twitter.android.timeline.bp;
import com.twitter.android.timeline.bv;
import com.twitter.android.timeline.bz;
import com.twitter.android.timeline.ca;
import com.twitter.android.timeline.cb;
import com.twitter.android.timeline.cd;
import com.twitter.android.timeline.cf;
import com.twitter.android.timeline.ck;
import com.twitter.android.timeline.h;
import com.twitter.android.timeline.s;
import com.twitter.android.timeline.t;
import com.twitter.android.timeline.v;
import com.twitter.android.timeline.x;
import com.twitter.android.timeline.z;
import com.twitter.android.trends.a;
import com.twitter.android.trends.k;
import com.twitter.android.util.av;
import com.twitter.android.widget.AutoPlayableCarouselRowView;
import com.twitter.android.widget.CarouselRowView;
import com.twitter.android.widget.WhoToFollowUsersView;
import com.twitter.android.widget.dl;
import com.twitter.android.widget.ew;
import com.twitter.android.widget.ey;
import com.twitter.android.widget.j;
import com.twitter.android.widget.m;
import com.twitter.android.widget.n;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.config.c;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ao;
import com.twitter.library.view.aa;
import com.twitter.library.widget.InlineDismissView;
import com.twitter.library.widget.TimelineMessageView;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.bg;
import com.twitter.model.timeline.bc;
import com.twitter.model.timeline.bn;
import com.twitter.model.timeline.e;
import com.twitter.model.topic.i;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.ui.r;
import con;
import cpb;
import defpackage.bcu;
import defpackage.bdc;
import defpackage.bdd;
import defpackage.buf;
import defpackage.chg;
import defpackage.cok;
import java.util.HashMap;
import java.util.List;

/* compiled from: Twttr */
public class rf extends gy implements dl {
    private SparseArray<Drawable> A;
    private boolean B;
    private final boolean C;
    private List<Long> D;
    private final TwitterScribeAssociation E;
    private final ag F;
    private final cf G;
    private final ck H;
    private final sn I;
    private final ca J;
    private final ab K;
    private final bp L;
    private final boolean M;
    private final d N;
    private final p O;
    private final bn P;
    private final b Q;
    private final boolean R;
    private final int i;
    private final x j;
    private final cb k;
    private final af l;
    private final yj m;
    private final sj n;
    private final HashMap<String, Integer> o;
    private final ad p;
    private int q;
    private kr<View, cni> r;
    private final kr<View, aw> s;
    private final kr<View, aw> t;
    private final LayoutInflater u;
    private final k v;
    private final int w;
    private final int x;
    private final s y;
    private av z;

    public rf(TwitterFragmentActivity twitterFragmentActivity, int i, boolean z, aa aaVar, af afVar, x xVar, cb cbVar, yj yjVar, sj sjVar, FriendshipCache friendshipCache, TwitterScribeAssociation twitterScribeAssociation, boolean z2, cf cfVar, ck ckVar, ag agVar, s sVar, sn snVar, com.twitter.ui.view.s sVar2, kr<View, aw> krVar, kr<View, aw> krVar2, d dVar, p pVar, ad adVar, bn bnVar) {
        super(twitterFragmentActivity, z, aaVar, friendshipCache, i, twitterScribeAssociation, sVar2);
        this.o = new HashMap();
        this.i = i;
        this.l = afVar;
        this.j = xVar;
        this.k = cbVar;
        this.m = yjVar;
        this.n = sjVar;
        this.u = LayoutInflater.from(twitterFragmentActivity);
        this.x = ViewConfiguration.get(twitterFragmentActivity).getScaledTouchSlop();
        k();
        this.v = new k(twitterFragmentActivity.getResources());
        this.C = z2;
        this.F = agVar;
        this.G = cfVar;
        this.H = ckVar;
        this.y = sVar;
        this.E = twitterScribeAssociation;
        this.w = 2130839026;
        this.I = snVar;
        this.M = c.a("android_profile_carousel_redesign_4679", new String[]{"enabled"});
        this.J = new ca(this.M ? 2130969124 : 2130969220, friendshipCache, this.m);
        this.L = new bp(this.a, this.d, this.I, friendshipCache, y.f(), sVar2);
        this.K = ab.a(this.a, this.E, this.c, this.F);
        this.s = krVar;
        this.t = krVar2;
        this.N = dVar;
        this.O = pVar;
        this.p = adVar;
        this.Q = new b();
        this.P = bnVar;
        this.R = com.twitter.config.d.a("timeline_curation_enabled");
    }

    public void a(List<Long> list) {
        this.D = list;
    }

    protected chj<aw> a(int i) {
        return new chg(new com.twitter.android.timeline.av(true, i));
    }

    private void k() {
        if (this.i == 28) {
            this.A = a.a(this.a);
        }
    }

    public int getViewTypeCount() {
        return 31;
    }

    public int getItemViewType(int i) {
        aw awVar = (aw) getItem(i);
        if (awVar != null) {
            return a(awVar);
        }
        return 0;
    }

    protected int a(aw awVar) {
        ar c = awVar.c();
        int i = c.d;
        int i2 = c.c;
        boolean z = c.h;
        switch (i2) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (bc.c(i)) {
                    return 3;
                }
                if (bc.d(i)) {
                    return 4;
                }
                if (bc.m(i)) {
                    return a(this.P.b, c, 8, 22);
                }
                if (bc.f(i)) {
                    return this.P.j ? 18 : 8;
                } else if (this.C && d(awVar)) {
                    return 19;
                } else {
                    if (bc.o(i)) {
                        return a(this.P.c, c, 26, 20);
                    }
                    if (this.D != null && this.D.contains(Long.valueOf(c.a))) {
                        return 8;
                    }
                    if (bc.r(i) && !bym.a()) {
                        return 8;
                    }
                    if (awVar.c().k) {
                        return 26;
                    }
                    if (bc.e(i) && ((bb) awVar).b.c() && !this.P.l) {
                        return 8;
                    }
                }
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (z) {
                    return 7;
                }
                if (bc.b(i)) {
                    return 2;
                }
                if (bc.l(i)) {
                    return a(this.P.b, c, 26, 12);
                }
                if (bc.n(i)) {
                    return a(this.P.d, c, 26, 21);
                }
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return bc.v(i) ? 11 : 10;
            case C.ENCODING_DTS /*7*/:
                return e(awVar);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                if (bc.p(i)) {
                    return a(awVar, c);
                }
                break;
            case com.facebook.shimmer.b.ShimmerFrameLayout_fixed_height /*9*/:
                if (bc.s(i)) {
                    if (bym.a()) {
                        return 25;
                    }
                    return 8;
                }
                break;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                if (this.P.h) {
                    return 27;
                }
                return 8;
            case com.facebook.shimmer.b.ShimmerFrameLayout_relative_width /*11*/:
                if (!this.P.i) {
                    return 8;
                }
                if ("tweet".equals(this.N.b(((com.twitter.android.timeline.a) awVar).a))) {
                    return 28;
                }
                return 30;
            case Atom.FULL_HEADER_SIZE /*12*/:
                return a(bym.k(), c, 26, 29);
            case com.facebook.shimmer.b.ShimmerFrameLayout_shape /*13*/:
                return a(this.P.k, c, 8, 5);
            case com.facebook.shimmer.b.ShimmerFrameLayout_tilt /*14*/:
                return 8;
        }
        return super.a(awVar);
    }

    private static int a(boolean z, ar arVar, int i, int i2) {
        if (z) {
            return arVar.k ? i : i2;
        } else {
            return 8;
        }
    }

    public boolean b(int i) {
        return getItemViewType(i) == 11;
    }

    public View a(Context context, aw awVar, ViewGroup viewGroup) {
        View inflate;
        switch (a(awVar)) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                inflate = this.u.inflate(2130968855, null);
                inflate.setTag(new ro().a(new ri(inflate)).a(0).a());
                return inflate;
            case Util.TYPE_OTHER /*3*/:
                return l();
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return l();
            case EbmlReader.TYPE_FLOAT /*5*/:
                return l(viewGroup);
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return c(viewGroup);
            case C.ENCODING_DTS /*7*/:
                return d(2130968865);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
            case bdd.AppCompatTheme_actionModeSplitBackground /*30*/:
                return c(context);
            case com.facebook.shimmer.b.ShimmerFrameLayout_fixed_height /*9*/:
                return d(viewGroup);
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
            case com.facebook.shimmer.b.ShimmerFrameLayout_relative_width /*11*/:
                return a(context);
            case Atom.FULL_HEADER_SIZE /*12*/:
            case bdd.TweetView_mediaTopMargin /*21*/:
                return d(2130968858);
            case com.facebook.shimmer.b.ShimmerFrameLayout_shape /*13*/:
                return e(viewGroup);
            case com.facebook.shimmer.b.ShimmerFrameLayout_tilt /*14*/:
                return g(viewGroup);
            case bdd.TwitterButton_strokeWidth /*15*/:
                return h(viewGroup);
            case Atom.LONG_HEADER_SIZE /*16*/:
                return i(viewGroup);
            case bdd.TwitterButton_bounded /*17*/:
                return f(viewGroup);
            case bdd.TwitterButton_knockout /*18*/:
                return a(viewGroup);
            case bdd.TwitterButton_iconLayout /*19*/:
                inflate = d(context);
                a(inflate);
                return inflate;
            case bdd.TweetView_mediaDivider /*23*/:
                return a(context, viewGroup);
            case bdd.TweetView_autoLink /*24*/:
                return a(viewGroup, this.J);
            case bdd.TweetView_linkSelectedColor /*25*/:
                return b(viewGroup);
            case bdd.TweetView_previewFlags /*26*/:
                return j(viewGroup);
            case OggUtil.PAGE_HEADER_SIZE /*27*/:
                return k(viewGroup);
            case bdd.TweetView_inlineActionBarPaddingNormal /*28*/:
                return super.a(context, awVar, viewGroup);
            case bdd.TweetView_tweetViewLayoutId /*29*/:
                return a(viewGroup, this.K);
            default:
                return super.a(context, awVar, viewGroup);
        }
    }

    private View a(ViewGroup viewGroup) {
        CarouselRowView carouselRowView = (CarouselRowView) this.u.inflate(2130968875, null);
        rh rhVar = new rh(carouselRowView, new j(i(), this.L));
        carouselRowView.setTag(new ro().a(rhVar).a(6).a());
        rhVar.a.setOnPageChangeListener(new m(rhVar.a, viewGroup, this.x, new com.twitter.android.timeline.bn(this.b)));
        return carouselRowView;
    }

    private View a(ViewGroup viewGroup, ca caVar) {
        CarouselRowView carouselRowView = (CarouselRowView) this.u.inflate(2130968877, null);
        j jVar = new j(i(), caVar);
        if (this.M) {
            jVar.a(viewGroup.getResources().getFraction(2131820545, 1, 1));
        }
        rh rhVar = new rh(carouselRowView, jVar);
        carouselRowView.setTag(new ro().a(rhVar).a(6).a());
        rhVar.a.setOnPageChangeListener(new m(rhVar.a, viewGroup, this.x, new bz(this.b, this.H, this.E, this.c.c().g())));
        rhVar.a.setDismissClickListener(this.k);
        return carouselRowView;
    }

    private View a(ViewGroup viewGroup, ab abVar) {
        AutoPlayableCarouselRowView autoPlayableCarouselRowView = (AutoPlayableCarouselRowView) this.u.inflate(2130968864, null);
        autoPlayableCarouselRowView.setAutoPlayableItemPositionListener(this.p);
        j ewVar = new ew(i(), abVar);
        ey.a(ewVar, i());
        rh rhVar = new rh(autoPlayableCarouselRowView, ewVar);
        autoPlayableCarouselRowView.setTag(new ro().a(rhVar).a(6).a());
        rhVar.a.setOnPageChangeListener(new m(rhVar.a, viewGroup, this.x, this.F != null ? new com.twitter.android.timeline.aa(this.F) : n.c));
        rhVar.a.setDismissClickListener(this.l);
        return autoPlayableCarouselRowView;
    }

    private View b(ViewGroup viewGroup) {
        ViewGroup viewGroup2 = (ViewGroup) this.u.inflate(2130969053, viewGroup, false);
        rl rlVar = new rl(viewGroup2);
        viewGroup2.setTag(new ro().a(rlVar).a(8).a());
        rlVar.b.b().setTextSize(0, ao.a);
        rlVar.a.getDrawable().setColorFilter(i().getResources().getColor(bcu.twitter_blue), Mode.SRC_IN);
        return viewGroup2;
    }

    private View c(ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130969454, viewGroup, false);
        rp rpVar = new rp(inflate);
        rpVar.c.setTextSize(0, this.v.a());
        inflate.setTag(new ro().a(rpVar).a(2).a());
        return inflate;
    }

    private View d(ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130969467, viewGroup, false);
        float a = this.v.a();
        float c = this.v.c();
        ru ruVar = new ru(inflate);
        ruVar.e.b.setTextSize(0, a);
        ruVar.b.setTextSize(0, a);
        ruVar.a.setTextSize(0, a);
        ruVar.g.setTextSize(0, c);
        inflate.setTag(new ro().a(ruVar).a(5).a("trendsplus").a());
        return inflate;
    }

    private View e(ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130969471, viewGroup, false);
        float a = this.v.a();
        float c = this.v.c();
        rt rtVar = new rt(inflate);
        rtVar.e.b.setTextSize(0, a);
        rtVar.b.setTextSize(0, a);
        rtVar.c.setTextSize(0, c);
        inflate.setTag(new ro().a(rtVar).a(5).a("trendsplus").a());
        return inflate;
    }

    private View f(ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130969470, viewGroup, false);
        float a = this.v.a();
        rt rtVar = new rt(inflate);
        rtVar.e.b.setTextSize(0, a);
        rtVar.b.setTextSize(0, a);
        inflate.setTag(new ro().a(rtVar).a(5).a("trendsplus").a());
        return inflate;
    }

    private View g(ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130969457, viewGroup, false);
        float a = this.v.a();
        ru ruVar = new ru(inflate);
        ruVar.e.b.setTextSize(0, a);
        ruVar.b.setTextSize(0, a);
        ruVar.a.setTextSize(0, a);
        inflate.setTag(new ro().a(ruVar).a(5).a("trendsplus").a());
        return inflate;
    }

    private View h(ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130969464, viewGroup, false);
        float a = this.v.a();
        float b = this.v.b();
        rs rsVar = new rs(inflate);
        rsVar.b.b.setTextSize(0, b);
        rsVar.a.setTextSize(0, a);
        inflate.setTag(new ro().a(rsVar).a(5).a("trendsplus").a());
        return inflate;
    }

    private View i(ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130969465, viewGroup, false);
        float a = this.v.a();
        float b = this.v.b();
        rr rrVar = new rr(inflate);
        rrVar.c.b.setTextSize(0, b);
        rrVar.b.setTextSize(0, a);
        inflate.setTag(new ro().a(rrVar).a(5).a("trendsplus").a());
        return inflate;
    }

    private View d(int i) {
        return a(i, null);
    }

    View a(int i, ViewGroup viewGroup) {
        View inflate = this.u.inflate(i, viewGroup, false);
        inflate.setTag(new ro().a(new qm(inflate)).a(3).a());
        return inflate;
    }

    private View l() {
        View inflate = this.u.inflate(2130968856, null);
        a(inflate);
        return inflate;
    }

    private View c(Context context) {
        return new View(context);
    }

    protected View a(Context context) {
        View groupedRowView = new GroupedRowView(context);
        UmfInlinePromptView umfInlinePromptView = new UmfInlinePromptView(context);
        umfInlinePromptView.setLayoutParams(new MarginLayoutParams(-1, -2));
        umfInlinePromptView.e();
        groupedRowView.addView(umfInlinePromptView);
        groupedRowView.setTag(new rj(umfInlinePromptView));
        return groupedRowView;
    }

    protected View a(Context context, ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130968881, viewGroup, false);
        WhoToFollowUsersView whoToFollowUsersView = (WhoToFollowUsersView) ((GroupedRowView) inflate).getChildAt(0);
        whoToFollowUsersView.setWhoToFollowUserClickListener(this.m);
        inflate.setTag(new ro().a(whoToFollowUsersView).a(7).a());
        return inflate;
    }

    private View j(ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130968861, viewGroup, false);
        inflate.setTag(new hu((InlineDismissView) inflate.findViewById(2131952528)));
        return inflate;
    }

    private View k(ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130968873, viewGroup, false);
        TimelineMessageView timelineMessageView = (TimelineMessageView) inflate.findViewById(2131952531);
        inflate.setTag(new ro().a(new rm(timelineMessageView)).a(9).a());
        timelineMessageView.a(this.n);
        return inflate;
    }

    private View l(ViewGroup viewGroup) {
        View inflate = this.u.inflate(2130968874, viewGroup, false);
        inflate.setTag(new ro().a(new rk(inflate)).a(10).a());
        return inflate;
    }

    protected void a(View view, com.twitter.android.timeline.p pVar) {
        rj rjVar = (rj) view.getTag();
        com.twitter.model.timeline.s sVar = rjVar.a.a;
        if (sVar != null && sVar.equals(pVar.a) && rjVar.a.d()) {
            rjVar.a.c();
            rjVar.a.e();
            return;
        }
        rjVar.a.a(pVar.a);
    }

    public boolean isEnabled(int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType == 10 || itemViewType == 11 || itemViewType == 12) {
            return false;
        }
        return super.isEnabled(i);
    }

    public int a_(int i, int i2) {
        if (this.P.b) {
            int i3 = i - i2;
            be beVar = (be) ObjectUtils.a(f());
            if (i3 >= 0) {
                int i4;
                int c = beVar.c();
                aw awVar = (aw) getItem(i3);
                if (awVar != null) {
                    ar c2 = awVar.c();
                    if (!c2.k) {
                        switch (c2.n) {
                            case Util.TYPE_DASH /*0*/:
                                i4 = 0;
                                break;
                            case ModuleDescriptor.MODULE_VERSION /*1*/:
                                i4 = 1;
                                break;
                            case Buffer.FLAG_DECODE_ONLY /*2*/:
                                i4 = 2;
                                break;
                            default:
                                bbn.a(new IllegalStateException("Invalid pinned header state " + c2.n));
                                i4 = 0;
                                break;
                        }
                    }
                    i4 = 0;
                } else {
                    i4 = 0;
                }
                if (c != i3) {
                    beVar.e_(c);
                }
                return i4;
            }
        }
        return 0;
    }

    public void a(View view, int i, int i2, int i3) {
        aw awVar = (aw) getItem(Math.max(i - i2, 0));
        if (awVar instanceof z) {
            aw awVar2 = (z) awVar;
            a(view, awVar2, this.j, awVar2.b.b, 2131363447);
            return;
        }
        bbn.a(new IllegalStateException("Attempted to display a pinned header for an unsupported item type.\n" + awVar));
    }

    public boolean b() {
        return this.B;
    }

    public void a(boolean z) {
        this.B = z;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view != null && (view.getTag() instanceof rj)) {
            int itemViewType = getItemViewType(i);
            if (!(itemViewType == 10 || itemViewType == 11)) {
                bbn.a(a(i, f().a(), view).a(new IllegalStateException("cursor moved")));
                return super.getView(i, null, viewGroup);
            }
        }
        return super.getView(i, view, viewGroup);
    }

    private bbl a(int i, Cursor cursor, View view) {
        bbl bbl = new bbl();
        int count = cursor.getCount();
        int position = cursor.getPosition();
        bbl.a("Bind-current cursor", DatabaseUtils.dumpCurrentRowToString(cursor));
        if (i != position) {
            cursor.moveToPosition(i);
            bbl.a("Bind-cursor", DatabaseUtils.dumpCurrentRowToString(cursor));
        }
        aw awVar = (aw) getItem(i);
        String str = "Bind info";
        bbl.a(str, "Timeline Item:" + awVar + " viewType:" + a(awVar) + " Pos:" + i + " Pos now:" + position);
        if (view != null) {
            bbl.a("Bind-view", r.a(view, false));
            LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null) {
                bbl.a("Bind-LayoutParams", r.a(layoutParams));
            }
            Object tag = view.getTag();
            if (tag instanceof rj) {
                com.twitter.model.timeline.s sVar = ((rj) tag).a.a;
                if (sVar != null) {
                    bbl.a("Bind-Prompt", sVar);
                } else {
                    bbl.a("Bind-Prompt", "null");
                }
            }
        }
        for (int i2 = 0; i2 < count; i2++) {
            int itemViewType = getItemViewType(i2);
            if (itemViewType == 10 || itemViewType == 11) {
                bbl.a("Bind-Prompt info", "type=" + itemViewType + " pos=" + i2);
                bbl.a("Bind-Prompt cursor", DatabaseUtils.dumpCurrentRowToString(cursor));
                break;
            }
        }
        cursor.moveToPosition(i);
        return bbl;
    }

    @SuppressLint({"MissingSuperCall"})
    protected void a(View view, Context context, aw awVar, int i) {
        try {
            b(view, context, awVar, i);
        } catch (Throwable e) {
            bbn.a(a(i, f().a(), view).a(e));
        }
    }

    protected void b(View view, Context context, aw awVar, int i) {
        Object obj;
        boolean z = i == 0;
        if (i == getCount() - 1) {
            obj = 1;
        } else {
            obj = null;
        }
        ar c = awVar.c();
        int i2 = c.d;
        int i3 = c.b;
        int a = a(awVar);
        boolean z2 = c.g;
        boolean z3 = c.h;
        boolean z4 = c.e;
        boolean z5 = c.f;
        Bundle bundle = new Bundle();
        bundle.putInt("position", i);
        vt vtVar;
        rn rnVar;
        bv bvVar;
        aw awVar2;
        switch (a) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                CharSequence quantityString;
                h hVar = (h) awVar;
                ri riVar = ((rn) view.getTag()).a;
                long j = 0;
                e eVar = hVar.a;
                if (eVar != null) {
                    j = eVar.b;
                    quantityString = context.getResources().getQuantityString(2131492888, eVar.c, new Object[]{Integer.valueOf(eVar.c)});
                } else {
                    quantityString = context.getString(2131364000);
                }
                riVar.c = j;
                riVar.b.setText(quantityString);
                riVar.a.getLayoutParams().width = buf.a().c();
                riVar.a.requestLayout();
                break;
            case Util.TYPE_OTHER /*3*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                int i4;
                boolean z6 = !z4;
                boolean z7 = !z5;
                vtVar = (vt) view.getTag();
                a(view, (bb) awVar, i);
                vtVar.d.a(z6, z7);
                TweetView tweetView = vtVar.d;
                if (this.R) {
                    i4 = 2;
                } else {
                    i4 = 0;
                }
                tweetView.setCurationAction(i4);
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                a(view, (t) awVar, i);
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                int i5;
                com.twitter.android.events.c cVar = (com.twitter.android.events.c) awVar;
                rnVar = (rn) view.getTag();
                rnVar.s = cVar.a;
                rnVar.q = "trend";
                rp rpVar = rnVar.c;
                rpVar.c.setText(cVar.b);
                if (cVar.d == 2) {
                    rpVar.f = cVar.e;
                }
                cni cni = cVar.f;
                Object[] objArr;
                if (cni != null) {
                    rpVar.e.setVisibility(8);
                    if (cni.c()) {
                        rpVar.d.setVisibility(8);
                    } else {
                        rpVar.d.setVisibility(0);
                        if (aj.b(cni.g)) {
                            TextView textView = rpVar.d;
                            objArr = new Object[1];
                            objArr[0] = cni.g;
                            textView.setText(context.getString(bdc.promoted_by, objArr));
                        }
                        if (cni.b()) {
                            rpVar.d.setCompoundDrawablesWithIntrinsicBounds(2130839025, 0, 0, 0);
                        } else {
                            rpVar.d.setCompoundDrawablesWithIntrinsicBounds(this.w, 0, 0, 0);
                        }
                    }
                } else {
                    rpVar.d.setVisibility(8);
                    switch (cVar.c.b) {
                        case Buffer.FLAG_DECODE_ONLY /*2*/:
                            i5 = 2130840017;
                            break;
                        default:
                            if (!cVar.c.d) {
                                i5 = 2130840020;
                                break;
                            } else {
                                i5 = 2130840012;
                                break;
                            }
                    }
                    rpVar.b.setDefaultDrawable(i().getResources().getDrawable(i5));
                    int i6 = cVar.g;
                    if (i6 > 0) {
                        switch (cVar.c.b) {
                            case ModuleDescriptor.MODULE_VERSION /*1*/:
                                i5 = 2131362671;
                                break;
                            case Buffer.FLAG_DECODE_ONLY /*2*/:
                                i5 = 2131362670;
                                break;
                            default:
                                i5 = 2131362670;
                                break;
                        }
                        objArr = new Object[1];
                        objArr[0] = com.twitter.util.t.a(context.getResources(), (long) i6);
                        rpVar.e.setText(context.getString(i5, objArr));
                        rpVar.e.setVisibility(0);
                    } else {
                        rpVar.e.setVisibility(8);
                    }
                }
                if (this.r != null) {
                    if (this.o.containsKey(cVar.a)) {
                        i5 = ((Integer) this.o.get(cVar.a)).intValue();
                    } else {
                        i5 = this.q;
                        this.o.put(cVar.a, Integer.valueOf(this.q));
                        this.q++;
                    }
                    rnVar.r = i5;
                    bundle.putInt("trend_cursor", i5);
                    bundle.putInt("tweet_count", cVar.g);
                    this.r.a(view, cni, bundle);
                    break;
                }
                break;
            case C.ENCODING_DTS /*7*/:
                ((rn) view.getTag()).i.a.setText(2131362054);
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                break;
            case com.facebook.shimmer.b.ShimmerFrameLayout_fixed_height /*9*/:
            case com.facebook.shimmer.b.ShimmerFrameLayout_tilt /*14*/:
                String str;
                Drawable a2;
                int i7;
                bvVar = (bv) awVar;
                rnVar = (rn) view.getTag();
                ru ruVar = rnVar.d;
                ruVar.h.setVisibility(obj != null ? 4 : 0);
                if (bvVar.e != null) {
                    i2 = bvVar.e.i;
                    str = bvVar.e.h;
                    a2 = a(bvVar.e.c);
                    obj = b(bvVar.e.f);
                    i7 = bvVar.e.g;
                } else {
                    i2 = -1;
                    str = null;
                    a2 = null;
                    obj = null;
                    i7 = 0;
                }
                rnVar.s = bvVar.a;
                a(context, bvVar, ruVar.e.b);
                a(ruVar.a, String.valueOf(i2));
                a(ruVar.g, bvVar.d);
                a(ruVar.b, str);
                ruVar.e.b.setCompoundDrawablesWithIntrinsicBounds(null, null, a2, null);
                ruVar.c.a(obj, null);
                ruVar.c.setBadgeText(2131363953);
                if (CollectionUtils.b(obj)) {
                    ruVar.c.setVisibility(8);
                    ruVar.d.setVisibility(8);
                    ruVar.f.setVisibility(8);
                } else {
                    ruVar.c.setVisibility(0);
                    ruVar.d.setVisibility(0);
                    ruVar.f.setVisibility(0);
                }
                a(i, view, null, bvVar.b, bvVar.f, i7, false);
                break;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
            case com.facebook.shimmer.b.ShimmerFrameLayout_relative_width /*11*/:
                if (a == 11 && !this.B) {
                    this.B = true;
                }
                a(view, (com.twitter.android.timeline.p) awVar);
                break;
            case Atom.FULL_HEADER_SIZE /*12*/:
                awVar2 = (z) awVar;
                a(view, awVar2, this.j, awVar2.b.b, 2131363447);
                break;
            case com.facebook.shimmer.b.ShimmerFrameLayout_shape /*13*/:
            case bdd.TwitterButton_bounded /*17*/:
                bvVar = (bv) awVar;
                rnVar = (rn) view.getTag();
                rt rtVar = rnVar.e;
                Resources resources = context.getResources();
                rtVar.d.setVisibility(obj != null ? 4 : 0);
                rnVar.s = bvVar.a;
                a(context, bvVar, rtVar.e.b);
                a(rtVar.c, bvVar.d);
                rtVar.b.setText(resources.getString(bdc.promoted_by, new Object[]{bvVar.c.g}));
                if (bvVar.c.b()) {
                    rtVar.a.setImageDrawable(resources.getDrawable(2130839025));
                } else {
                    rtVar.a.setImageDrawable(resources.getDrawable(this.w));
                }
                a(i, view, bvVar.c, bvVar.b, true, 0, false);
                break;
            case bdd.TwitterButton_strokeWidth /*15*/:
                bvVar = (bv) awVar;
                rnVar = (rn) view.getTag();
                rs rsVar = rnVar.f;
                String str2 = bvVar.e != null ? bvVar.e.h : null;
                rnVar.s = bvVar.a;
                rsVar.b.b.setText(bvVar.b);
                a(rsVar.a, str2);
                a(i, view, null, bvVar.b, true, 0, true);
                break;
            case Atom.LONG_HEADER_SIZE /*16*/:
                bvVar = (bv) awVar;
                rnVar = (rn) view.getTag();
                rr rrVar = rnVar.g;
                Resources resources2 = context.getResources();
                rnVar.s = bvVar.a;
                rrVar.c.b.setText(bvVar.b);
                rrVar.b.setText(resources2.getString(bdc.promoted_by, new Object[]{bvVar.c.g}));
                if (bvVar.c.b()) {
                    rrVar.a.setImageDrawable(resources2.getDrawable(2130839025));
                } else {
                    rrVar.a.setImageDrawable(resources2.getDrawable(this.w));
                }
                a(i, view, bvVar.c, bvVar.b, true, 0, true);
                break;
            case bdd.TwitterButton_knockout /*18*/:
                a(view, (al) awVar, bundle);
                break;
            case bdd.TwitterButton_iconLayout /*19*/:
                a(view, (bb) awVar, i);
                vtVar = (vt) view.getTag();
                if (!vtVar.d.getTweet().u()) {
                    vtVar.d.setCurationAction(0);
                    break;
                } else {
                    vtVar.d.setCurationAction(1);
                    break;
                }
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                a(view, (bb) ((cd) awVar).b.a(0), i);
                vtVar = (vt) view.getTag();
                if (!b(awVar)) {
                    vtVar.d.setCurationAction(0);
                    break;
                } else {
                    vtVar.d.setCurationAction(1);
                    break;
                }
            case bdd.TweetView_mediaTopMargin /*21*/:
                awVar2 = (cd) awVar;
                a(view, awVar2, this.k, awVar2.c.c, 2131364198);
                break;
            case bdd.TweetView_mediaBottomMargin /*22*/:
                z zVar = (z) awVar;
                a(view, zVar.a, i);
                vtVar = (vt) view.getTag();
                if (!zVar.a.b.u()) {
                    vtVar.d.setCurationAction(0);
                    break;
                } else {
                    vtVar.d.setCurationAction(1);
                    break;
                }
            case bdd.TweetView_mediaDivider /*23*/:
                cd cdVar = (cd) awVar;
                ((rn) view.getTag()).j.a(cdVar, c(), i, this.H);
                if (this.G != null) {
                    this.G.a(cdVar, i);
                    break;
                }
                break;
            case bdd.TweetView_autoLink /*24*/:
                a(view, (cd) awVar, bundle, i);
                break;
            case bdd.TweetView_linkSelectedColor /*25*/:
                a(view, (v) awVar);
                break;
            case bdd.TweetView_previewFlags /*26*/:
                this.s.a(view, awVar, bundle);
                break;
            case OggUtil.PAGE_HEADER_SIZE /*27*/:
                a(view, (bi) awVar, i);
                break;
            case bdd.TweetView_inlineActionBarPaddingNormal /*28*/:
                a(awVar, view, context, i);
                break;
            case bdd.TweetView_tweetViewLayoutId /*29*/:
                a(this.a.getResources(), view, (com.twitter.android.timeline.aj) awVar, bundle, i);
                break;
            case bdd.AppCompatTheme_actionModeSplitBackground /*30*/:
                bundle.putString("ad_slot_id", ((com.twitter.android.timeline.a) ObjectUtils.a(awVar)).a);
                this.g.a(view, null, bundle);
                break;
            default:
                super.a(view, context, awVar, i);
                if (bc.e(i2)) {
                    TweetView tweetView2 = ((vt) view.getTag()).d;
                    Tweet tweet = tweetView2.getTweet();
                    if (a(awVar, tweet)) {
                        tweetView2.setCurationAction(1);
                    } else if (this.R) {
                        tweetView2.setCurationAction(2);
                    } else {
                        tweetView2.setCurationAction(0);
                    }
                    if (bc.j(i2)) {
                        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.c.c().g()).b(new String[]{"instant_timeline", null, tweet.ap(), "tweet", "impression"})).a(tweet.t));
                    }
                }
                if (this.i == 0 && (awVar instanceof az)) {
                    bbu.a(new TwitterScribeLog(this.c.c().g()).b(new String[]{"home::gap::impression"}));
                    break;
                }
        }
        if (18 == a || 24 == a || 29 == a || 26 == a) {
            GroupedRowView groupedRowView = (GroupedRowView) view;
            groupedRowView.setSingle(false);
            groupedRowView.setGroupStyle(0);
            groupedRowView.setStyle(0);
        } else if (a != 8 && a != 30 && a != 19) {
            GroupedRowView groupedRowView2 = (GroupedRowView) view;
            a(groupedRowView2, z2, z3, z);
            a(groupedRowView2, i3, z2, z3, z4, z5, z);
        }
    }

    private void a(Context context, bv bvVar, TextView textView) {
        CharSequence charSequence = bvVar.b;
        String substring = charSequence.substring(1);
        if (com.twitter.library.view.d.a(substring)) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
            com.twitter.library.view.d.a(context, spannableStringBuilder, new com.twitter.library.view.d(substring, charSequence.length()), (View) textView, true);
            textView.setText(spannableStringBuilder);
            return;
        }
        textView.setText(charSequence);
    }

    private void a(int i, View view, cni cni, String str, boolean z, int i2, boolean z2) {
        if (this.r != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("position", i);
            bundle.putLong("entity_id", c(i));
            bundle.putString("name", str);
            bundle.putBoolean("isread", z);
            bundle.putInt("changes", i2);
            bundle.putString("description", i.a(z2));
            this.r.a(view, cni, bundle);
        }
    }

    private Drawable a(cok cok) {
        if (cok == null) {
            return null;
        }
        con con = cok.d;
        return (Drawable) this.A.get(con != null ? con.a() : -1);
    }

    private List<MediaEntity> b(List<bg> list) {
        if (CollectionUtils.b(list)) {
            return com.twitter.util.collection.n.g();
        }
        return cpb.d(((bg) list.get(0)).d, Size.b);
    }

    private void a(aw awVar, View view, Context context, int i) {
        com.twitter.android.timeline.a aVar = (com.twitter.android.timeline.a) awVar;
        com.twitter.android.revenue.a c = this.N.c(aVar.a);
        com.twitter.util.j.a(c != null, "AdSlot " + aVar.a + " did not receive an ad when it should have.");
        aw a = this.Q.a(aVar, c);
        if (a != null) {
            super.a(view, context, a, i);
            vt vtVar = (vt) view.getTag();
            vtVar.d.setCurationAction(1);
            this.O.a(vtVar.d);
        }
    }

    @VisibleForTesting
    static void a(View view, aw awVar, OnClickListener onClickListener) {
        view.setTag(2131951712, awVar);
        if (onClickListener != null) {
            view.setOnClickListener(onClickListener);
        }
        view.setVisibility(b(awVar) ? 0 : 4);
    }

    @VisibleForTesting
    static boolean b(aw awVar) {
        return c(awVar);
    }

    @VisibleForTesting
    static boolean a(aw awVar, Tweet tweet) {
        if (tweet.q()) {
            return tweet.u();
        }
        return c(awVar);
    }

    @VisibleForTesting
    static boolean c(aw awVar) {
        return awVar.c().l > 0;
    }

    private void a(View view, aw awVar, OnClickListener onClickListener, String str, @StringRes int i) {
        qm qmVar = ((rn) view.getTag()).i;
        TextView textView = qmVar.a;
        View view2 = qmVar.d;
        if (aj.b(str)) {
            textView.setText(str);
        } else {
            textView.setText(i);
        }
        a(view2, awVar, onClickListener);
    }

    protected Tweet a(View view, bb bbVar, int i) {
        Tweet a = super.a(view, bbVar, i);
        TweetView tweetView = ((vt) view.getTag()).d;
        if (this.z != null) {
            com.twitter.android.util.a a2 = this.z.a();
            com.twitter.model.timeline.s a3 = a2.a(a.H);
            if (a3 != null && a3.m() && tweetView.a(a3.j())) {
                tweetView.setShowActionPrompt(true);
                tweetView.setActionPrompt(a3);
                a3.a(true);
                a3.d();
                this.b.a(a3.c);
            } else {
                tweetView.setShowActionPrompt(false);
                a2.b(a.H);
            }
        }
        return a;
    }

    private void a(View view, v vVar) {
        TweetView tweetView = null;
        rn rnVar = (rn) view.getTag();
        rl rlVar = rnVar.k;
        if (!(rlVar == null || vVar.a == null)) {
            com.twitter.model.moments.ab abVar = vVar.a.c;
            rlVar.b.b().setText(abVar.c);
            String string = vVar.a.b == 1 ? aj.a(abVar.i) ? i().getString(2131363111) : i().getString(2131363110, new Object[]{abVar.i}) : vVar.a.b == 2 ? i().getString(2131363095) : null;
            a(rlVar.b.c(), string);
        }
        vt vtVar = rnVar.l;
        if (vtVar != null) {
            tweetView = vtVar.d;
        }
        if (tweetView != null) {
            tweetView.setTag(2131951712, vVar);
        }
    }

    private void a(View view, bi biVar, int i) {
        rm rmVar = ((rn) view.getTag()).m;
        rmVar.a.a(biVar.a);
        rmVar.a.setTag(2131951712, biVar);
        Bundle bundle = new Bundle();
        bundle.putInt("position", i);
        this.t.a(view, biVar, bundle);
    }

    private void a(View view, t tVar, int i) {
        ((rn) view.getTag()).n.a.setText(tVar.a.b);
        this.y.a(tVar, i + 1);
    }

    private void a(View view, rn rnVar, com.twitter.model.timeline.aj ajVar, ar arVar, cgu cgu, Bundle bundle, j jVar) {
        rnVar.p = ajVar;
        rh rhVar = rnVar.b;
        int i = rhVar.e;
        Object obj = arVar.a != rhVar.c ? 1 : null;
        Object obj2 = i != arVar.i ? 1 : null;
        CarouselRowView carouselRowView = rhVar.a;
        int currentItemIndex;
        if (obj == null && obj2 == null) {
            currentItemIndex = carouselRowView.getCurrentItemIndex();
            j carouselAdapter = carouselRowView.getCarouselAdapter();
            if (currentItemIndex >= carouselAdapter.getCount()) {
                currentItemIndex = 0;
            }
            carouselAdapter.a(cgu);
            carouselRowView.setCurrentItemIndex(currentItemIndex);
            return;
        }
        rhVar.c = arVar.a;
        rhVar.e = arVar.i;
        if (obj != null) {
            currentItemIndex = 0;
        } else {
            currentItemIndex = carouselRowView.getCurrentItemIndex();
        }
        jVar.a(cgu);
        carouselRowView.setCarouselAdapter(jVar);
        carouselRowView.setCurrentItemIndex(currentItemIndex);
    }

    private void a(View view, al<bb> alVar, Bundle bundle) {
        rn rnVar = (rn) view.getTag();
        a(view, rnVar, alVar.o, alVar.c(), alVar.a, bundle, rnVar.b.b);
    }

    private void a(View view, cd cdVar, Bundle bundle, int i) {
        rn rnVar = (rn) view.getTag();
        com.twitter.model.timeline.aj ajVar = cdVar.c.e;
        cgu cgu = cdVar.a;
        CarouselRowView carouselRowView = rnVar.b.a;
        carouselRowView.a(2131951712, cdVar);
        carouselRowView.setShowDismiss(b((aw) cdVar));
        if (aj.b(cdVar.c.c)) {
            carouselRowView.setTitleText(cdVar.c.c);
        }
        a(view, rnVar, ajVar, cdVar.c(), cgu, bundle, rnVar.b.b);
        if (this.G != null) {
            this.G.a(cdVar, i);
        }
    }

    private void a(Resources resources, View view, com.twitter.android.timeline.aj ajVar, Bundle bundle, int i) {
        rn rnVar = (rn) view.getTag();
        cgu cgu = ajVar.a;
        CarouselRowView carouselRowView = rnVar.b.a;
        carouselRowView.a(2131951712, ajVar);
        carouselRowView.setShowDismiss(b((aw) ajVar));
        carouselRowView.setTitleText((String) com.twitter.util.object.e.b(ajVar.b.b, resources.getString(2131363916)));
        a(view, rnVar, ajVar.o, ajVar.c(), cgu, bundle, rnVar.b.b);
        rnVar.b.b.notifyDataSetChanged();
        if (this.F != null) {
            this.F.a(ajVar, i);
        }
    }

    private static void a(TextView textView, String str) {
        if (textView != null) {
            textView.setText(str);
            textView.setVisibility(aj.a(str) ? 8 : 0);
        }
    }

    public long c(int i) {
        return ((be) ObjectUtils.a(f())).k(i);
    }

    private static void a(GroupedRowView groupedRowView, boolean z, boolean z2, boolean z3) {
        if (!z || !z2) {
            groupedRowView.setSingle(false);
            if (z3) {
                groupedRowView.setStyle(2);
            } else if (z) {
                groupedRowView.setStyle(1);
            } else if (z2) {
                groupedRowView.setStyle(3);
            }
        } else if (z3) {
            groupedRowView.setSingle(false);
            groupedRowView.setStyle(3);
        } else {
            groupedRowView.setSingle(true);
        }
        groupedRowView.setGroupStyle(2);
    }

    private static void a(GroupedRowView groupedRowView, int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        if (!z2) {
            if (z3) {
                switch (i) {
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        if (z4) {
                            groupedRowView.setStyle(2);
                        } else if (!z || z5) {
                            groupedRowView.setStyle(0);
                        } else {
                            groupedRowView.a();
                        }
                    default:
                        if (!z) {
                            groupedRowView.setStyle(2);
                        }
                }
            } else if (z4) {
                groupedRowView.setStyle(2);
            } else if (i == 4 || i == 7) {
                groupedRowView.setStyle(2);
            } else {
                groupedRowView.setStyle(0);
            }
        }
    }

    private static boolean d(aw awVar) {
        if (!(awVar instanceof bb)) {
            return false;
        }
        Tweet tweet = ((bb) awVar).b;
        if (!tweet.q() || tweet.t()) {
            return false;
        }
        return true;
    }

    private static int e(aw awVar) {
        Object obj = 1;
        if (!(awVar instanceof bv)) {
            return 8;
        }
        bv bvVar = (bv) awVar;
        i iVar = bvVar.e;
        cni cni = bvVar.c;
        CharSequence charSequence = bvVar.d;
        Object obj2 = cni != null ? 1 : null;
        if (iVar == null || !iVar.j) {
            obj = null;
        }
        boolean a = aj.a(charSequence);
        if (obj2 != null && obj != null) {
            return 16;
        }
        if (obj != null) {
            return 15;
        }
        if (obj2 != null && a) {
            return 17;
        }
        if (obj2 != null) {
            return 13;
        }
        if (a) {
            return 14;
        }
        return 9;
    }

    private int a(aw awVar, ar arVar) {
        if (!(awVar instanceof cd)) {
            return 8;
        }
        switch (((cd) awVar).c.b) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return a(this.P.d, arVar, 8, 23);
            case Util.TYPE_OTHER /*3*/:
                return a(this.P.e, arVar, 26, 24);
            default:
                return 8;
        }
    }

    public void a(av avVar) {
        this.z = avVar;
    }

    public void a(kr<View, cni> krVar) {
        this.r = krVar;
    }

    private View d(Context context) {
        View inflate = LayoutInflater.from(context).inflate(2130969239, null);
        ((TextView) inflate.findViewById(2131951868)).setText(y.h());
        a(inflate, 2131951868, 2131952765, 2131952840);
        return inflate;
    }

    private void a(View view, int... iArr) {
        for (int findViewById : iArr) {
            View findViewById2 = view.findViewById(findViewById);
            if (findViewById2 != null) {
                findViewById2.setOnClickListener(null);
            }
        }
    }
}
