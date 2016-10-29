package com.twitter.android;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask.Status;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v7.recyclerview.BuildConfig;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import android.widget.Toast;
import com.twitter.android.av.GalleryVideoChromeView;
import com.twitter.android.composer.aw;
import com.twitter.android.geo.places.d;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.t;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.timeline.ae;
import com.twitter.library.api.timeline.f;
import com.twitter.library.av.ai;
import com.twitter.library.av.b;
import com.twitter.library.client.Session;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.media.manager.UserImageRequest;
import com.twitter.library.provider.ck;
import com.twitter.library.scribe.ScribeGeoDetails.ScribeGeoPlace;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.widget.SlidingPanel;
import com.twitter.library.widget.StatusToolBar;
import com.twitter.library.widget.TweetView;
import com.twitter.media.ui.image.BaseMediaImageView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.ag;
import com.twitter.model.core.cr;
import com.twitter.ui.view.s;
import com.twitter.ui.view.u;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.c;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import defpackage.aac;
import defpackage.aad;
import defpackage.aae;
import defpackage.aag;
import defpackage.aah;
import defpackage.aai;
import defpackage.aaj;
import defpackage.aao;
import defpackage.aap;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bum;
import defpackage.bup;
import defpackage.buv;
import defpackage.bxv;
import defpackage.byc;
import defpackage.cdg;
import defpackage.cgl;
import defpackage.cni;
import defpackage.cpb;
import defpackage.cpf;
import defpackage.cql;
import defpackage.cqp;
import defpackage.zv;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class GalleryActivity extends TwitterFragmentActivity implements aad, aap, LoaderCallbacks<Cursor>, OnPageChangeListener, OnClickListener, bo, xj, m, cqp {
    private static final String[] a;
    private static final s l;
    private int A;
    private int B;
    private int C;
    private xf D;
    private SlidingPanel E;
    private long K;
    private View L;
    private View M;
    private TwitterButton N;
    private boolean O;
    private View P;
    private TextView Q;
    private boolean R;
    private final aao S;
    private gr T;
    private String U;
    private View V;
    private int W;
    private String X;
    private boolean Y;
    private List<aai> Z;
    private float aa;
    private boolean ab;
    private ag ac;
    private ViewGroup ad;
    private zv ae;
    private b af;
    private Map<Long, Map<Long, bxv>> ag;
    private boolean ah;
    protected boolean b;
    protected GalleryVideoChromeView c;
    protected LinearLayout d;
    protected FrameLayout e;
    protected aac f;
    Animation g;
    Animation h;
    Tweet i;
    MediaEntity j;
    int k;
    private cni m;
    private TweetView n;
    private ViewPager o;
    private long p;
    private boolean q;
    private ViewGroup r;
    private MediaActionBarFragment s;
    private TextView t;
    private Session u;
    private String[] v;
    private TwitterScribeAssociation w;
    private TwitterScribeItem x;
    private gp y;
    private boolean z;

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    static {
        a = new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"};
        l = new u().b(true).a();
    }

    public static void a(Activity activity, Intent intent, BaseMediaImageView baseMediaImageView) {
        if (baseMediaImageView == null || !baseMediaImageView.r()) {
            activity.startActivityForResult(intent, 9151);
            return;
        }
        zv.a(intent, baseMediaImageView);
        cql.a(activity, intent, baseMediaImageView, 9151);
    }

    public GalleryActivity() {
        this.k = -1;
        this.p = Long.MIN_VALUE;
        this.q = false;
        this.S = new aao(this);
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.d(2130969182);
        a.c(false);
        a.a(false);
        return a;
    }

    public void b(Bundle bundle, t tVar) {
        Bundle bundle2;
        int intExtra;
        List list;
        int intExtra2;
        Intent intent = getIntent();
        boolean z = cql.a(intent) && bundle == null;
        this.ab = z;
        this.U = intent.getStringExtra("photo_impression");
        if (aj.a(this.U)) {
            this.U = "photo:impression";
        }
        this.w = (TwitterScribeAssociation) intent.getParcelableExtra("association");
        this.z = intent.getBooleanExtra("dm", false);
        this.u = aa().c();
        this.ad = (ViewGroup) findViewById(2131953043);
        this.ad.setBackgroundDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
        SlidingPanel slidingPanel = (SlidingPanel) findViewById(2131952321);
        xf xfVar = new xf(this, ab(), this.w, slidingPanel, 2130837694);
        xfVar.a((xj) this);
        this.D = xfVar;
        slidingPanel.a(1);
        slidingPanel.setPanelSlideListener(xfVar);
        slidingPanel.setClipChildren(false);
        slidingPanel.setFadeMode(1);
        slidingPanel.setCoveredFadeColor(ViewCompat.MEASURED_STATE_MASK);
        this.E = slidingPanel;
        if (intent.hasExtra("li")) {
            ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("li");
            if (intent.hasExtra("list_starting_index")) {
                bundle2 = null;
                intExtra = intent.getIntExtra("list_starting_index", 0);
                list = parcelableArrayListExtra;
            } else {
                bundle2 = null;
                intExtra = 0;
                Object obj = parcelableArrayListExtra;
            }
        } else if (this.z) {
            bundle2 = null;
            intExtra = 0;
            list = null;
        } else if (intent.hasExtra("statusId")) {
            r1 = new Bundle();
            this.K = intent.getLongExtra("statusId", 0);
            r1.putParcelable("uri", ck.b(this.K, ab().g()));
            r1.putStringArray("projection", cdg.b);
            bundle2 = r1;
            intExtra = 0;
            list = null;
        } else if (intent.getData() != null) {
            r1 = new Bundle();
            r1.putParcelable("uri", intent.getData());
            r1.putStringArray("projection", intent.getStringArrayExtra("prj"));
            r1.putString("selection", intent.getStringExtra("sel"));
            r1.putStringArray("selectionArgs", intent.getStringArrayExtra("selArgs"));
            r1.putString("orderBy", intent.getStringExtra("orderBy"));
            this.p = intent.getLongExtra("id", Long.MIN_VALUE);
            bundle2 = r1;
            intExtra = 0;
            list = null;
        } else {
            finish();
            return;
        }
        if (intent.hasExtra("media")) {
            this.j = (MediaEntity) ab.a(intent, "media", MediaEntity.a);
        }
        if (intent.hasExtra("source_tweet_id") && bundle2 != null) {
            bundle2.putLong("sourceStatusId", intent.getLongExtra("source_tweet_id", -1));
        }
        if (intent.hasExtra("promoted_content")) {
            this.m = (cni) ab.a(intent, "promoted_content", cni.a);
        }
        boolean booleanExtra = intent.getBooleanExtra("etc", true);
        this.X = e(intent.getIntExtra("context", -1));
        this.x = (TwitterScribeItem) intent.getParcelableExtra("item");
        this.f = new aac(this, this.u, this.S, this.w, new aah(), this);
        this.f.a((cqp) this);
        ViewPager viewPager = (ViewPager) findViewById(2131952457);
        if (intent.hasExtra("page_cache_size")) {
            intExtra2 = intent.getIntExtra("page_cache_size", 3);
        } else {
            intExtra2 = 3;
        }
        viewPager.setOffscreenPageLimit(intExtra2);
        viewPager.setAdapter(this.f);
        viewPager.setOnPageChangeListener(this);
        viewPager.setPageMargin(getResources().getDimensionPixelSize(2131689549));
        this.o = viewPager;
        GestureDetectorCompat gestureDetectorCompat = new GestureDetectorCompat(getApplicationContext(), new gf(this, xfVar));
        gestureDetectorCompat.setIsLongpressEnabled(false);
        this.e = (FrameLayout) findViewById(2131953044);
        this.d = (LinearLayout) findViewById(2131953046);
        this.r = (ViewGroup) findViewById(2131953045);
        this.r.setOnTouchListener(new gh(this, gestureDetectorCompat, viewPager));
        t();
        this.t = (TextView) findViewById(2131953047);
        TweetView tweetView = (TweetView) this.r.findViewById(2131953049);
        if (this.z) {
            Object obj2 = null;
        } else {
            int i = 1;
        }
        tweetView.setHideInlineActions(true);
        tweetView.setHideMediaTagSummary(true);
        if (booleanExtra) {
            tweetView.setOnClickListener(this);
        }
        tweetView.setAlwaysStripMediaUrls(true);
        tweetView.setPromotedBadgeEnabled(false);
        this.n = tweetView;
        this.c = (GalleryVideoChromeView) findViewById(2131952789);
        AnimationListener bnVar = new bn(this);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, 2131034158);
        loadAnimation.setAnimationListener(bnVar);
        loadAnimation.setFillAfter(true);
        loadAnimation.setDuration(150);
        this.g = loadAnimation;
        loadAnimation = AnimationUtils.loadAnimation(this, 2131034160);
        loadAnimation.setAnimationListener(bnVar);
        loadAnimation.setFillAfter(true);
        loadAnimation.setDuration(150);
        this.h = loadAnimation;
        c.a(this.r, 1536);
        if (bundle == null) {
            this.b = true;
            xfVar.a = intent.getBooleanExtra("tagged_user_list", false);
        } else {
            this.b = bundle.getBoolean("cv", this.b);
            this.k = bundle.getInt("current_position", this.k);
            this.ah = true;
            xfVar.a(bundle);
        }
        if (bundle2 != null) {
            getSupportLoaderManager().initLoader(0, bundle2, this);
            setTitle(BuildConfig.VERSION_NAME);
        } else if (this.z) {
            this.k = 0;
            this.f.a(this.j, true);
            m();
            c(false);
            setTitle(2131362794);
        } else if (list != null) {
            this.f.b(list);
            tweetView.setVisibility(8);
            obj2 = null;
            if (list.size() == 1) {
                setTitle(2131364012);
            } else {
                if (intExtra == 0) {
                    onPageSelected(intExtra);
                }
                this.o.setCurrentItem(intExtra);
            }
        }
        if (obj2 != null) {
            this.s = MediaActionBarFragment.a(this, 2131951923, this.w, this.X, BuildConfig.VERSION_NAME, "gallery");
            if (bup.a().b()) {
                bum bum = new bum(this.e);
                bum.a(bup.a().d());
                this.s.a(bum);
            }
        }
        this.y = (gp) a_("saved_task");
        Map map = (Map) a_("sticker_repos");
        if (!CollectionUtils.b(map)) {
            this.ag = map;
        }
        this.T = new gr(new vq(this, ab(), d(9), null, this.w));
        this.L = LayoutInflater.from(this).inflate(2130969449, X(), false);
        this.M = this.L.findViewById(2131953318);
        this.M.setOnClickListener(this.T);
        this.N = (TwitterButton) findViewById(2131953048);
        this.N.setOnClickListener(this.T);
        this.O = com.twitter.config.c.d("vine_fullscreen_4595");
        this.P = LayoutInflater.from(this).inflate(2130969448, X(), false);
        this.Q = (TextView) LayoutInflater.from(this).inflate(2130969530, this.d, false);
        this.Q.setOnClickListener(this.T);
        this.R = false;
        if (ai.a()) {
            this.af = new b((Context) this);
        }
        z = intent.getBooleanExtra("show_tw", true) && (intent.hasExtra("statusId") || intent.hasExtra("prj"));
        this.S.a(aae.a().a(z).a(intent.getIntExtra("tw_link", 0)).a());
        l();
        if (this.ab) {
            f();
        }
    }

    private void f() {
        this.E.setLayerType(2, null);
        this.E.setAlpha(0.0f);
        Drawable background = this.ad.getBackground();
        background.setAlpha(0);
        this.ae = zv.a(this, getIntent(), this.ad, background);
        this.V = this.ae.b();
        this.ae.a(new gi(this));
    }

    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (this.D.c()) {
            this.D.a(true);
        }
        if (this.b) {
            a(0);
        } else {
            a(4);
        }
    }

    protected void onResume() {
        super.onResume();
        if (this.f != null) {
            aag b = this.f.b(this.k);
            if (b != null) {
                d(b.b());
            }
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.V != null) {
            this.V.setVisibility(8);
            this.V = null;
        }
        if (this.E.getPanelState() != 0) {
            this.E.getViewTreeObserver().addOnPreDrawListener(new gj(this));
        }
    }

    protected void o() {
        if (this.ab) {
            i();
        } else if (this.z) {
            super.onBackPressed();
        } else {
            super.o();
        }
    }

    public void onBackPressed() {
        if (this.D.c()) {
            this.D.a(false);
        } else {
            i();
        }
    }

    private void i() {
        if (this.W != this.k || this.V == null || this.ae == null) {
            super.onBackPressed();
            return;
        }
        this.V.setVisibility(0);
        this.o.setVisibility(8);
        this.E.setLayerType(2, null);
        this.E.setAlpha(0.0f);
        this.ae.ax_();
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017167);
        wVar.a(2132017187);
        wVar.a(2132017162);
        return true;
    }

    public int b(w wVar) {
        boolean z = true;
        int b = super.b(wVar);
        ToolBar j = wVar.j();
        if (wVar instanceof StatusToolBar) {
            ((StatusToolBar) wVar).setDisplayShowStatusBarEnabled(false);
        }
        aai a = this.f != null ? this.f.a(this.k) : null;
        if (a == null) {
            return b;
        }
        boolean z2;
        boolean z3;
        if (O().b(a.c) != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        bca a2 = j.a(2131953439);
        if (z2 && a.c() && (this.y == null || this.y.getStatus() == Status.FINISHED)) {
            z3 = true;
        } else {
            z3 = false;
        }
        a2.c(z3).b(a.c());
        if (this.z || this.i == null) {
            j.a(2131953438).b(false);
            j.a(2131953427).b(false);
        } else {
            j.a(2131953483).b(cpf.a(cpb.a(this.i, Size.b), this.u.g()));
            if (io.a()) {
                j.a(2131953427).b(false);
                j.a(2131953438).b(false);
            } else {
                if (this.i.b == this.u.g()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                a2 = j.a(2131953427);
                if (!z3 || this.i.c) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                a2.b(z3);
                bca a3 = j.a(2131953438);
                if (!(ab().d() && a.b() == 1)) {
                    z = false;
                }
                a3.b(z).c(z2);
            }
        }
        return 2;
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == 2131953439) {
            if (!(this.y == null || this.y.getStatus() == Status.FINISHED)) {
                this.y.cancel(true);
            }
            if (lf.a().a((Context) this, a)) {
                this.y = new gp(this, this.f);
                this.y.execute(new aag[]{this.f.b(this.k)});
            } else {
                startActivityForResult(new com.twitter.android.runtimepermissions.b(getString(2131363526), this, a).f(String.format("%s:%s:%s:", new Object[]{this.X, BuildConfig.VERSION_NAME, "gallery"})).a(), 1);
            }
            return true;
        }
        if (a == 2131953438) {
            String str = null;
            if (this.i != null || this.j == null) {
                cgl aa = this.i.aa();
                MediaEntity W = this.i.W();
                if (aa != null) {
                    String c = aa.c();
                    for (cr crVar : this.i.w.b()) {
                        if (crVar.B.equals(c)) {
                            str = crVar.C;
                            break;
                        }
                    }
                    str = c;
                } else if (W != null) {
                    str = W.C;
                }
            } else {
                str = this.j.C;
            }
            if (str != null) {
                startActivity(aw.a().a(" " + str, 0).b(this.u.e()).a((Context) this));
                return true;
            }
        } else if (a == 2131953483) {
            ((ec) ((ec) ((ec) new ec(1).b(2131363470)).d(2131363218)).f(2131362041)).i().a((m) this).a(getSupportFragmentManager());
        } else if (a == 2131953427) {
            showDialog(1);
        }
        return super.a(acVar);
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    X().a(2131953483).b(false);
                    Set hashSet = new HashSet();
                    hashSet.add(Long.valueOf(this.u.g()));
                    a(this.i.H, cpb.j(this.i.w.d), hashSet);
                    a(5, this.i);
                    this.D.b();
                }
            default:
        }
    }

    private void a(long j, List<Long> list, Set<Long> set) {
        b(new f(this, this.u, j, this.u.g(), list, set), 0);
    }

    protected void p_() {
        super.p_();
        a("saved_task", (Object) this.y);
        a("sticker_repos", (Object) this.ag);
    }

    public void b(boolean z) {
        if (z) {
            this.n.setVisibility(0);
        } else {
            this.n.setVisibility(8);
        }
    }

    public void b(int i) {
        TweetView tweetView = this.n;
        ToolBar X = X();
        if ((i & 1) != 0) {
            tweetView.setOnTweetViewClickListener(new gk(this, this, ab(), d(8), null, this.w));
            tweetView.setAutoLink(true);
        } else {
            tweetView.setOnTweetViewClickListener(new gl(this));
            tweetView.setAutoLink(false);
        }
        if (X != null) {
            if ((i & 2) != 0) {
                X.setCustomView(this.L);
            } else if ((i & 8) == 0 || !this.O) {
                X.setCustomView(null);
            } else {
                setTitle(BuildConfig.VERSION_NAME);
                X.setCustomView(this.P);
            }
        }
        if ((i & 4) != 0) {
            this.N.setVisibility(0);
        } else {
            this.N.setVisibility(8);
        }
    }

    public void a(String str) {
        if (aj.b((CharSequence) str)) {
            this.N.setText(getString(2131361981, new Object[]{str}));
            return;
        }
        this.N.setText(getString(2131361980));
    }

    public GalleryVideoChromeView W_() {
        return this.c;
    }

    public void c(int i) {
        if (i == this.W) {
            Y().h();
            if (this.V != null) {
                this.V.setVisibility(8);
            }
        }
    }

    public void e() {
        if (this.ab) {
            o();
            return;
        }
        finish();
        if (this.aa > 0.0f) {
            overridePendingTransition(2131034171, 2131034173);
        } else {
            overridePendingTransition(2131034171, 2131034172);
        }
    }

    public void a(float f) {
        this.aa = f;
        ToolBar X = X();
        if (X != null) {
            if (f >= 0.0f) {
                this.r.setTranslationY(f);
                X.setTranslationY(-f);
            } else {
                this.r.setTranslationY(-f);
                X.setTranslationY(f);
            }
        }
        if (this.V != null) {
            this.V.setTranslationY(f);
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("cv", this.b);
        bundle.putInt("current_position", this.k);
        bundle.putBoolean("dm", this.z);
        this.D.b(bundle);
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z && !this.b && !this.D.c()) {
            c.a(this.r);
        }
    }

    protected void onRestart() {
        super.onRestart();
        c(this.b);
        this.f.c();
        aag b = this.f.b(this.k);
        if (b != null) {
            a(b, true);
        }
    }

    protected void onStop() {
        this.f.b();
        super.onStop();
    }

    protected void onDestroy() {
        if (this.r != null) {
            this.r.setOnSystemUiVisibilityChangeListener(null);
        }
        if (this.f != null) {
            this.k = -1;
            this.f.d();
            this.f = null;
        }
        if (this.o != null) {
            ViewGroup viewGroup = (ViewGroup) this.o.getParent();
            viewGroup.removeAllViews();
            viewGroup.measure(0, 0);
            this.o = null;
        }
        if (this.af != null) {
            this.af.a();
            this.af = null;
        }
        if (this.ae != null) {
            this.ae.c();
        }
        super.onDestroy();
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new gq(this, (Uri) bundle.getParcelable("uri"), bundle.getStringArray("projection"), bundle.getString("selection"), bundle.getStringArray("selectionArgs"), bundle.getString("orderBy"), bundle.getLong("sourceStatusId", -1));
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (cursor == null || cursor.moveToFirst()) {
            List b = ((gq) loader).b();
            if (!this.ab || this.Y) {
                a(b);
                return;
            } else {
                this.Z = b;
                return;
            }
        }
        b(new ae(this, this.u, this.K), 1);
    }

    private void a(List<aai> list) {
        int max = Math.max(this.k, 0);
        int size;
        int i;
        if (this.p != Long.MIN_VALUE && this.j == null) {
            int i2;
            size = list.size();
            for (i = 0; i < size; i++) {
                if (((aai) list.get(i)).a.u == this.p) {
                    this.p = Long.MIN_VALUE;
                    i2 = i;
                    break;
                }
            }
            i2 = max;
            max = i2;
        } else if (this.j != null && this.k == -1 && aj.b(this.j.l)) {
            size = list.size();
            for (i = 0; i < size; i++) {
                if (this.j.l.equals(((aai) list.get(i)).c.q)) {
                    max = i;
                    break;
                }
            }
        }
        this.W = max;
        this.f.a((List) list);
        this.o.setCurrentItem(max, false);
        onPageSelected(max);
        m();
        if (this.ab && this.E.getAlpha() == 0.0f) {
            ViewCompat.postOnAnimation(this.E, new gm(this));
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        if (this.f != null) {
            this.f.a(n.g());
        }
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
        aac aac = this.f;
        int count = aac.getCount();
        if (count > 0) {
            if (count > 1) {
                setTitle(getString(2131363330, new Object[]{Integer.valueOf(i + 1), Integer.valueOf(count)}));
            } else {
                setTitle(getString(2131364012));
            }
            aag b = aac.b(i);
            if (b != null) {
                int i2;
                int i3 = this.k;
                if (i != this.k || this.ah) {
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                this.ah = false;
                Tweet b2 = b.b();
                if (b2 != null) {
                    xf xfVar = this.D;
                    boolean z = xfVar.b | i2;
                    xfVar.b = z;
                    if (z) {
                        this.D.b();
                    }
                    d(b2);
                    b(b2);
                    if (i3 != -1) {
                        a(i3, i, b2);
                        a(b2, PromotedEvent.CARD_MEDIA_CLICK);
                    }
                }
                if (i2 != 0) {
                    aag b3 = aac.b(i3);
                    if (b3 != null) {
                        a(b3, false);
                    }
                    a(b, true);
                    if (i3 != -1 && (b instanceof aaj)) {
                        ((aaj) b).e();
                    }
                    if (this.af != null) {
                        this.af.a(new com.twitter.library.av.ae(aac.a()), i);
                    }
                }
                if (!(i == this.W || this.V == null || this.V.getVisibility() != 0)) {
                    this.V.setVisibility(8);
                }
            }
        }
        this.k = i;
        Y().h();
    }

    protected void a(aag aag, boolean z) {
        aag.a(z);
    }

    private void b(Tweet tweet) {
        c(tweet);
        this.T.a(tweet);
        this.S.a(tweet);
        this.n.a(tweet, l);
        this.i = tweet;
        View view = this.s.getView();
        if (!tweet.c()) {
            this.s.a(tweet);
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (view != null) {
            view.setVisibility(8);
        }
        j();
        if (buv.b()) {
            a(tweet);
        }
    }

    private void c(Tweet tweet) {
        if (tweet.L() && this.O) {
            this.n.setHideProfileImage(true);
            this.n.setMaxLines(2);
            CharSequence spannableStringBuilder = new SpannableStringBuilder(getString(2131364173));
            spannableStringBuilder.setSpan(new TextAppearanceSpan(null, 1, (int) getResources().getDimension(2131689543), null, null), 0, spannableStringBuilder.length(), 34);
            spannableStringBuilder.insert(0, getString(2131362630) + " ");
            this.n.setTruncateText(spannableStringBuilder);
            if (tweet.h != null) {
                Object a = tweet.h.a("author");
                if (!TextUtils.isEmpty(a)) {
                    this.Q.setText(new StringBuilder(getString(2131364171)).append(a));
                    this.Q.setPadding(this.n.getPaddingLeft(), 0, this.n.getPaddingRight(), 0);
                    if (!this.R) {
                        int indexOfChild = this.d.indexOfChild(this.n);
                        if (indexOfChild > -1) {
                            this.d.addView(this.Q, indexOfChild + 1);
                            this.R = true;
                        }
                    }
                    this.Q.setVisibility(this.n.getVisibility());
                }
            }
        } else if (this.R) {
            this.n.setHideProfileImage(false);
            this.n.setMaxLines(-1);
            this.d.removeView(this.Q);
            this.R = false;
        }
    }

    private void d(Tweet tweet) {
        if (tweet != null && tweet.L()) {
            TextView textView = (TextView) this.P.findViewById(2131953317);
            if (c.a((Context) this, "co.vine.android")) {
                textView.setText(getString(2131363224));
                textView.setOnClickListener(this.T);
                return;
            }
            textView.setText(getString(2131362744));
            textView.setOnClickListener(new gn(this, tweet));
        }
    }

    public Map<Long, bxv> a(Tweet tweet) {
        if (CollectionUtils.b(this.ag)) {
            this.ag = new HashMap();
        }
        if (!CollectionUtils.b((Map) this.ag.get(Long.valueOf(tweet.H)))) {
            return (Map) this.ag.get(Long.valueOf(tweet.H));
        }
        List<MediaEntity> i = cpb.i(tweet.Y());
        Map<Long, bxv> hashMap = new HashMap();
        for (MediaEntity mediaEntity : i) {
            if (!(CollectionUtils.b(mediaEntity.r) || cpb.d(mediaEntity))) {
                hashMap.put(Long.valueOf(mediaEntity.c), new bxv(this, new byc(1, mediaEntity.r, ab().g())));
            }
        }
        this.ag.put(Long.valueOf(tweet.H), hashMap);
        return hashMap;
    }

    private void j() {
        int i;
        int i2 = 0;
        Tweet tweet = this.i;
        this.ac = null;
        if (tweet.V()) {
            List a = cpf.a(cpb.a(tweet, Size.b));
            this.D.a(getSupportLoaderManager(), cpf.b(a));
            if (a.size() == 1) {
                this.ac = (ag) a.get(0);
            }
            this.t.setOnClickListener(new go(this));
            this.t.setText(com.twitter.library.media.util.ab.b(this, a, 2130839668), BufferType.SPANNABLE);
            LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(this.A, this.B, 0, this.C);
            this.t.setLayoutParams(layoutParams);
            i = 1;
        } else {
            i = 0;
        }
        TextView textView = this.t;
        if (i == 0) {
            i2 = 8;
        }
        textView.setVisibility(i2);
    }

    private void l() {
        Resources resources = getResources();
        if (this.n.getVisibility() == 0) {
            TypedArray obtainStyledAttributes = obtainStyledAttributes(null, mx.TweetView, 2130772163, 0);
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(13, 0);
            int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(15, UserImageRequest.a(-3));
            this.A = ((dimensionPixelOffset + this.n.getPaddingLeft()) + dimensionPixelOffset2) + obtainStyledAttributes.getDimensionPixelOffset(14, 0);
            this.B = resources.getDimensionPixelOffset(2131689965);
            obtainStyledAttributes.recycle();
        } else {
            this.A = resources.getDimensionPixelOffset(2131689963);
            this.B = resources.getDimensionPixelOffset(2131689964);
        }
        this.C = resources.getDimensionPixelOffset(2131689962);
    }

    public void onPageScrollStateChanged(int i) {
    }

    public void c(boolean z) {
        if (this.b != z) {
            if (z) {
                c.a(this.e, 1536);
                if (!this.b) {
                    c.a(this.r, 1536);
                }
                this.e.startAnimation(this.g);
            } else {
                this.e.startAnimation(this.h);
                if (!this.D.c()) {
                    c.a(this.e);
                }
            }
            this.b = z;
        }
    }

    public void a(int i) {
        if (i == 0) {
            X().d();
        } else if (!this.D.c()) {
            X().e();
        }
        if (i == 0) {
            this.E.requestFocus();
        }
    }

    public Animation a() {
        return this.g;
    }

    public Animation b() {
        return this.h;
    }

    private void a(Tweet tweet, PromotedEvent promotedEvent) {
        cni cni = tweet.f != null ? tweet.f : this.m;
        if (com.twitter.android.av.m.a(tweet) && cni != null) {
            M().a(promotedEvent, cni);
        }
    }

    private void m() {
        if (!this.q) {
            a(2, null);
            this.q = true;
        }
    }

    private void a(int i, int i2, Tweet tweet) {
        if (i2 == i + 1) {
            a(0, tweet);
        } else if (i2 == i - 1) {
            a(1, tweet);
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131953048:
            case 2131953318:
            default:
                u();
                a(3, this.i);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1 && PermissionRequestActivity.a(intent)) {
                    this.y = new gp(this, this.f);
                    this.y.execute(new aag[]{this.f.b(this.k)});
                }
            case 9153:
                if (10 == i2) {
                    finish();
                }
            default:
                if (this.D != null) {
                    this.D.a(i, i2, intent);
                }
        }
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        switch (i) {
            case mx.View_android_theme /*0*/:
                if (this.i.H == ((f) xVar).b()) {
                    int i2;
                    if (((aa) xVar.l().b()).b()) {
                        i2 = 2131363051;
                    } else {
                        i2 = 2131363050;
                        X().a(2131953483).b(true);
                    }
                    Toast.makeText(this, i2, 0).show();
                }
            default:
        }
    }

    public Dialog onCreateDialog(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (this.z) {
                    String str;
                    if (this.j == null) {
                        str = "ANATOMY-371: attempting to delete a null DM photo";
                    } else {
                        str = "ANATOMY-371: attempting to delete DM photo #" + this.j.c;
                    }
                    bbn.a(new IllegalStateException(str));
                    return null;
                } else if (this.i != null) {
                    return MediaActionBarFragment.a((TwitterFragmentActivity) this, this.i, i);
                } else {
                    bbn.a(new IllegalStateException("ANATOMY-371: attempting to delete a photo but mTweet is null"));
                    return null;
                }
            default:
                return null;
        }
    }

    private void r() {
        if (this.i != null && this.i.N != null) {
            startActivity(d.a(this, this.i.N));
            a(10, this.i);
        }
    }

    private void s() {
        if (this.i != null) {
            if (this.ac != null) {
                a(this.i, PromotedEvent.USER_MENTION_CLICK);
                startActivity(new Intent(this, ProfileActivity.class).putExtra("screen_name", this.ac.d).putExtra("association", ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(ab().g())).b("gallery")).c("media_tag_summary")));
            } else {
                this.D.a(true);
                if (c.f(getApplicationContext())) {
                    this.E.a();
                }
            }
            a(4, this.i);
        }
    }

    private void t() {
        if (VERSION.SDK_INT < 19) {
            this.r.setOnSystemUiVisibilityChangeListener(new gg(this));
        }
    }

    private String d(int i) {
        if (this.v == null || i < 0 || i >= this.v.length) {
            return null;
        }
        return this.v[i];
    }

    private void a(int i, Tweet tweet) {
        if (d(i) != null) {
            ScribeItem scribeItem;
            if (i == 10) {
                ScribeItem b = TwitterScribeItem.b();
                b.a = tweet.H;
                ScribeGeoPlace scribeGeoPlace = new ScribeGeoPlace();
                scribeGeoPlace.a = tweet.N.b;
                scribeGeoPlace.b = tweet.N.c.toString();
                b.ai.c.add(scribeGeoPlace);
                scribeItem = b;
            } else {
                scribeItem = this.x;
            }
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(ab().g()).a(getApplicationContext(), tweet, this.w, null).b(r2)).a(this.w)).a(scribeItem));
        }
    }

    private void a(int i, long j, cni cni, String str) {
        if (d(i) != null) {
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(ab().g()).b(j, cni, str).b(r0)).a(this.w)).a(this.x));
        }
    }

    private String e(int i) {
        String str;
        String str2 = BuildConfig.VERSION_NAME;
        switch (i) {
            case mx.View_android_theme /*0*/:
                str = "profile";
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                str = "events";
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                str = "search";
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                str = "search";
                str2 = "cluster";
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                str = "home";
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                str = "tweet";
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                str = "profile_tweets";
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                str = "list";
                break;
            case ControlMessage.CONTROL_BAN /*8*/:
                str = "favorites";
                break;
            case mx.TwitterEditText_messageSize /*9*/:
                str = (this.w == null || this.w.a() == null) ? "photo_grid" : this.w.a();
                if (!(this.w == null || this.w.b() == null)) {
                    str2 = this.w.b();
                    break;
                }
                break;
            case mx.TwitterEditText_messageStyle /*10*/:
                str = (this.w == null || this.w.a() == null) ? "profile" : this.w.a();
                if (!(this.w == null || this.w.b() == null)) {
                    str2 = this.w.b();
                    break;
                }
                break;
            default:
                this.v = null;
                return null;
        }
        r2 = new String[11];
        r2[0] = ScribeLog.a(str, str2, "gallery", "next:click");
        r2[1] = ScribeLog.a(str, str2, "gallery", "prev:click");
        r2[2] = ScribeLog.a(str, str2, "gallery", this.U);
        r2[3] = ScribeLog.a(str, str2, "gallery", "tweet:click");
        r2[4] = ScribeLog.a(str, str2, "gallery", "media_tag_summary:click");
        r2[5] = ScribeLog.a(str, str2, "gallery", "remove_my_media_tag:click");
        r2[6] = ScribeLog.a(str, str2, "gallery", "media_tagged_user:follow");
        r2[7] = ScribeLog.a(str, str2, "gallery", "media_tagged_user:unfollow");
        r2[8] = ScribeLog.a(str, str2, "gallery", "tweet:open_link");
        r2[9] = ScribeLog.a(str, str2, "gallery", "button:cta_click_open");
        r2[10] = ScribeLog.a(str, str2, "gallery", "place_tag:click");
        this.v = r2;
        return str;
    }

    public void c() {
        if (this.i != null && this.i.f != null) {
            M().a(PromotedEvent.USER_MENTION_CLICK, this.i.f);
        }
    }

    public void a(boolean z) {
        c(!z);
    }

    public void a(boolean z, long j, String str, cni cni) {
        a(z ? 6 : 7, j, cni, str);
    }

    private void u() {
        startActivityForResult(new Intent(this, TweetActivity.class).putExtra("tw", this.i).putExtra("association", this.w), 9153);
    }
}
