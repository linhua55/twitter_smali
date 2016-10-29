package com.twitter.android;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.Loader;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListView;
import aos;
import aqb;
import cdu;
import com.twitter.android.metrics.e;
import com.twitter.android.revenue.y;
import com.twitter.android.timeline.bj;
import com.twitter.android.timeline.bk;
import com.twitter.android.timeline.bl;
import com.twitter.android.util.AppRatingPromptHelper;
import com.twitter.android.util.av;
import com.twitter.android.util.aw;
import com.twitter.android.util.az;
import com.twitter.android.util.bb;
import com.twitter.android.util.bc;
import com.twitter.android.util.bt;
import com.twitter.android.util.bu;
import com.twitter.android.util.h;
import com.twitter.android.util.n;
import com.twitter.android.widget.ConfirmEmailOverlayPrompt;
import com.twitter.android.widget.NewItemBannerView;
import com.twitter.android.widget.PinnedHeaderRefreshableListView;
import com.twitter.android.widget.ReviewEmailOverlayPrompt;
import com.twitter.android.widget.ReviewPhoneOverlayPrompt;
import com.twitter.android.widget.TypoEmailOverlayPrompt;
import com.twitter.android.widget.VerifyPhoneOverlayPrompt;
import com.twitter.android.widget.a;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.list.r;
import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.library.api.timeline.TimelineHelper;
import com.twitter.library.api.timeline.s;
import com.twitter.library.av.ai;
import com.twitter.library.client.Session;
import com.twitter.library.client.v;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.library.scribe.ScribeAssociation;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.scribe.ay;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.bp;
import com.twitter.model.timeline.bn;
import com.twitter.ui.view.u;
import defpackage.amf;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.buw;
import defpackage.bvh;
import defpackage.cgu;
import java.util.HashSet;

/* compiled from: Twttr */
public class HomeTimelineFragment extends TimelineFragment implements bb, bk, aw, az {
    private static Runnable m;
    private final HashSet<Long> n;
    private boolean o;
    private bj p;
    private long q;
    private a r;
    private boolean s;
    private boolean t;
    private int u;
    private aos v;

