package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.database.Cursor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.annotation.StringRes;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.Loader;
import android.support.v4.os.EnvironmentCompat;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import android.widget.Toast;
import aow;
import bpa;
import cds;
import cgz;
import com.twitter.android.client.c;
import com.twitter.android.client.w;
import com.twitter.android.client.x;
import com.twitter.android.metrics.b;
import com.twitter.android.platform.DeviceStorageLowReceiver;
import com.twitter.android.profiles.as;
import com.twitter.android.revenue.d;
import com.twitter.android.revenue.p;
import com.twitter.android.timeline.FooterImpressionState;
import com.twitter.android.timeline.af;
import com.twitter.android.timeline.ag;
import com.twitter.android.timeline.an;
import com.twitter.android.timeline.aw;
import com.twitter.android.timeline.be;
import com.twitter.android.timeline.cb;
import com.twitter.android.timeline.cf;
import com.twitter.android.timeline.ck;
import com.twitter.android.timeline.s;
import com.twitter.android.util.av;
import com.twitter.android.util.az;
import com.twitter.android.util.bx;
import com.twitter.android.widget.GapView;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.inject.v;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.k;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.metrics.f;
import com.twitter.library.provider.cc;
import com.twitter.library.provider.cd;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.z;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.bl;
import com.twitter.model.timeline.bc;
import com.twitter.model.timeline.bn;
import com.twitter.refresh.widget.a;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.concurrent.i;
import com.twitter.util.j;
import com.twitter.util.m;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.aaw;
import defpackage.aax;
import defpackage.amc;
import defpackage.ame;
import defpackage.amf;
import defpackage.amg;
import defpackage.ami;
import defpackage.amj;
import defpackage.ark;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bdl;
import defpackage.bex;
import defpackage.boh;
import defpackage.bok;
import defpackage.cgu;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TimelineFragment extends TweetListFragment<aw, vu> implements cd {
    private s A;
    private boolean B;
    private com.twitter.ui.view.s C;
    private sl D;
    private a E;
    private TimelineItemClickHandler F;
    private av G;
    protected String a;
    protected boolean b;
    protected b c;
    protected int d;
    protected long e;
    protected FriendshipCache f;
    protected an g;
    protected String h;
    protected String i;
    protected vn j;
    protected aaw k;
    protected d l;
    private p m;
    private final OnSharedPreferenceChangeListener n;
    private sf o;
    private int p;
    private long q;
    private TwitterUser r;
    private z s;
    private boolean t;
    private DeviceStorageLowReceiver u;
    private boolean v;
    private hn w;
    private cf x;
    private ck y;
    private ag z;

    public TimelineFragment() {
        this.n = new rv(this);
    }

    protected Loader<Cursor> q_() {
        this.c.aK_();
        aow a = amf.a(L());
        return new bu(getActivity(), a.a, a.b, a.c, a.d, a.e);
    }

    public void a(com.twitter.ui.view.s sVar) {
        this.C = sVar;
    }

    protected amc L() {
        return new ame().a(this.K).a(this.q).b(aT().g()).c(this.Y).a(C().a("is_me", false)).a(this.a).a();
    }

    protected int n() {
        return 3;
    }

    protected int D() {
        return -1;
    }

    protected void a(v vVar) {
        super.a(vVar);
        ((k) ObjectUtils.a((Object) vVar)).a(new rw(this));
    }

    protected void a(cgu<aw> cgu_com_twitter_android_timeline_aw) {
        super.a((cgu) cgu_com_twitter_android_timeline_aw);
        this.c.aL_();
        if (m()) {
            if (h(n())) {
                this.c.f();
            } else {
                y();
            }
            this.b = true;
        } else if (d(false)) {
            this.c.f();
        } else {
            y();
        }
    }

    protected int B() {
        return bl.a(this.K) ? 800 : 400;
    }

    protected void y() {
        this.c.j();
    }

    public void a(boh boh) {
        if (!((aa) boh.l().b()).b()) {
            ((vu) az()).notifyDataSetChanged();
        }
    }

    public void a(bok bok) {
    }

    public void a(bpa bpa) {
        if (((aa) bpa.l().b()).b()) {
            Map e = bpa.e();
            if (this.f != null && e != null) {
                for (Entry entry : e.entrySet()) {
                    this.f.c(((Long) entry.getKey()).longValue(), ((Integer) entry.getValue()).intValue());
                }
            }
        }
    }

    public void onCreate(Bundle bundle) {
        HashSet hashSet;
        HashSet hashSet2;
        super.onCreate(bundle);
        w();
        h C = C();
        t a = t.a(bundle);
        this.K = C.a("type", 0);
        this.q = C.a("tag", -1);
        this.a = C.f("timeline_tag");
        this.i = C.f("scribe_section");
        if (this.a == null) {
            this.a = "unspecified";
        }
        if (this.K == 27) {
            this.L = TwitterScribeItem.b(this.a, -1);
        }
        this.h = C.f("scribe_page");
        this.r = (TwitterUser) C.h("profile_user");
        if (bundle != null) {
            hashSet = (HashSet) bundle.getSerializable("impressed_who_to_follow_modules");
            hashSet2 = (HashSet) bundle.getSerializable("impressed_who_to_follow_users");
            this.B = bundle.getBoolean("scribed_ref_event");
        } else {
            hashSet = new HashSet();
            hashSet2 = new HashSet();
        }
        aN();
        Context activity = getActivity();
        PreferenceManager.getDefaultSharedPreferences(activity).registerOnSharedPreferenceChangeListener(this.n);
        this.s = new se(this, null);
        TwitterScribeAssociation aD = aD();
        this.g = new an(activity, this.aa, this.Z, new rx(this));
        TwitterUser f = aT().f();
        boolean z = (bl.a(this.K) && bx.a(f)) || (this.K == 1 && bx.a(f, r()));
        this.t = z;
        if (this.t) {
            if (bundle != null) {
                this.v = bundle.getBoolean("is_device_storage_low");
            }
            this.u = new DeviceStorageLowReceiver();
            activity.registerReceiver(this.u, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW"));
        }
        cds cds = new cds(this.Z, aD);
        this.x = new cf(this.Z, aD, hashSet);
        this.y = new ck(this.Z, aD, hashSet2);
        this.z = new ag(this.Z, aD, bundle);
        this.A = new s(this.Z, aD, (FooterImpressionState) a.a("footer_impression_helper_id"));
        al().a(this.A);
        this.w = new ho(D(), this.T, this.Z, this.aa, cds, i.a, new si(new ry(this), this.Z, this.aa, this.T, cds), bundle);
        this.D = new sl(this.Z, this.aa, this.T, D(), aD);
        this.l = new d(this.T, this.Y);
        this.m = new p(this.l);
        this.F = new TimelineItemClickHandler(activity, aD(), i(), this.i, activity.getSupportFragmentManager(), this.l);
    }

    private long r() {
        return this.r != null ? this.r.bf_() : -1;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        cc.b(this);
        ap().a(new rz(this));
        ap().a(this.m.e());
        TwitterScribeAssociation aD = aD();
        this.j = new vo().a(getActivity(), aD, this.K, this.L, aH(), this.Z);
        this.k = aax.a(getActivity(), aD, this.L);
    }

    protected sn M() {
        return new sd(this, aD(), this.l);
    }

    boolean Q_() {
        return this.C != null && this.C.f;
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        TwitterFragmentActivity aI = aI();
        if (aI instanceof ProfileActivity) {
            this.f = ((ProfileActivity) aI).f();
        }
        if (!ay()) {
            if (this.f == null) {
                this.f = new FriendshipCache();
            }
            sg u = u();
            bdl a = a(aI, (vr) u, x.a(this.T).a());
            this.G = a(bundle, (vu) a, u);
            this.o = v();
            a((w) a);
            a.b(this);
            if (bundle != null) {
                long[] longArray = bundle.getLongArray("spinning_gap_ids");
                if (longArray != null) {
                    for (long a2 : longArray) {
                        a.a(a2);
                    }
                    a.notifyDataSetChanged();
                }
            }
            ap().a(a);
        }
        aa_();
    }

    private av a(Bundle bundle, vu vuVar, sg sgVar) {
        if ((this instanceof az) && (vuVar instanceof rf)) {
            az azVar = (az) this;
            rf rfVar = (rf) vuVar;
            TwitterFragmentActivity aI = aI();
            if (azVar.q() && aI != null) {
                av avVar = new av(aI, rfVar, azVar, amf.a(L()));
                if (bundle != null) {
                    Bundle bundle2 = (Bundle) bundle.getParcelable("prompt_controller");
                    if (bundle2 != null) {
                        avVar.a(bundle2);
                    }
                }
                rfVar.a(avVar);
                azVar.a(avVar);
                sgVar.a(avVar);
                return avVar;
            }
        }
        return null;
    }

    protected vu a(TwitterFragmentActivity twitterFragmentActivity, vr vrVar, boolean z) {
        if (J()) {
            return a(twitterFragmentActivity, vrVar, z, false);
        }
        switch (this.K) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_BAN /*8*/:
            case mx.TweetView_mediaTagIcon /*27*/:
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
            case mx.AppCompatTheme_actionModeSplitBackground /*30*/:
                return a(twitterFragmentActivity, vrVar, z, false);
            default:
                return b(twitterFragmentActivity, vrVar, a(z, this.K));
        }
    }

    public void a(View view, Tweet tweet, Bundle bundle) {
        super.a(view, tweet, bundle);
        if (tweet != null) {
            this.j.a(tweet, bundle);
            this.k.a(view, tweet);
        } else if (tweet == null && bundle.containsKey("ad_slot_id")) {
            this.j.a(bundle);
        }
    }

    protected void a(boolean z) {
        super.a(z);
        this.j.a();
    }

    public void onStop() {
        this.j.b(aT().g());
        super.onStop();
    }

    public boolean a(AbsListView absListView, int i) {
        this.k.a(i);
        return super.a(absListView, i);
    }

    boolean a(boolean z, int i) {
        return z && (i == 9 || i == 2 || i == 5 || i == 23);
    }

    protected bn E() {
        return bn.a;
    }

    protected rf a(TwitterFragmentActivity twitterFragmentActivity, vr vrVar, boolean z, boolean z2) {
        kr aO = aO();
        kr aP = aP();
        TwitterScribeAssociation aD = aD();
        com.twitter.ui.view.s sVar = (com.twitter.ui.view.s) e.b(this.C, TweetView.c);
        Context context = getContext();
        TwitterFragmentActivity twitterFragmentActivity2 = twitterFragmentActivity;
        boolean z3 = z;
        com.twitter.library.view.aa aaVar = vrVar;
        boolean z4 = z2;
        rf rfVar = new rf(twitterFragmentActivity2, this.K, z3, aaVar, new af(D(), this.g), new com.twitter.android.timeline.x(D(), this.g), new cb(D(), this.g), new yj(com.twitter.library.client.az.a((Context) twitterFragmentActivity), aT(), this.f, aD), new sj(context, this.aa, this.Z, aD), this.f, aD, z4, this.x, this.y, this.z, this.A, this.I, sVar, aO, aP, this.l, this.m, this.X, E());
        if (28 != this.K) {
            ap().a.setDivider(null);
        }
        return rfVar;
    }

    protected vu b(TwitterFragmentActivity twitterFragmentActivity, vr vrVar, boolean z) {
        return new vu(twitterFragmentActivity, z, vrVar, this.f, aD());
    }

    protected void aa_() {
        ap().a.setAdapter(az());
    }

    protected sg u() {
        return new sg(this, aD(), T(), this.I, r(), this.g, D());
    }

    protected sf v() {
        if (this.G != null) {
            return new sf(this);
        }
        return null;
    }

    protected void a() {
        super.a();
        if (this.Y > 0 || !aC()) {
            O();
        }
        this.aa.a(this.s);
        this.k.a(ap().a);
        if (this.m.a()) {
            ab_();
        }
        this.m.b();
        this.Z.a(this.o);
    }

    protected void d() {
        String str;
        super.d();
        h C = C();
        if (!C.a("ref_event") || this.B) {
            str = null;
        } else {
            str = C.f("ref_event");
            this.B = true;
        }
        switch (this.K) {
            case mx.View_android_theme /*0*/:
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                bbu.a((TwitterScribeLog) new TwitterScribeLog(aT().g(), i(), this.i, null, null, "impression").a(str));
            case WireMessage.WIRE_CHAT /*1*/:
                a(i() + ":" + e.b(this.i) + ":::impression", str);
            case WireMessage.WIRE_CONTROL /*2*/:
                a(i() + ":" + e.b(this.i) + ":::impression", str);
            case WireMessage.WIRE_AUTH /*3*/:
                bbu.a((TwitterScribeLog) new TwitterScribeLog(aT().g(), i() + "::::impression").a(TwitterScribeItem.d(this.a)));
            case mx.UserView_actionButtonPaddingRight /*5*/:
                a("connect:mentions:::impression", str);
            case mx.TweetView_mediaDivider /*23*/:
                a("connect:mentions_filtered:::impression", str);
            case mx.TweetView_autoLink /*24*/:
                a("connect:mentions_following:::impression", str);
            case mx.TweetView_linkSelectedColor /*25*/:
                a("connect:mentions_verified:::impression", str);
            case mx.TweetView_mediaTagIcon /*27*/:
                bbu.a((TwitterScribeLog) new TwitterScribeLog(aT().g(), i() + "::::impression").a(TwitterScribeItem.b(this.a, -1)));
            default:
        }
    }

    private void a(String str, String str2) {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(aT().g(), str).a(str2);
        as.a((TwitterScribeLog) bbw, this.r);
        bbu.a(bbw);
    }

    protected void e() {
        if (this.K == 0 && l(2)) {
            f.b("home:refresh", aG(), this.Y, ark.n).k();
        }
        this.c.k();
        c(aT().g());
        this.D.b(aT().g());
        this.aa.b(this.s);
        R();
        this.k.a();
        this.m.c();
        this.Z.b(this.o);
        super.e();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1 && i == 1 && intent != null && intent.hasExtra("woeid")) {
            long longExtra = intent.getLongExtra("woeid", 1);
            Session aT = aT();
            UserSettings j = aT.j();
            if (j == null) {
                return;
            }
            if (j.B || j.a != longExtra) {
                j.B = false;
                j.a = longExtra;
                j.b = intent.getStringExtra("loc_name");
                this.aa.a(bex.a(this.T, aT, j, true, null));
            }
        }
    }

    public void onDestroy() {
        cc.a(this);
        super.onDestroy();
        Context activity = getActivity();
        PreferenceManager.getDefaultSharedPreferences(activity).unregisterOnSharedPreferenceChangeListener(this.n);
        if (this.t) {
            activity.unregisterReceiver(this.u);
            this.aa.a(bx.a(activity, aT()));
        }
        this.w.b();
    }

    protected void a(long j, long j2) {
        super.a(j, j2);
        this.c.k();
        c(j);
        this.D.b(j);
        this.j.b(j);
    }

    public void a(TwitterUser twitterUser) {
        this.Y = twitterUser.c;
        O();
    }

    public void b(long j) {
        t();
    }

    public boolean a(long j, Tweet tweet, Runnable runnable) {
        return vu.a(ap().a, j, tweet, runnable);
    }

    public void a(Tweet tweet) {
        t();
    }

    private void t() {
        this.T.getContentResolver().notifyChange(amf.a(L()).a, null);
    }

    protected void O() {
        if (ao() && m()) {
            h(3);
            this.b = true;
        }
    }

    protected void w() {
        this.c = new b("timeline:first_tweet_", "timeline:first_tweet_", ark.l, null);
        this.c.b(this.Z.c().g());
        this.c.i();
    }

    protected void g() {
        super.g();
        h(2);
    }

    protected void h() {
        int i = 0;
        Cursor aA = aA();
        if (aA != null && aA.moveToLast()) {
            int B = B();
            if (this.t) {
                if (!aM()) {
                    i = 1;
                }
            } else if (aA.getCount() < B) {
                i = 1;
            }
            if (ar() && aA.getInt(16) == 0 && r0 != 0) {
                h(1);
            }
        }
    }

    protected boolean m() {
        vu vuVar = (vu) az();
        return vuVar.isEmpty() || (this.K == 1 && !this.b && vuVar.getCount() < 20);
    }

    protected String e(int i) {
        TwitterScribeAssociation aD = aD();
        String b = (this.K == 1 || this.K == 2) ? aD.b() : null;
        return TwitterListFragment.a(aD.a(), b, i);
    }

    protected com.twitter.library.service.x f(int i) {
        return new amj(getActivity(), (amg) c(i).q()).a();
    }

    protected ami c(int i) {
        boolean J = J();
        ami b = new ami(aT()).a(this.K).b(i).c(p(i)).a(c(this.K, i)).b(i(i)).c(q(i)).d(this.Y).e(this.q).a(e(i)).b(this.a).d(k(i)).a(this.l).b(J);
        if (J) {
            be P = P();
            if (P != null) {
                b.a(P.d());
                b.b(P.e());
            }
        }
        return b;
    }

    private boolean J() {
        switch (this.K) {
            case WireMessage.WIRE_CONTROL /*2*/:
                return com.twitter.config.d.a("urt_favorites_timeline_enabled");
            default:
                return false;
        }
    }

    private boolean aM() {
        return this.u.a() || this.v;
    }

    protected boolean g(int i) {
        return a(i, true, null);
    }

    protected boolean h(int i) {
        return a(i, false, null);
    }

    private boolean a(int i, boolean z, com.twitter.library.service.x xVar) {
        if (!a_(i)) {
            return false;
        }
        if (xVar == null) {
            xVar = f(i);
        }
        if (xVar == null) {
            return false;
        }
        if (z) {
            xVar.k("Not triggered by a user action.");
        }
        return c(xVar, this.K, i);
    }

    protected boolean a_(int i) {
        return super.a_(i) && TelephonyUtil.i().h();
    }

    protected void b(com.twitter.library.service.x xVar, int i, int i2) {
        super.b(xVar, i, i2);
        if (this.K == 0 && i2 == 2) {
            f.b("home:refresh", aG(), this.Y, ark.n).i();
        }
    }

    protected void a(com.twitter.library.service.x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (this.K == 0 && i2 == 2) {
            f.b("home:refresh", aG(), this.Y, ark.n).j();
        }
        if (i2 == 6) {
            vu vuVar = (vu) az();
            vuVar.e();
            vuVar.notifyDataSetChanged();
        }
        aa aaVar = (aa) xVar.l().b();
        this.c.g();
        y();
        if (!(aaVar == null || aaVar.b())) {
            if (aaVar.d() == 401) {
                Toast.makeText(this.T, 2131364041, 1).show();
            } else if (!aaVar.c.getBoolean("cancelled_no_messaging_required")) {
                Toast.makeText(this.T, b(i, i2), 1).show();
            }
        }
        if (this.G == null) {
            return;
        }
        if (i2 == 2 || i2 == 4 || i2 == 3) {
            this.G.a(i);
        }
    }

    @StringRes
    protected int b(int i, int i2) {
        return 2131364025;
    }

    private int p(int i) {
        switch (i) {
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 100;
            case WireMessage.WIRE_AUTH /*3*/:
                return I();
            default:
                return 40;
        }
    }

    protected int I() {
        return 0;
    }

    private long c(int i, int i2) {
        if (i == 0) {
            return 0;
        }
        switch (i2) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return 0;
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                be P = P();
                if (cgz.a(P)) {
                    return 0;
                }
                int aU_ = P.aU_();
                int i3 = 0;
                while (i3 < aU_) {
                    if (P.g(i3) == i && P.e(i3) && !P.f(i3)) {
                        switch (i) {
                            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                                int l = P.l(i3);
                                if ((bc.e(l) || bc.d(l)) && !bc.h(l)) {
                                    if (!bc.q(l)) {
                                        break;
                                    }
                                    break;
                                }
                            default:
                                break;
                        }
                        return P.b(i3);
                    }
                    i3++;
                }
                return 0;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i2);
        }
    }

    protected long i(int i) {
        return d(this.K, i);
    }

    protected long j(int i) {
        be P = P();
        if (P != null) {
            int aU_ = P.aU_() - 1;
            while (aU_ >= 0) {
                if (i == P.g(aU_) && P.e(aU_)) {
                    return P.b(aU_);
                }
                aU_--;
            }
        }
        return 0;
    }

    public void ab_() {
        ((vu) az()).notifyDataSetChanged();
    }

    public be P() {
        return (be) ObjectUtils.a(((vu) az()).f());
    }

    private long d(int i, int i2) {
        if (i == 0) {
            return 0;
        }
        switch (i2) {
            case WireMessage.WIRE_CHAT /*1*/:
                return j(i);
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 0;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                be P = P();
                if (P == null) {
                    return 0;
                }
                int i3 = this.p;
                this.p = 0;
                return P.b(i3);
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i2);
        }
    }

    protected int k(int i) {
        if (((vu) az()).isEmpty()) {
            return 1;
        }
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return 3;
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 2;
            case WireMessage.WIRE_AUTH /*3*/:
                return 1;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return 4;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
    }

    private long q(int i) {
        if (this.K != 0) {
            return 0;
        }
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 0;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                be P = P();
                if (P == null) {
                    return 0;
                }
                int i2 = this.p;
                this.p = 0;
                return P.i(i2);
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
    }

    protected a Q() {
        return new a(-1, this.e, this.d);
    }

    protected void J_() {
        int i = this.K;
        switch (i) {
            case mx.View_android_theme /*0*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case mx.TweetView_mediaDivider /*23*/:
            case mx.TweetView_autoLink /*24*/:
            case mx.TweetView_linkSelectedColor /*25*/:
                l lVar = new l(getActivity(), aT().e(), "timeline");
                this.e = lVar.getLong("tweet_" + i, -1);
                this.d = lVar.getInt("off_" + i, 0);
                a(Q(), false);
            default:
                super.J_();
        }
    }

    protected void R() {
        if (this.E != null) {
            int i = this.K;
            switch (i) {
                case mx.View_android_theme /*0*/:
                case mx.UserView_actionButtonPaddingRight /*5*/:
                case mx.TweetView_mediaDivider /*23*/:
                case mx.TweetView_autoLink /*24*/:
                case mx.TweetView_linkSelectedColor /*25*/:
                    new l(getActivity(), aT().e(), "timeline").a().a("tweet_" + i, this.E.b).a("off_" + i, this.E.c).apply();
                default:
            }
        }
    }

    protected void a(a aVar, boolean z) {
        k ap = ap();
        long j = aVar.b;
        if ((this.K == 0 || this.K == 28) && j == -1) {
            ap.a(0, 0);
        } else if (j > 0) {
            int a = a(j);
            if (a >= ap.a.getHeaderViewsCount() || !z) {
                ap.a(a, aVar.c);
            }
        }
    }

    protected String i() {
        if (aj.b(this.h)) {
            return this.h;
        }
        switch (this.K) {
            case mx.View_android_theme /*0*/:
                return "home";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "favorites";
            case WireMessage.WIRE_AUTH /*3*/:
                return "live_video_timeline";
            case ControlMessage.CONTROL_BAN /*8*/:
                return "alerts";
            case mx.TweetView_mediaTagIcon /*27*/:
                return "custom";
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                return "trendsplus";
            case mx.AppCompatTheme_actionModeSplitBackground /*30*/:
                return "place";
            default:
                return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    private void a(ListView listView, View view, aw awVar, int i) {
        if (awVar instanceof com.twitter.android.timeline.az) {
            com.twitter.android.timeline.az azVar = (com.twitter.android.timeline.az) ObjectUtils.a((Object) awVar);
            GapView gapView = (GapView) ObjectUtils.a(view.getTag());
            if (com.twitter.config.d.a("timeline_gap_cursors_from_timeline_enabled")) {
                gapView.setSpinnerActive(true);
                ((vu) az()).a(azVar.n);
                a(6, false, new amj(this.T, (amg) c(6).a(azVar.a).c(azVar.b).q()).a());
                return;
            }
            this.p = i - listView.getHeaderViewsCount();
            h(6);
            vu vuVar = (vu) az();
            vuVar.a(azVar.n);
            vuVar.notifyDataSetChanged();
            return;
        }
        this.F.a(view, awVar, i, this.K, aT(), Y());
    }

    public void a(ListView listView, View view, int i, long j) {
        super.a(listView, view, i, j);
        aw awVar = (aw) listView.getItemAtPosition(i);
        if (awVar != null) {
            a(listView, view, awVar, i);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (ay()) {
            Collection d = ((vu) az()).d();
            if (!d.isEmpty()) {
                bundle.putLongArray("spinning_gap_ids", CollectionUtils.e(d));
            }
        }
        if (this.u != null) {
            bundle.putBoolean("is_device_storage_low", aM());
        }
        if (this.x != null) {
            bundle.putSerializable("impressed_who_to_follow_modules", this.x.a());
        }
        if (this.y != null) {
            bundle.putSerializable("impressed_who_to_follow_users", this.y.a());
        }
        if (this.z != null) {
            this.z.a(bundle);
        }
        bundle.putBoolean("scribed_ref_event", this.B);
        this.w.a(bundle);
        if (this.G != null) {
            bundle.putParcelable("prompt_controller", this.G.d());
        }
    }

    private void c(long j) {
        TwitterScribeAssociation aD = aD();
        this.j.a(j, ScribeLog.a(aD.a(), aD.b(), "stream::results"));
        this.k.a(j, m.b());
        this.D.c(j);
    }

    protected String T() {
        switch (this.K) {
            case mx.View_android_theme /*0*/:
            case mx.TweetView_mediaTagIcon /*27*/:
                return i() + "::tweet:link:open_link";
            case WireMessage.WIRE_CHAT /*1*/:
                return "profile::tweet:link:open_link";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "favorites::tweet:link:open_link";
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return "connect:mentions:tweet:link:open_link";
            case mx.TweetView_mediaDivider /*23*/:
                return "connect:mentions_filtered:tweet:link:open_link";
            case mx.TweetView_autoLink /*24*/:
                return "connect:mentions_following:tweet:link:open_link";
            case mx.TweetView_linkSelectedColor /*25*/:
                return "connect:mentions_verified:tweet:link:open_link";
            default:
                return null;
        }
    }

    private void aN() {
        String str;
        String i;
        String str2;
        switch (this.K) {
            case mx.View_android_theme /*0*/:
            case mx.AppCompatTheme_actionModeSplitBackground /*30*/:
                str = null;
                i = i();
                str2 = null;
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                i = i();
                str = this.i;
                str2 = null;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                i = i();
                str = this.i;
                str2 = null;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                i = i();
                str = "highlights";
                str2 = null;
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                i = "connect";
                str = "mentions";
                str2 = null;
                break;
            case ControlMessage.CONTROL_BAN /*8*/:
                i = i();
                str = "timeline";
                str2 = null;
                break;
            case mx.TwitterEditText_messageSize /*9*/:
                i = "list";
                str = "tweets";
                str2 = null;
                break;
            case mx.TweetView_mediaDivider /*23*/:
                i = "connect";
                str = "mentions_filtered";
                str2 = null;
                break;
            case mx.TweetView_autoLink /*24*/:
                i = "connect";
                str = "mentions_following";
                str2 = null;
                break;
            case mx.TweetView_linkSelectedColor /*25*/:
                i = "connect";
                str = "mentions_verified";
                str2 = null;
                break;
            case mx.TweetView_mediaTagIcon /*27*/:
                str = i();
                i = str;
                str = this.i;
                str2 = this.a;
                break;
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                i = i();
                str = this.i;
                str2 = null;
                break;
            default:
                throw new IllegalArgumentException("Invalid status type.");
        }
        a((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(6)).b(i)).c(str)).a(str2)).b(6));
    }

    public TwitterScribeAssociation U() {
        return aD();
    }

    protected boolean j() {
        if (aQ()) {
            return X();
        }
        return bl.a(this.K);
    }

    protected long V() {
        return 60000;
    }

    protected void k() {
        if (h(4) && aQ()) {
            W();
        }
    }

    protected void a(int i) {
    }

    @VisibleForTesting
    void W() {
        PreferenceManager.getDefaultSharedPreferences(getContext()).edit().putLong(d(aT().g()), m.b()).apply();
    }

    @VisibleForTesting
    boolean X() {
        return PreferenceManager.getDefaultSharedPreferences(getContext()).getLong(d(aT().g()), 0) + V() < m.b();
    }

    private String d(long j) {
        return j + "_" + "last_account_server_fetch" + "_" + this.K;
    }

    private kr<View, aw> aO() {
        return new sa(this);
    }

    private kr<View, aw> aP() {
        return new sb(this);
    }

    private void a(View view, aw awVar) {
        this.w.a(((hu) view.getTag()).a, awVar);
    }

    private static void b(c cVar, bg bgVar, FragmentActivity fragmentActivity, sn snVar, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation) {
        sn.a(fragmentActivity, new sc(tweet, bgVar, fragmentActivity, twitterScribeAssociation, cVar));
    }

    private static void b(c cVar, Tweet tweet) {
        bbu.a(new TwitterScribeLog(bg.a().c().g()).b("instant_timeline", null, tweet.ap(), "tweet", "dismiss"));
        cVar.a(tweet.Q, tweet.P, null, null);
    }

    @VisibleForTesting
    static void a(TweetView tweetView, an anVar, int i) {
        Long l = (Long) tweetView.getTag(2131951711);
        j.a(l != null, "Missing entity id tag from tweetView which is required for looking up the tweet entity to dismiss.");
        if (l != null) {
            anVar.a(l.longValue(), i);
        }
    }

    private void e(long j) {
        if (an()) {
            long f = f(j);
            if (f != -1) {
                k ap = ap();
                ListView listView = ap.a;
                int count = listView.getCount();
                int i = 0;
                while (i < count) {
                    if (listView.getItemIdAtPosition(i) != f) {
                        i++;
                    } else if (i < listView.getFirstVisiblePosition() || i > listView.getLastVisiblePosition()) {
                        ap.a(i, 0);
                        return;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    private long f(long j) {
        be P = P();
        if (P != null) {
            int aU_ = P.aU_();
            for (int i = 0; i < aU_; i++) {
                if (P.k(i) == j) {
                    return P.d(i);
                }
            }
        }
        return -1;
    }

    private boolean aQ() {
        return this.K == 0 || this.K == 3;
    }

    protected ts Y() {
        return new ts(getActivity()).a(aw()).a(this.q).a(this.a).a(aD());
    }
}
