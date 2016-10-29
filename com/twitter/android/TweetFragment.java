package com.twitter.android;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Rect;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import bno;
import bnv;
import cdy;
import cel;
import cen;
import cex;
import com.twitter.android.av.bd;
import com.twitter.android.av.monetization.e;
import com.twitter.android.av.monetization.g;
import com.twitter.android.card.f;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.client.bz;
import com.twitter.android.moments.ui.fullscreen.MomentsFullScreenPagerActivity;
import com.twitter.android.revenue.y;
import com.twitter.android.settings.MobileNotificationsActivity;
import com.twitter.android.timeline.aw;
import com.twitter.android.widget.ConfirmCancelPendingTweetDialog;
import com.twitter.android.widget.EngagementActionBar;
import com.twitter.android.widget.ToggleImageButton;
import com.twitter.android.widget.TweetDetailView;
import com.twitter.android.widget.ec;
import com.twitter.android.widget.fo;
import com.twitter.android.widget.fp;
import com.twitter.app.common.base.m;
import com.twitter.app.common.inject.a;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.j;
import com.twitter.internal.network.k;
import com.twitter.library.api.ActivitySummary;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.UserSettings;
import com.twitter.library.api.activity.d;
import com.twitter.library.api.timeline.o;
import com.twitter.library.av.ai;
import com.twitter.library.av.playback.be;
import com.twitter.library.client.Session;
import com.twitter.library.media.widget.z;
import com.twitter.library.provider.cc;
import com.twitter.library.provider.cd;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dd;
import com.twitter.library.scribe.ScribeAssociation;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ao;
import com.twitter.library.util.aq;
import com.twitter.library.widget.ActionButton;
import com.twitter.library.widget.PageableListView;
import com.twitter.library.widget.TweetView;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.i;
import com.twitter.model.av.n;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Translation;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.ap;
import com.twitter.model.core.b;
import com.twitter.model.core.cr;
import com.twitter.model.core.p;
import com.twitter.model.core.q;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.moments.ab;
import com.twitter.ui.widget.u;
import com.twitter.util.ui.r;
import com.twitter.util.w;
import defpackage.acd;
import defpackage.apk;
import defpackage.aqe;
import defpackage.aqy;
import defpackage.ark;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bcx;
import defpackage.bdj;
import defpackage.boh;
import defpackage.bok;
import defpackage.bpo;
import defpackage.bum;
import defpackage.bup;
import defpackage.ccc;
import defpackage.cdg;
import defpackage.cgl;
import defpackage.cni;
import defpackage.cpb;
import defpackage.um;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import rx.an;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TweetFragment extends TweetListFragment<aw, vu> implements acd, LoaderCallbacks<Cursor>, OnClickListener, OnLongClickListener, aqe, nu, fo, m, cd, com.twitter.library.view.m {
    private static vo c;
    private View A;
    private View B;
    private View C;
    private int D;
    private int E;
    private ToggleImageButton F;
    private ToggleImageButton G;
    @VisibleForTesting
    boolean a;
    private EngagementActionBar ab;
    private boolean ac;
    private boolean ad;
    private long ae;
    private int af;
    private int ag;
    private String ah;
    private qw ai;
    private boolean aj;
    private String ak;
    private boolean al;
    private aqy am;
    private uo an;
    private an ao;
    private g ap;
    private apk<n> aq;
    private final FriendshipCache ar;
    private final Set<Long> as;
    private bum at;
    @VisibleForTesting
    TweetDetailView b;
    private vn d;
    private Session e;
    private Tweet f;
    private i g;
    private f h;
    private cel i;
    private boolean j;
    private ActivitySummary k;
    private un l;
    private BaseAdapter m;
    private vr n;
    private TwitterScribeAssociation o;
    private PageableListView p;
    private String q;
    private int s;
    private ab t;
    private final ArrayList<Tweet> u;
    private final um v;
    private final OnClickListener w;
    private boolean x;
    private boolean y;
    private boolean z;

    protected /* synthetic */ a b(t tVar) {
        return a(tVar);
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    static {
        c = new vo();
    }

    public TweetFragment() {
        this.u = new ArrayList();
        this.v = new um("tweet:::show_more_suggested_button:impression");
        this.w = new up(this, null);
        this.ar = new FriendshipCache();
        this.as = new HashSet();
        a(((j) ((j) new j().h(false)).a("en_act", false)).b());
    }

    public ActivitySummary m() {
        return this.k;
    }

    public void a(aqy aqy) {
        this.am = aqy;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(1)).b("tweet"));
        h C = C();
        this.o = (TwitterScribeAssociation) C.h("source_association");
        this.t = (ab) com.twitter.util.serialization.m.a((byte[]) C.i("timeline_moment"), ab.a);
        if (bundle != null) {
            a(bundle);
        }
        this.D = getResources().getDimensionPixelSize(2131690290);
        this.E = getResources().getDimensionPixelSize(2131689731);
        TwitterScribeAssociation aD = aD();
        this.n = new tu(this, this, aD, null, cen.a(null, "tweet:stream:tweet:link:open_link", null, null), new uq(this, this, aD));
        this.n.a(false);
        this.n.a(this.o);
        this.i = new cel(getContext(), new ue(this), aD(), this.o, new uf(this));
        FragmentActivity activity = getActivity();
        if (activity instanceof TweetActivity) {
            this.aq = new ug(this);
            this.ap = new g((TweetActivity) activity, mx.AppCompatTheme_radioButtonStyle);
            this.ap.a(this.aq);
        }
    }

    public void onDestroy() {
        if (this.ao != null) {
            this.ao.K_();
        }
        if (!(this.ap == null || this.aq == null)) {
            this.ap.b(this.aq);
        }
        super.onDestroy();
    }

    @VisibleForTesting
    void a(Bundle bundle) {
        this.k = (ActivitySummary) bundle.getParcelable("as");
        this.y = bundle.getBoolean("f");
        this.z = bundle.getBoolean("dw");
        this.ad = bundle.getBoolean("fss");
        this.af = bundle.getInt("social_context_type", -1);
        this.ag = bundle.getInt("social_context_user_count", -1);
        this.a = bundle.getBoolean("display_possibly_sensitive_media");
        Collection parcelableArrayList = bundle.getParcelableArrayList("suggested_tweet");
        if (parcelableArrayList != null) {
            this.u.clear();
            this.u.addAll(parcelableArrayList);
        }
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        this.p = (PageableListView) ap().a;
        return a;
    }

    public void a(View view, Tweet tweet, Bundle bundle) {
        super.a(view, tweet, bundle);
        if (tweet != null) {
            this.d.a(tweet, bundle);
        }
    }

    protected boolean z() {
        return ai.a();
    }

    protected void a(boolean z) {
        super.a(z);
        this.d.a();
    }

    protected void a(long j, long j2) {
        super.a(j, j2);
        this.d.b(j);
        this.d.a(j, "tweet::stream::results");
    }

    protected void a(com.twitter.app.common.list.t tVar) {
        super.a(tVar);
        tVar.c(2130968718);
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        PageableListView pageableListView = this.p;
        pageableListView.setScrollingCacheEnabled(false);
        pageableListView.setCacheColorHint(0);
        pageableListView.setOnPageScrollListener(new uh(this, pageableListView));
        LayoutInflater from = LayoutInflater.from(pageableListView.getContext());
        TweetDetailView tweetDetailView = (TweetDetailView) from.inflate(2130969481, pageableListView, false);
        tweetDetailView.a.setOnClickListener(this);
        tweetDetailView.getNamePanel().setOnClickListener(this);
        tweetDetailView.setOnMomentClickListener(this);
        this.p.setExploreByTouchHelper(new fp(this.p, tweetDetailView));
        TextView tweetTextView = tweetDetailView.getTweetTextView();
        if (tweetTextView != null) {
            tweetTextView.setOnLongClickListener(this);
        }
        tweetDetailView.b.setOnClickListener(this);
        tweetDetailView.setQuoteTweetClickListener(this);
        tweetDetailView.setQuoteTweetLongClickListener(this);
        tweetDetailView.setTranslationButtonClickListener(this);
        tweetDetailView.setOnMediaMonetizationClickListener(this);
        if (bundle != null) {
            tweetDetailView.b(bundle);
        }
        tweetDetailView.setMoment(this.t);
        this.b = tweetDetailView;
        this.al = false;
        this.ab = tweetDetailView.c;
        this.ab.b();
        this.F = (ToggleImageButton) this.ab.findViewById(2131951911);
        this.G = (ToggleImageButton) this.ab.findViewById(2131951910);
        this.B = from.inflate(2130968658, pageableListView, false);
        this.A = from.inflate(2130969157, pageableListView, false);
        this.C = from.inflate(2130968745, pageableListView, false);
        if (bup.a().b()) {
            this.at = new bum((FrameLayout) view);
            this.at.a(bup.a().d());
        }
        this.d = c.a(getActivity(), aD(), this.K, this.L, aH(), this.Z);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("as", this.k);
        bundle.putBoolean("f", this.y);
        bundle.putBoolean("dw", this.z);
        bundle.putBoolean("fss", this.ad);
        bundle.putInt("social_context_type", this.af);
        bundle.putInt("social_context_user_count", this.ag);
        bundle.putBoolean("display_possibly_sensitive_media", this.a);
        bundle.putParcelableArrayList("suggested_tweet", this.u);
        this.b.a(bundle);
    }

    public void b(Tweet tweet) {
        this.f = tweet;
        this.ab.setTweet(this.f);
        this.l.b(this.f);
        w();
    }

    protected vm a(t tVar) {
        return new vm(new vl(um.a(getContext())));
    }

    public void a(Tweet tweet, Session session, String str, int i, int i2, int i3, String str2, boolean z) {
        this.e = session;
        this.f = tweet;
        this.q = str;
        this.s = i;
        this.n.a(session);
        this.af = i2;
        this.ag = i3;
        this.ah = str2;
        this.aj = z;
        if (this.ai == null) {
            this.ai = new qw(getActivity(), tweet);
        } else {
            this.ai.a(tweet);
        }
        if (!(this.x || tweet.f == null || !com.twitter.android.av.m.a(tweet))) {
            this.x = true;
            a(PromotedEvent.VIEW_DETAILS);
        }
        this.ab.setTweet(tweet);
        this.ab.setOnClickListener(this);
        this.l = new un(this, this.f);
        this.l.a(this);
        if (z()) {
            a(Collections.singletonList(new ui(this)), 0);
        }
        this.an = new uo(this, null);
        this.an.a(this.u, false);
        this.an.a(this);
        this.m = ((com.twitter.android.widget.h) ((com.twitter.android.widget.h) new com.twitter.android.widget.h(this.l, this.an).a(true)).a(y.g())).a();
        PageableListView pageableListView = this.p;
        boolean o = tweet.o();
        if (pageableListView.getAdapter() == null) {
            this.p.addFooterView(this.C, null, false);
            pageableListView.a(this.A);
            pageableListView.b();
            if (o) {
                pageableListView.a();
            }
            pageableListView.setAdapter(this.m);
        }
        this.j = true;
        bq H = H();
        long b = com.twitter.util.m.b();
        if (this.y || b < H.a + 300000) {
            getLoaderManager().initLoader(1, null, this);
        } else {
            a(tweet, session);
        }
        this.b.setOnTweetAnalyticsClickListener(new uj(this));
        if (this.k == null) {
            c(new d(getActivity(), session, tweet.t), 2, 0);
        }
        if (!tweet.p()) {
            E();
        }
        if (o) {
            b(false);
        }
        if (com.twitter.config.d.a("translate_tweet_auto")) {
            I();
            c("translation_auto");
        }
        FragmentActivity activity = getActivity();
        Intent intent = activity.getIntent();
        if (intent != null) {
            Uri data = intent.getData();
            if (data != null) {
                List pathSegments = data.getPathSegments();
                Object obj = !pathSegments.isEmpty() ? (String) pathSegments.get(0) : BuildConfig.VERSION_NAME;
                if (intent.getBooleanExtra("email_redirect_retweet", false) || "retweet".equals(obj)) {
                    if (this.f.d) {
                        intent.removeExtra("email_redirect_retweet");
                    } else {
                        new nt(activity, this.f).a(mx.AppCompatTheme_buttonStyleSmall).a(this).a(this).a().b();
                    }
                } else if (intent.getBooleanExtra("email_redirect_favorite", false) || "favorite".equals(obj) || "like".equals(obj)) {
                    if (this.f.a) {
                        intent.removeExtra("email_redirect_favorite");
                    } else {
                        y();
                    }
                }
            }
        }
        vl a = ((vm) am()).a();
        this.ao = a.a(this.e, this.f).c(new uk(this, a));
    }

    private void a(Tweet tweet, Session session) {
        this.y = true;
        o oVar = new o(getActivity(), session, tweet.t);
        a(oVar);
        c(oVar, 1, 0);
    }

    public final void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        aa aaVar = (aa) xVar.l().b();
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (this.f != null) {
                    int i3 = aaVar.c.getInt("new_tweet", 0);
                    a(xVar, i3);
                    switch (i2) {
                        case WireMessage.WIRE_CHAT /*1*/:
                            if (i3 > 0) {
                                getLoaderManager().initLoader(2, null, this);
                                H().c = 0;
                                return;
                            }
                            this.p.a(false);
                        case WireMessage.WIRE_CONTROL /*2*/:
                            if (i3 > 0) {
                                getLoaderManager().initLoader(3, null, this);
                            } else {
                                this.p.b(false);
                            }
                        default:
                            if (aaVar.b()) {
                                H().a = com.twitter.util.m.b();
                                getLoaderManager().initLoader(1, null, this);
                                return;
                            }
                            H().a = 0;
                            this.y = false;
                            q();
                            this.p.a(false);
                            Context activity = getActivity();
                            if (activity != null) {
                                u.a(activity, activity.findViewById(2131951923), activity.getString(2131364005), -2).setAction(activity.getString(2131364006), new ul(this)).show();
                            }
                    }
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                k g = aaVar.g();
                if (this.f != null && g != null && g.a == 200) {
                    this.k = ((d) xVar).e();
                    this.l.notifyDataSetChanged();
                    J();
                }
            case WireMessage.WIRE_AUTH /*3*/:
                int[] s = ((com.twitter.library.api.timeline.d) xVar).s();
                if (aaVar.d() == 403) {
                    bz.a(this.T).a(s);
                }
                if (this.f != null) {
                    c(new d(this.T, aT(), this.f.t), 2, 0);
                }
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (this.f != null) {
                    c(new d(this.T, aT(), this.f.t), 2, 0);
                }
            case mx.UserView_actionButtonPaddingRight /*5*/:
                if (aaVar.b()) {
                    TwitterUser twitterUser = ((bpo) xVar).a;
                    if (twitterUser != null && this.f != null && twitterUser.c == this.f.s) {
                        this.f.m = twitterUser.S;
                        this.f.n = twitterUser.z;
                        R();
                    }
                }
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (this.f != null) {
                    Translation e = ((bnv) xVar).e();
                    if (!aaVar.b() || e == null) {
                        Toast.makeText(this.T, 2131363956, 1).show();
                    } else if (this.b.a(e)) {
                        this.b.b();
                    } else {
                        Toast.makeText(this.T, getResources().getString(2131363958, new Object[]{cex.a(e.c, e.c)}), 1).show();
                    }
                }
            default:
        }
    }

    public void b(boolean z) {
        a(z, this.E);
    }

    public void a(boolean z, int i) {
        if (D()) {
            a(this.p.getHeaderViewsCount() + this.l.a(this.f), i, z);
        }
    }

    private boolean D() {
        return (this.p == null || this.l == null) ? false : true;
    }

    public void a(int i, int i2, boolean z) {
        PageableListView pageableListView = this.p;
        if (!D()) {
            return;
        }
        if (z) {
            pageableListView.smoothScrollToPositionFromTop(i, i2);
        } else {
            ap().a(i, i2);
        }
    }

    private boolean d(Tweet tweet) {
        return tweet.am() && y.k();
    }

    private void E() {
        boolean b = cdy.b(this.f);
        boolean a = cpb.a(this.f);
        if (b || a || this.f.p() || d(this.f)) {
            Object obj;
            UserSettings j = this.e.j();
            boolean L = L();
            if (!this.a && this.f.D() && (j == null || !j.k || O())) {
                obj = 1;
            } else {
                obj = null;
            }
            com.twitter.library.widget.tweet.content.j jVar = new com.twitter.library.widget.tweet.content.j(b, getActivity(), this.f, DisplayMode.b, aD(), this.o);
            jVar.a(4, this.b);
            bdj a2 = bdj.a(this.T);
            if (F()) {
                this.b.a(new tw(this, a2));
            } else if (obj != null) {
                this.b.a(new tx(this), L, this.f.E());
            } else {
                this.g = jVar.a();
                if (this.g != null && b) {
                    this.h = new com.twitter.android.card.h(this.T);
                    this.h.a(this.f);
                    this.h.a(aD());
                    this.h.b(this.o);
                }
                if (this.b != null) {
                    this.b.setContentHost(this.g);
                }
            }
        }
    }

    private boolean F() {
        bdj a = bdj.a(this.T);
        return !this.z && ((!com.twitter.config.d.a("twitter_access_android_media_forward_enabled") || this.f.L() || (be.d(this.f) && a.k())) && a.j());
    }

    public void onStart() {
        super.onStart();
        if (this.al) {
            this.b.aG_();
            this.al = false;
        }
        cc.b(this);
    }

    public void onStop() {
        cc.a(this);
        long g = aT().g();
        this.d.a(g, "tweet::stream::results");
        this.d.b(g);
        this.b.f();
        this.al = true;
        super.onStop();
    }

    private void a(View view, int i) {
        LayoutParams layoutParams = view.getLayoutParams();
        if (i != layoutParams.height) {
            layoutParams.height = i;
            view.requestLayout();
        }
    }

    public void n() {
        if (this.f != null && this.p != null && this.p.getMeasuredHeight() != 0 && this.b != null && this.b.getMeasuredHeight() != 0) {
            Rect rect = new Rect();
            Object obj = (this.A.getParent().getParent() == null || !this.A.getGlobalVisibleRect(rect)) ? null : 1;
            a(this.A, Math.max(this.D, obj != null ? rect.height() : this.D));
        }
    }

    void q() {
        if (this.j) {
            un unVar = this.l;
            PageableListView pageableListView = this.p;
            Tweet tweet = this.f;
            pageableListView.a(unVar.a(0).o());
            pageableListView.b(tweet.equals(unVar.b()));
            unVar.notifyDataSetChanged();
            if (tweet.o()) {
                a(this.A, r.a(getActivity()));
                a(false, this.E);
            }
            this.j = false;
            com.twitter.library.metrics.f b = com.twitter.library.metrics.f.b("tweet:complete", aG(), ark.n);
            b.b(this.Y);
            b.j();
            if (this.h != null) {
                this.h.a("impression", "platform_card");
            }
        }
    }

    public void r() {
        PageableListView pageableListView = this.p;
        pageableListView.setSelectionFromTop((pageableListView.getHeaderViewsCount() + pageableListView.getCount()) - 1, 0);
        pageableListView.b(true);
        this.ac = true;
    }

    public void c(boolean z) {
        this.ac = false;
        if (this.f == null) {
            return;
        }
        if (z) {
            t();
        } else {
            this.p.b(false);
        }
    }

    public void t() {
        getLoaderManager().initLoader(3, null, this);
        if (a_(2)) {
            Tweet b = this.l.b();
            H().b = com.twitter.util.m.b();
            o oVar = new o(getActivity(), this.e, this.f.t);
            oVar.c(b.t);
            a(oVar);
            c(oVar, 1, 2);
        }
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        Uri uri;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                uri = dd.l;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                uri = dd.m;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                uri = dd.n;
                break;
            default:
                return null;
        }
        String valueOf = String.valueOf(this.f.t);
        return new bu(getActivity().getApplicationContext(), uri.buildUpon().appendEncodedPath(valueOf).appendQueryParameter("ownerId", String.valueOf(this.e.g())).build(), cdg.a, null, null, null);
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        int i = 1;
        PageableListView pageableListView = this.p;
        un unVar = this.l;
        Tweet a;
        Tweet a2;
        switch (loader.getId()) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (unVar.getCount() == 1 && cursor != null && cursor.moveToFirst()) {
                    List arrayList = new ArrayList(cursor.getCount());
                    do {
                        a = ccc.a.a(cursor);
                        if (a.u != this.ae) {
                            arrayList.add(a);
                        }
                    } while (cursor.moveToNext());
                    unVar.a(arrayList);
                    unVar.notifyDataSetChanged();
                }
                q();
            case WireMessage.WIRE_CONTROL /*2*/:
                if (cursor != null && cursor.moveToFirst()) {
                    a2 = unVar.a(0);
                    Tweet a3 = ccc.a.a(cursor);
                    if (!a3.o()) {
                        pageableListView.a(false);
                    }
                    if (!a2.equals(a3)) {
                        unVar.a(0, a3);
                        while (cursor.moveToNext()) {
                            a = ccc.a.a(cursor);
                            if (!a2.equals(a)) {
                                unVar.a(i, a);
                                i++;
                            } else if (i > 0) {
                                unVar.notifyDataSetChanged();
                                ap().a(pageableListView.getHeaderViewsCount() + unVar.a(a2), pageableListView.getLoadingHeaderHeight());
                            }
                        }
                        if (i > 0) {
                            unVar.notifyDataSetChanged();
                            ap().a(pageableListView.getHeaderViewsCount() + unVar.a(a2), pageableListView.getLoadingHeaderHeight());
                        }
                    }
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (cursor != null) {
                    Tweet b = unVar.b();
                    if (cursor.moveToLast()) {
                        i = 0;
                        do {
                            a2 = ccc.a.a(cursor);
                            if (!(b.equals(a2) || this.f.equals(a2) || a2.u == this.ae)) {
                                if (!this.as.remove(Long.valueOf(a2.H))) {
                                    unVar.a(unVar.getCount() - i, a2);
                                    i++;
                                }
                            }
                            if (i > 0) {
                                H().b = 0;
                                unVar.notifyDataSetChanged();
                            } else if (cursor.getCount() >= 400) {
                                this.p.b(false);
                            }
                        } while (cursor.moveToPrevious());
                        if (i > 0) {
                            H().b = 0;
                            unVar.notifyDataSetChanged();
                        } else if (cursor.getCount() >= 400) {
                            this.p.b(false);
                        }
                    }
                }
            default:
        }
    }

    private bq H() {
        return bp.a(getActivity().getApplicationContext()).a(this.f.t);
    }

    public void d(long j) {
        TwitterScribeAssociation twitterScribeAssociation;
        if (this.o != null) {
            twitterScribeAssociation = (TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation(this.o).a(1)).a(this.f.t);
        } else {
            twitterScribeAssociation = (TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation(aD()).a(1)).a(this.f.t);
        }
        ProfileActivity.a(getActivity(), j, null, this.f.f, twitterScribeAssociation, null);
    }

    public void c(long j) {
        Context activity = getActivity();
        if (activity != null) {
            activity.startActivity(MomentsFullScreenPagerActivity.b(activity, j));
        }
    }

    public void a(q qVar) {
        getContext().startActivity(fk.a(getContext(), qVar));
        this.i.a(qVar);
    }

    public void a(b bVar) {
        Context context = getContext();
        context.startActivity(fk.a(context, bVar));
        this.i.a(bVar);
    }

    public void a(ap apVar) {
        b(apVar.i);
        this.i.a(apVar);
    }

    public void a(TwitterPlace twitterPlace) {
        Context activity = getActivity();
        if (activity != null) {
            startActivity(com.twitter.android.geo.places.d.a(activity, twitterPlace));
        }
    }

    public void a(cr crVar) {
        if (this.h != null) {
            this.h.a("open_link", "platform_card");
        }
        String str = "tweet::" + this.f.ap() + "::open_link";
        String str2 = "tweet::tweet::impression";
        OpenUriHelper.a(getActivity(), this.f, crVar, this.Y, str, "tweet::tweet::impression", aD(), null);
    }

    public boolean b(cr crVar) {
        return true;
    }

    public void a(cgl cgl) {
        a(PromotedEvent.CARD_URL_CLICK);
        this.n.a(this.f, cgl, null);
    }

    public void a(MediaEntity mediaEntity) {
        if (cpb.c(mediaEntity)) {
            new bd().a(aD()).a(this.f).c(true).e(false).a(getActivity());
            return;
        }
        a(PromotedEvent.CARD_URL_CLICK);
        this.n.a(this.f, mediaEntity, null);
    }

    public void e(long j) {
        this.n.a(this.f, j, null);
    }

    public void onClick(View view) {
        Tweet tweet = this.f;
        int id = view.getId();
        String b = Tweet.b(this.f);
        TwitterScribeAssociation aD = aD();
        switch (id) {
            case bcx.action_button /*2131951619*/:
                if (io.a()) {
                    io.a(getActivity(), 4, tweet.d());
                    return;
                }
                ActionButton actionButton = (ActionButton) view;
                boolean isChecked = actionButton.isChecked();
                String str = isChecked ? "unfollow" : "follow";
                if (isChecked) {
                    this.f.m = 0;
                    this.aa.a(new bok(getActivity(), aT(), this.f.s, this.f.f));
                } else {
                    this.f.m = 1;
                    this.aa.a(new boh(getActivity(), aT(), this.f.s, this.f.f));
                }
                actionButton.toggle();
                TwitterScribeLog b2 = new TwitterScribeLog(aT().g()).a(getActivity(), this.f, aD, null).b(this.f.s, this.f.f, null);
                String[] strArr = new String[1];
                strArr[0] = ScribeLog.a("tweet", null, b, null, str);
                bbu.a(b2.b(strArr));
            case 2131952230:
                this.i.a();
                startActivity(new Intent(getActivity(), TweetActivity.class).setData(new Builder().scheme("twitter").authority("tweet").appendQueryParameter("status_id", String.valueOf(this.f.y)).build()).putExtra("association", aD));
            case 2131952353:
            case 2131953329:
                if (id == 2131952353) {
                    this.i.c();
                } else {
                    this.i.d();
                }
                d(this.f.s);
            case 2131952792:
                a(PromotedEvent.FOOTER_PROFILE);
                if (tweet.F() && tweet.c) {
                    d(tweet.s);
                } else {
                    d(tweet.b);
                }
            case 2131953333:
                if (this.b.a()) {
                    this.b.b();
                    return;
                }
                I();
                c("translation_button");
            case 2131953336:
                n a = ((vm) am()).a().a();
                if (a != null && this.ap != null) {
                    this.ap.c(new e(a));
                }
            default:
        }
    }

    private void I() {
        if (!this.aa.a(this.ak) && cex.a(this.T, this.f) && !this.b.a()) {
            c("translation_request");
            Locale locale = this.T.getResources().getConfiguration().locale;
            if (locale == null) {
                locale = Locale.getDefault();
            }
            bnv bnv = new bnv(this.T, aT(), this.f.H, w.b(locale));
            c(bnv, 6, 0);
            this.ak = bnv.d;
        }
    }

    public boolean onLongClick(View view) {
        int id = view.getId();
        if (id == 2131953331) {
            bbu.a(new TwitterScribeLog(this.e.g()).b("tweet", null, this.f.ap(), null, "copy"));
            Context activity = getActivity();
            aq.a(activity, this.f.f());
            Toast.makeText(activity, 2131362329, 0).show();
            return true;
        } else if (id == 2131952230 && this.n.a(this.f)) {
            return true;
        } else {
            return false;
        }
    }

    private void b(String str) {
        TwitterScribeAssociation twitterScribeAssociation;
        Intent putExtra = new Intent(getActivity(), ProfileActivity.class).putExtra("screen_name", str);
        if (this.o != null) {
            twitterScribeAssociation = this.o;
        } else {
            twitterScribeAssociation = aD();
        }
        putExtra.putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation(twitterScribeAssociation).a(1)).a(this.f.t));
        if (this.f.f != null) {
            putExtra.putExtra("pc", cni.a(this.f.f));
        }
        startActivity(putExtra);
    }

    void a(PromotedEvent promotedEvent) {
        if (this.f.f != null) {
            aH().a(promotedEvent, this.f.f);
        }
    }

    public void a(ListView listView, View view, int i, long j) {
        super.a(listView, view, i, j);
        Object itemAtPosition = listView.getItemAtPosition(i);
        if ((itemAtPosition instanceof Tweet) && ((Tweet) itemAtPosition).ao()) {
            ConfirmCancelPendingTweetDialog.a(getActivity().getSupportFragmentManager(), (Tweet) itemAtPosition);
            return;
        }
        a(BuildConfig.VERSION_NAME, i + -1 < this.l.a(this.f) ? "parent_tweet" : "child_tweet", "click");
        i(j);
    }

    private void a(String str, String str2, String str3) {
        TwitterScribeLog a = new TwitterScribeLog(aT().g()).a(getActivity().getApplicationContext(), this.f, aD(), null);
        String[] strArr = new String[1];
        strArr[0] = ScribeLog.a("tweet", null, str, str2, str3);
        bbu.a((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) a.b(strArr)).a("tweet::tweet::impression")).a(this.o));
    }

    public void a(View view) {
        Tweet tweet = this.f;
        if (tweet.a) {
            c(new com.twitter.library.api.timeline.h(getActivity(), this.e, tweet.t).a(tweet.f), 4, 0);
            g(false);
            c("unfavorite");
            if (this.at != null) {
                this.at.c(view);
                return;
            }
            return;
        }
        c(new com.twitter.library.api.timeline.d(getActivity(), this.e, tweet.t, tweet.u).a(tweet.f).a(Boolean.valueOf(tweet.l())), 3, 0);
        g(true);
        c("favorite");
        if (this.at != null) {
            this.at.b(view);
        }
    }

    private void g(boolean z) {
        long[] jArr;
        long[] jArr2;
        if (z) {
            this.f.a = true;
            Tweet tweet = this.f;
            tweet.o++;
            this.F.setToggledOn(true);
            this.F.setContentDescription(getResources().getString(2131362020));
        } else {
            this.f.a = false;
            this.f.o = Math.max(this.f.o - 1, 0);
            this.F.setToggledOn(false);
            this.F.setContentDescription(getResources().getString(2131361993));
        }
        ActivitySummary activitySummary = this.k;
        if (activitySummary != null) {
            jArr = activitySummary.d;
            jArr2 = activitySummary.c;
        } else {
            jArr = new long[0];
            jArr2 = new long[0];
        }
        this.k = new ActivitySummary(Integer.toString(this.f.o), Integer.toString(this.f.l), jArr2, jArr);
        this.b.a(this.k, this);
    }

    public void u() {
        new nt(getActivity(), this.f).a(mx.AppCompatTheme_buttonStyleSmall).a(this).a(this).a().a();
    }

    public void v() {
        aq.a(getActivity(), this.f, false);
        c("share");
    }

    public void a(long j, Tweet tweet, boolean z) {
        if (isAdded()) {
            boolean z2 = tweet.s == this.e.g();
            if (z) {
                tweet.d = false;
                this.G.setToggledOn(false);
                if (z2) {
                    c("self_unretweet");
                }
                c("unretweet");
                return;
            }
            tweet.d = true;
            this.G.setToggledOn(true);
            if (z2) {
                c("self_retweet");
            }
            c("retweet");
        }
    }

    public void a(long j, boolean z, boolean z2, boolean z3) {
        if (isAdded() && this.f != null && this.T != null) {
            if (!z) {
                if (z2) {
                    this.f.d = true;
                    this.G.setToggledOn(true);
                } else {
                    this.f.d = false;
                    this.G.setToggledOn(false);
                    if (!z3) {
                        Toast.makeText(this.T, 2131364031, 1).show();
                    }
                }
            }
            c(new d(this.T, aT(), this.f.t), 2, 0);
        }
    }

    public void b(long j, Tweet tweet, boolean z) {
        if ((tweet.s == j ? 1 : null) != null) {
            c("self_quote");
        }
        c("quote");
    }

    public void c(long j, Tweet tweet, boolean z) {
        bbu.a(new TwitterScribeLog(aT().g()).b("tweet::retweet_dialog::dismiss"));
    }

    public void d(long j, Tweet tweet, boolean z) {
        if (aH() != null) {
            bbu.a(new TwitterScribeLog(aT().g()).b("tweet::retweet_dialog::impression"));
        }
    }

    public void b(long j) {
        ap().a.post(new ty(this, j));
    }

    public boolean a(long j, Tweet tweet, Runnable runnable) {
        this.as.add(Long.valueOf(tweet.H));
        if (this.f == null || tweet.D != this.f.H) {
            return false;
        }
        ap().a.post(new tz(this, tweet, j));
        return true;
    }

    public void a(Tweet tweet) {
        ap().a.post(new ua(this, tweet));
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        FragmentActivity activity = getActivity();
        switch (i) {
            case mx.AppCompatTheme_checkboxStyle /*102*/:
                if (i2 != -1) {
                    return;
                }
                if (this.f != null) {
                    c("delete");
                    this.aa.a(bno.a(activity.getApplicationContext(), this.e, this.f));
                    Intent intent = new Intent();
                    intent.putExtra("status_id", this.f.u);
                    activity.setResult(1, intent);
                    activity.finish();
                    return;
                }
                bbn.a(new bbl(new IllegalStateException("ANDROID-17421")));
            default:
        }
    }

    public void a(View view, int i, long[] jArr) {
        Context activity = getActivity();
        if (io.a()) {
            io.c(activity, i, this.f.d());
        } else {
            startActivity(new com.twitter.app.users.q().a(this.e.g()).b(this.f.t).a(i).a(jArr).a(true).a(activity));
        }
    }

    private void J() {
        int i = 0;
        long g = aT().g();
        if (this.k != null) {
            if (!(this.f.a || this.k.c == null || this.k.c.length <= 0)) {
                for (long j : this.k.c) {
                    if (j == g) {
                        this.f.a = true;
                        this.F.setToggledOn(true);
                        break;
                    }
                }
            }
            if (!this.f.c && this.k.d != null && this.k.d.length > 0) {
                long[] jArr = this.k.d;
                int length = jArr.length;
                while (i < length) {
                    if (jArr[i] == g) {
                        this.f.c = true;
                        this.G.setToggledOn(true);
                        return;
                    }
                    i++;
                }
            }
        }
    }

    private boolean L() {
        return com.twitter.config.d.a("blocker_interstitial_enabled") && O();
    }

    private boolean O() {
        return this.f.b == aT().g();
    }

    public void w() {
        if (this.l != null) {
            this.l.notifyDataSetChanged();
        }
        if (this.g != null) {
            this.g.a(this.f);
        }
        if (this.h != null) {
            this.h.a(this.f);
        }
    }

    private static boolean e(Tweet tweet) {
        return tweet.q() && !tweet.t();
    }

    private void a(o oVar) {
        if (this.u.isEmpty() && this.f != null && this.l != null && aT().d()) {
            oVar.a(this.f, this.l.a());
        }
    }

    private void a(x xVar, int i) {
        if (this.u.isEmpty() && (xVar instanceof o)) {
            this.u.addAll(((o) xVar).e());
            P();
            if (this.an != null) {
                this.an.a(this.u, i <= 0);
            }
        }
    }

    private void P() {
        int i;
        int i2 = 0;
        int i3 = this.u.size() < 2 ? 1 : 0;
        View view = this.B;
        if (i3 != 0) {
            i = 8;
        } else {
            i = 0;
        }
        view.setVisibility(i);
        this.A.setBackgroundColor(getResources().getColor(i3 != 0 ? 2131886145 : 2131886217));
        View view2 = this.C;
        if (i3 == 0) {
            i2 = 8;
        }
        view2.setVisibility(i2);
        if (i3 == 0) {
            this.v.a(aT().g());
        }
    }

    private void a(TweetView tweetView, Tweet tweet) {
        this.ar.a(tweet);
        tweetView.setFriendshipCache(this.ar);
        tweetView.setOnTweetViewClickListener(this.n);
        tweetView.setContentSize(ao.a);
        tweetView.setHideInlineActions(false);
        tweetView.setDisplayTranslationBadge(cex.a(this.T, tweet));
    }

    private z a(TweetView tweetView) {
        return new ub(this, tweetView);
    }

    public void a(long j, boolean z, int i) {
        Tweet h = h(j);
        if (h == null) {
            return;
        }
        if (h.a != z || h.o != i) {
            h.a = z;
            h.o = i;
            w();
        }
    }

    private Tweet h(long j) {
        Tweet a = this.an == null ? null : this.an.a(j);
        if (a != null) {
            return a;
        }
        if (this.l == null) {
            return null;
        }
        return this.l.a(j);
    }

    public void f(long j) {
        if (this.l != null) {
            this.ae = j;
            this.l.c(j);
        }
    }

    private void R() {
        boolean a = p.a(this.f.m);
        if (!(this.f.s == aT().g()) && !this.f.c() && !f(this.f)) {
            if (!a || this.ad) {
                this.ad = true;
                this.b.a(this, a);
            }
        }
    }

    private boolean f(Tweet tweet) {
        return tweet.am() && y.k();
    }

    private void c(String str) {
        a(BuildConfig.VERSION_NAME, str);
    }

    private void a(String str, String str2) {
        this.i.a(str, str2);
    }

    private void a(String str, Tweet tweet) {
        String a;
        TwitterScribeAssociation aD = aD();
        if (aD != null) {
            a = aD.a();
        } else {
            a = "tweet";
        }
        bbu.a((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).a(this.T, tweet, aD, null).b(a, BuildConfig.VERSION_NAME, "media_forward:platform_photo_card", str)).a((ScribeAssociation) aD));
    }

    private void g(Tweet tweet) {
        if (tweet.U() && tweet.K()) {
            TwitterScribeLog a = new TwitterScribeLog(this.e.g()).a(getContext(), tweet, null, null);
            String[] strArr = new String[1];
            strArr[0] = ScribeLog.a("tweet:::quoted_tweet:show");
            bbu.a((TwitterScribeLog) a.b(strArr));
        }
    }

    protected void y() {
        Context activity = getActivity();
        AlertDialog create = new AlertDialog.Builder(activity).setTitle(2131364027).setMessage(2131362866).setPositiveButton(2131361993, new uc(this, activity)).setNegativeButton(2131362041, null).create();
        create.setOnDismissListener(new ud(this, activity));
        create.show();
    }

    public void a() {
        super.a();
        MobileNotificationsActivity.a(getActivity().getIntent(), this.b);
    }

    private void i(long j) {
        startActivityForResult(new Intent(getActivity(), TweetActivity.class).setData(ck.a(j, this.e.g())).putExtra("association", aD()), 9153);
    }

    public void B() {
        ((ec) ((ec) ((ec) ((ec) new ec(mx.AppCompatTheme_checkboxStyle).a(2131364020)).b(2131364019)).d(2131364205)).f(2131363158)).i().a((Fragment) this).a(getActivity().getSupportFragmentManager());
    }
}