    public HomeTimelineFragment() {
        this.n = new HashSet();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            b_(bundle.getInt("timeline_view_limit"));
        } else {
            b_(buw.b(D()));
        }
        aM();
        a(new u().h(true).a());
    }

    public void a() {
        super.a();
        this.t = d.a("app_graph_enabled");
    }

    protected void d() {
        super.d();
        this.p.g();
        if (m != null) {
            m.run();
        }
    }

    protected void e() {
        this.p.i();
        if (this.r != null) {
            this.r.a();
            this.r = null;
        }
        super.e();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("timeline_view_limit", this.u);
    }

    private void aM() {
        if (!d.a("app_rating_prompt_enable")) {
            return;
        }
        if ((d.a("app_rating_prompt_show_now") || AppRatingPromptHelper.a(getActivity(), new h()) >= 7) && this.r == null) {
            this.r = new a(getActivity(), aT().g());
            this.r.f();
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ViewGroup viewGroup = ap().a;
        viewGroup.setContentDescription(getActivity().getString(2131362804));
        if (viewGroup instanceof PinnedHeaderRefreshableListView) {
            vu vuVar = (vu) az();
            View a = ((rf) vuVar).a(2130968858, viewGroup);
            a.setOnClickListener(new hd(this));
            PinnedHeaderRefreshableListView pinnedHeaderRefreshableListView = (PinnedHeaderRefreshableListView) viewGroup;
            Resources resources = getActivity().getResources();
            pinnedHeaderRefreshableListView.a(a, resources.getDimensionPixelSize(2131690233));
            pinnedHeaderRefreshableListView.setBuiltInDividerHeight(resources.getDimensionPixelSize(2131689967));
            vuVar.registerDataSetObserver(new he(this));
        }
        if (this.v != null) {
            this.v.b();
        }
        this.v = new aos(getLoaderManager(), 1, new aqb(getActivity(), aT().g()));
        this.v.a(this.l);
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (xVar instanceof s) {
            s sVar = (s) xVar;
            this.p.a(sVar.H(), i2 == 4, sVar.z());
        }
        if (i2 == 3 || i2 == 4) {
            if (ad()) {
                this.c.g();
                this.c.j();
            } else {
                this.c.k();
            }
            bvh.a(aT().g());
        }
        if (i == 0) {
            this.o = false;
            if (!((aa) xVar.l().b()).b() && i2 == 1 && xVar.O()) {
                this.q = 0;
            }
            if ((xVar instanceof s) && i2 == 3) {
                TwitterDataSyncService.f(this.T, aT().e());
            }
        }
    }

    public boolean q() {
        return true;
    }

    public String r() {
        return "home_timeline";
    }

    public int t() {
        return 0;
    }

    public void a(av avVar) {
        avVar.a(this);
    }

    protected sg u() {
        return new hi(this, this, aD(), T(), this.I, this.g, D(), Y());
    }

    protected sf v() {
        return new hh(this);
    }

    protected void w() {
        this.c = e.a(aG(), aT().g());
        this.c.i();
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        NewItemBannerView newItemBannerView = (NewItemBannerView) a.findViewById(2131951631);
        this.p = bl.a(D(), newItemBannerView, this, t.a(bundle));
        a((r) new hf(this));
        this.p.d();
        al().a(this.p);
        return a;
    }

    protected void a(com.twitter.app.common.list.t tVar) {
        super.a(tVar);
        tVar.c(2130968916).f(2130968802);
    }

    public boolean a(com.twitter.model.timeline.s sVar) {
        if (sVar != null) {
            if (sVar.f()) {
                FragmentManager fragmentManager = getFragmentManager();
                if (bc.a().a(sVar)) {
                    ReviewPhoneOverlayPrompt.a(sVar, fragmentManager);
                    return true;
                } else if (bu.a().a(sVar)) {
                    VerifyPhoneOverlayPrompt.a(sVar, fragmentManager);
                    return true;
                } else if (bb.a(sVar)) {
                    ReviewEmailOverlayPrompt.a(sVar, fragmentManager);
                    return true;
                } else if (n.a(sVar)) {
                    ConfirmEmailOverlayPrompt.a(sVar, fragmentManager);
                    return true;
                } else if (bt.a(sVar)) {
                    TypoEmailOverlayPrompt.a(sVar, fragmentManager);
                    return true;
                }
            }
            if (sVar.e()) {
                if (!c.a((String) com.twitter.util.object.e.a(sVar.u), sVar.v)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void b(com.twitter.model.timeline.s sVar) {
    }

    protected Loader<Cursor> q_() {
        long g = aT().g();
        return new hc(getActivity(), amf.a(L()), this.l, aqb.a(g), g);
    }

    protected void a(cgu<com.twitter.android.timeline.aw> cgu_com_twitter_android_timeline_aw) {
        if (this.o) {
            com.twitter.refresh.widget.a d = ap().d();
            b((cgu) cgu_com_twitter_android_timeline_aw);
            a(d);
        } else {
            super.a((cgu) cgu_com_twitter_android_timeline_aw);
        }
        Cursor aA = aA();
        if (aA != null) {
            this.l.a(aA.getExtras().getInt("ad_slots_count"));
        }
    }

    protected void a(int i) {
        this.p.a(i);
    }

    public String b() {
        boolean z;
        if (TimelineHelper.a(this.T) != null) {
            z = true;
        } else {
            z = false;
        }
        return String.format("PTR Override: %s", new Object[]{Boolean.valueOf(z)});
    }

    protected boolean a_(int i) {
        if (a(getActivity(), aT(), this.Y)) {
            return super.a_(i);
        }
        return false;
    }

    @VisibleForTesting
    static boolean a(Context context, Session session, long j) {
        if (session.f() != null) {
            return true;
        }
        Context applicationContext;
        if (context != null) {
            applicationContext = context.getApplicationContext();
        } else {
            applicationContext = context;
        }
        bbn.a(new hg(applicationContext, session, j, null).a(new IllegalStateException("TLN-2544")));
        return false;
    }

    public void onStop() {
        super.onStop();
        if (d.a("polled_content_impression_enabled") && !this.n.isEmpty()) {
            this.aa.a(new nv(getActivity(), aT(), this.n));
        }
        this.n.clear();
    }

    public void onDestroyView() {
        this.p.f();
        al().b(this.p);
        super.onDestroyView();
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.v != null) {
            this.v.b();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.view.View r10, com.twitter.model.core.Tweet r11, android.os.Bundle r12) {
        /*
        r9 = this;
        r8 = 1;
        r0 = "position";
        r1 = r12.getInt(r0);
        r2 = r9.P();
        r0 = 0;
        if (r2 == 0) goto L_0x0015;
    L_0x000f:
        r0 = r2.a(r1);
        r0 = (com.twitter.android.timeline.aw) r0;
    L_0x0015:
        if (r0 == 0) goto L_0x001e;
    L_0x0017:
        if (r11 == 0) goto L_0x001e;
    L_0x0019:
        r3 = r9.j;
        r3.a(r0, r11, r12);
    L_0x001e:
        if (r11 == 0) goto L_0x0028;
    L_0x0020:
        r3 = r11.af;
        r4 = "impression";
        r9.a(r11, r3, r4);
    L_0x0028:
        super.a(r10, r11, r12);
        r3 = r9.s;
        if (r3 != 0) goto L_0x0035;
    L_0x002f:
        r3 = r9.Y_();
        r9.s = r3;
    L_0x0035:
        if (r0 == 0) goto L_0x00bb;
    L_0x0037:
        r0 = r0.c();
        r0 = r0.d;
        r0 = com.twitter.model.timeline.bc.t(r0);
        if (r0 == 0) goto L_0x0083;
    L_0x0043:
        r4 = r2.j(r1);
        r0 = r9.n;
        r3 = java.lang.Long.valueOf(r4);
        r0 = r0.add(r3);
        if (r0 == 0) goto L_0x0083;
    L_0x0053:
        r0 = new com.twitter.library.client.l;
        r3 = r9.getActivity();
        r3 = r3.getApplicationContext();
        r6 = r9.aT();
        r6 = r6.e();
        r0.<init>(r3, r6);
        r3 = "scribe_group_id";
        r6 = -1;
        r6 = r0.getLong(r3, r6);
        r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r3 != 0) goto L_0x0083;
    L_0x0075:
        r0 = r0.a();
        r3 = "scribe_group_id";
        r0 = r0.a(r3);
        r0.apply();
    L_0x0083:
        r0 = r2.aU_();
        r3 = r9.B();
        if (r0 >= r3) goto L_0x00bb;
    L_0x008d:
        r3 = r0 - r1;
        r4 = 20;
        if (r3 > r4) goto L_0x00bb;
    L_0x0093:
        r0 = r0 + -1;
        r0 = r2.h(r0);
        if (r0 != 0) goto L_0x00b8;
    L_0x009b:
        r0 = r9.K;
        r4 = r9.j(r0);
        r6 = r9.q;
        r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r0 == 0) goto L_0x00b8;
    L_0x00a7:
        r0 = "home_timeline_preload_bottom_non_polling_enabled";
        r0 = com.twitter.config.d.a(r0);
        if (r0 == 0) goto L_0x00bc;
    L_0x00b0:
        r0 = r9.h(r8);
        if (r0 == 0) goto L_0x00b8;
    L_0x00b6:
        r9.q = r4;
    L_0x00b8:
        r2.e_(r1);
    L_0x00bb:
        return;
    L_0x00bc:
        r0 = r9.g(r8);
        if (r0 == 0) goto L_0x00b8;
    L_0x00c2:
        goto L_0x00b6;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.HomeTimelineFragment.a(android.view.View, com.twitter.model.core.Tweet, android.os.Bundle):void");
    }

    protected void x() {
        bbu.a(new ay(aT().g()).a(i(), null, null, null, "position_restore_failure").a());
    }

    boolean Y_() {
        ListView listView = an() ? ap().a : null;
        if (!(listView instanceof PinnedHeaderRefreshableListView)) {
            return true;
        }
        if (listView.getChildCount() <= 0) {
            return false;
        }
        PinnedHeaderRefreshableListView pinnedHeaderRefreshableListView = (PinnedHeaderRefreshableListView) listView;
        pinnedHeaderRefreshableListView.a(pinnedHeaderRefreshableListView.getFirstVisiblePosition());
        return true;
    }

    private void a(Tweet tweet, bp bpVar, String str) {
        if (bpVar != null) {
            TwitterScribeAssociation aD = aD();
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).a(this.T, tweet, aD, null).a(TwitterScribeItem.a(bpVar))).b(i() + "::tweet:more:" + str)).a((ScribeAssociation) aD));
        }
    }

    public boolean a(long j, Tweet tweet, Runnable runnable) {
        this.o = true;
        return super.a(j, tweet, runnable);
    }

    @VisibleForTesting
    void b_(int i) {
        this.u = i;
    }

    protected boolean z() {
        return ai.a();
    }

    protected boolean A() {
        return y.a();
    }

    protected int B() {
        return this.u;
    }

    protected int D() {
        return 0;
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        if (ay()) {
            vu vuVar = (vu) az();
            if (this.t && (vuVar instanceof rf) && ((rf) vuVar).b()) {
                boolean z2;
                int max = Math.max(((i - i2) + 1) - 2, 0);
                int min = Math.min((i + 1) + 2, vuVar.getCount());
                for (int i4 = max; i4 < min; i4++) {
                    if (((rf) vuVar).b(i4)) {
                        z2 = true;
                        break;
                    }
                }
                z2 = false;
                if (!z2) {
                    ((rf) vuVar).a(false);
                    v a = v.a(this.T);
                    a.b("optin");
                    a.a("optin");
                }
            }
        }
        if (absListView instanceof PinnedHeaderRefreshableListView) {
            ((PinnedHeaderRefreshableListView) absListView).a(i);
        }
        return super.a(absListView, i, i2, i3, z);
    }

    protected void h() {
        Cursor aA = aA();
        if (aA != null && aA.moveToLast() && (aA.getInt(16) != 0 || aA.getCount() == B())) {
            bbu.a(new TwitterScribeLog(aT().g()).b("home::::bottom"));
        }
        super.h();
    }

    protected bn E() {
        return cdu.a();
    }

    public void F() {
        this.p.m();
    }

    public void G() {
        super.G();
        bbu.a(new TwitterScribeLog(aT().g()).b("home::::pull_to_refresh"));
    }

    public void H() {
        ap().u();
        bbu.a(new TwitterScribeLog(aT().g()).b(i(), null, "new_tweet_prompt", null, "click"));
    }

    public void Z_() {
        bbu.a(new TwitterScribeLog(aT().g()).b(i(), null, "new_tweet_prompt", null, "show"));
    }

    public void J() {
        bbu.a(new TwitterScribeLog(aT().g()).b(i(), null, "new_tweet_prompt", null, "dismiss"));
    }
}
