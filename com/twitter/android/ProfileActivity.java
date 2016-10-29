package com.twitter.android;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.TransitionDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.Loader;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.ads.AdsCompanionWebViewActivity;
import com.twitter.android.ads.a;
import com.twitter.android.ads.b;
import com.twitter.android.businessprofiles.c;
import com.twitter.android.client.SearchSuggestionController;
import com.twitter.android.client.bv;
import com.twitter.android.metrics.d;
import com.twitter.android.profilecompletionmodule.ProfileCompletionFlowActivity;
import com.twitter.android.profilecompletionmodule.aa;
import com.twitter.android.profiles.HeaderImageView;
import com.twitter.android.profiles.ProfileDetailsViewManager;
import com.twitter.android.profiles.ProfileDetailsViewManager.IconItemType;
import com.twitter.android.profiles.af;
import com.twitter.android.profiles.ah;
import com.twitter.android.profiles.ak;
import com.twitter.android.profiles.animation.BalloonSetAnimationView;
import com.twitter.android.profiles.ao;
import com.twitter.android.profiles.ap;
import com.twitter.android.profiles.aq;
import com.twitter.android.profiles.ar;
import com.twitter.android.profiles.as;
import com.twitter.android.profiles.e;
import com.twitter.android.profiles.f;
import com.twitter.android.profiles.g;
import com.twitter.android.profiles.k;
import com.twitter.android.profiles.r;
import com.twitter.android.profiles.s;
import com.twitter.android.profiles.t;
import com.twitter.android.profiles.u;
import com.twitter.android.profiles.v;
import com.twitter.android.profiles.y;
import com.twitter.android.profiles.z;
import com.twitter.android.util.bf;
import com.twitter.android.widget.LoggedOutBar;
import com.twitter.android.widget.ProfileEmptyAvatarOverlay;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.TweetStatView;
import com.twitter.android.widget.do;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.m;
import com.twitter.app.users.q;
import com.twitter.config.AppConfig;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.AbsFragmentActivity;
import com.twitter.library.client.Session;
import com.twitter.library.client.at;
import com.twitter.library.client.av;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dg;
import com.twitter.library.provider.dh;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.x;
import com.twitter.library.util.FriendshipCache;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.model.core.p;
import com.twitter.model.timeline.aj;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.ab;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bcx;
import defpackage.bln;
import defpackage.bmz;
import defpackage.bog;
import defpackage.boh;
import defpackage.bok;
import defpackage.boo;
import defpackage.bor;
import defpackage.bot;
import defpackage.bow;
import defpackage.bpj;
import defpackage.brz;
import defpackage.cni;
import defpackage.cph;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Set;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ProfileActivity extends ScrollingHeaderUserQueryActivity implements OnAccountsUpdateListener, LoaderCallbacks<Cursor>, OnClickListener, a, c, mu, ak, ap, aq, e, k, t, z, m {
    public static final Uri a;
    public static final Uri b;
    public static final Uri c;
    public static final Uri d;
    public static final Uri e;
    public static final Uri f;
    public static final Uri g;
    public static final Uri h;
    public static final Uri i;
    public static final Uri j;
    public static final Uri k;
    public static final Uri l;
    private mr K;
    private v L;
    private ProfileDetailsViewManager M;
    private HeaderImageView N;
    private UserImageView O;
    private com.twitter.android.profiles.a P;
    private TweetStatView Q;
    private TweetStatView R;
    private String S;
    private ImageView T;
    private ImageView U;
    private float V;
    private String W;
    private LinearLayout X;
    private int Y;
    private boolean Z;
    private View aA;
    private View aB;
    private d aC;
    private boolean aD;
    private boolean aE;
    private String aF;
    private boolean aG;
    private f aH;
    private ao aI;
    private s aJ;
    private final boolean aK;
    private boolean aL;
    private TextView aM;
    private bca aN;
    private bca aO;
    private BalloonSetAnimationView aP;
    private boolean aQ;
    private com.twitter.model.ads.e aR;
    private boolean aS;
    private ViewGroup aT;
    private TypefacesTextView aU;
    private com.twitter.model.businessprofiles.m aV;
    private FrameLayout aW;
    private int aa;
    private String ab;
    private boolean ac;
    private boolean ad;
    private FriendshipCache ae;
    private cni af;
    private boolean ag;
    private SharedPreferences ah;
    private TwitterUser ai;
    private Uri aj;
    private boolean ak;
    private nw al;
    private TwitterScribeAssociation am;
    private aj an;
    private qk ao;
    private ListView ap;
    private LinearLayout aq;
    private int ar;
    private View as;
    private ViewGroup at;
    private com.twitter.library.service.z au;
    private mq av;
    private y aw;
    private boolean ax;
    private boolean ay;
    private DisplayState az;

    /* compiled from: Twttr */
    public enum DisplayState {
        NO_USER,
        NORMAL,
        BUSINESS_PROFILE,
        BLOCKED_PROFILE,
        BLOCKER_INTERSTITIAL,
        PROTECTED_NOT_FOLLOWING
    }

    public ProfileActivity() {
        this.az = DisplayState.NO_USER;
        this.aD = true;
        this.aE = false;
        this.aK = true;
        this.aL = false;
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    static {
        a = Uri.parse("twitter://profile/featured");
        b = Uri.parse("twitter://profile/tweets");
        c = Uri.parse("twitter://profile/media");
        d = Uri.parse("twitter://profile/favorites");
        e = Uri.parse("twitter://profile/protected_account");
        f = Uri.parse("twitter://profile/blocked_account");
        g = Uri.parse("twitter://profile/blocker_interstitial");
        h = Uri.parse("twitter://profile/followers");
        i = Uri.parse("twitter://profile/following");
        j = Uri.parse("twitter://profile/follow");
        k = Uri.parse("twitter://profile/device_follow");
        l = Uri.parse("twitter://profile/vine/enable_display");
    }

    public static void a(Context context, long j, String str, cni cni, TwitterScribeAssociation twitterScribeAssociation, aj ajVar) {
        context.startActivity(b(context, j, str, cni, twitterScribeAssociation, ajVar));
    }

    public static Intent b(Context context, long j, String str, cni cni, TwitterScribeAssociation twitterScribeAssociation, aj ajVar) {
        return a(context, j, str, cni, twitterScribeAssociation, -1, PromotedEvent.PROFILE_IMAGE_CLICK, ajVar);
    }

    public static Intent a(Context context, long j, String str, cni cni, TwitterScribeAssociation twitterScribeAssociation, int i, PromotedEvent promotedEvent, aj ajVar) {
        Intent putExtra = new Intent(context, ProfileActivity.class).putExtra("user_id", j).putExtra("association", twitterScribeAssociation).putExtra("scribe_content", com.twitter.util.serialization.m.a((Object) ajVar, aj.a)).putExtra("screen_name", str);
        if (i != -1) {
            putExtra.putExtra("friendship", i);
        }
        if (cni != null) {
            if (promotedEvent != null) {
                com.twitter.android.client.c.a(context).a(promotedEvent, cni);
            }
            putExtra.putExtra("pc", cni.a(cni));
        }
        return putExtra;
    }

    public void a(Bundle bundle, com.twitter.library.client.d dVar) {
        super.a(bundle, dVar);
        ah();
        if ((getResources().getConfiguration().orientation == 2 ? 1 : 0) != 0 && io.a()) {
            LoggedOutBar loggedOutBar = (LoggedOutBar) findViewById(2131953097);
            loggedOutBar.setVisibility(0);
            loggedOutBar.setDefaultOnClickListener(this);
            a(loggedOutBar);
        }
    }

    public void b(Bundle bundle, com.twitter.app.common.base.t tVar) {
        Object obj;
        Bundle extras;
        AppConfig m;
        SearchSuggestionController N;
        LinearLayout linearLayout;
        Drawable drawable;
        Session ab = ab();
        this.aF = ab.e();
        this.aC = d.a(ab.g(), L(), true);
        this.aC.i();
        Resources resources = getResources();
        super.b(bundle, tVar);
        this.az = DisplayState.NO_USER;
        c(3.0f);
        this.au = new mp();
        this.J.a(this.au);
        this.av = new mq(this);
        if (this.C && !aa.a(true)) {
            ProfileEmptyAvatarOverlay.b(this);
        }
        Intent intent = getIntent();
        this.am = (TwitterScribeAssociation) intent.getParcelableExtra("association");
        this.an = (aj) ab.a(intent, "scribe_content", aj.a);
        this.ah = PreferenceManager.getDefaultSharedPreferences(this);
        Object obj2 = (com.twitter.util.aj.b(this.B) || this.A != 0) ? 1 : null;
        if (obj2 == null) {
            Uri data = intent.getData();
            if (data != null) {
                if ("com.twitter.android.action.USER_SHOW".equals(intent.getAction()) || "com.twitter.android.action.USER_SHOW_TYPEAHEAD".equals(intent.getAction())) {
                    this.B = data.getLastPathSegment();
                    obj = 1;
                    extras = intent.getExtras();
                    if (extras != null) {
                        this.af = cni.a(extras.getByteArray("pc"));
                    }
                    if (bundle != null) {
                        if (bundle.containsKey("state_friendship_cache")) {
                            this.ae = (FriendshipCache) bundle.getSerializable("state_friendship_cache");
                        } else {
                            this.ae = new FriendshipCache(6);
                        }
                        this.aa = bundle.getInt("state_friendship", 0);
                        this.ac = bundle.getBoolean("state_fr", false);
                        this.ai = (TwitterUser) bundle.getParcelable("state_user");
                        this.ar = bundle.getInt("state_fetch_flags", 0);
                        this.ay = bundle.getBoolean("should_hide_blocker_interstitial", false);
                        this.ad = bundle.getBoolean("show_dev_follow_rec_prompt", false);
                        this.aQ = bundle.getBoolean("show_balloon_animation");
                    } else {
                        io.b(this, "profile");
                        this.ae = new FriendshipCache(6);
                        this.aa = 0;
                        this.ac = false;
                        this.ax = true;
                        if (intent.hasExtra("start_page")) {
                            this.aj = Uri.parse(intent.getStringExtra("start_page"));
                        }
                        this.aQ = true;
                    }
                    this.aI = new ao(this, this.ai, this.C, this.ae);
                    this.aI.a((ap) this);
                    if (obj == null) {
                        Toast.makeText(this, 2131364102, 1).show();
                        m = AppConfig.m();
                        if (m.a() || m.b() || m.o()) {
                            bbn.a(new bbl().a("intent_extras", intent.getExtras()).a("intent_data", intent.getData()).a(new IllegalStateException("Insufficient arguments to launch ProfileActivity.")));
                        }
                        finish();
                        return;
                    }
                    N = N();
                    if (this.A != ab.g()) {
                        N.a("profile");
                    } else {
                        N.a("me");
                    }
                    this.ab = intent.getStringExtra("reason");
                    linearLayout = (LinearLayout) LayoutInflater.from(this).inflate(2130969226, null);
                    linearLayout.setOnClickListener(this);
                    this.X = linearLayout;
                    this.M = new ProfileDetailsViewManager(linearLayout);
                    this.T = (ImageView) linearLayout.findViewById(tv.periscope.android.library.k.icon);
                    this.U = (ImageView) linearLayout.findViewById(2131953115);
                    this.N = (HeaderImageView) linearLayout.findViewById(2131953131);
                    this.N.a(this, (Set) a_("bitmaps"), u());
                    this.O = c(resources);
                    this.aW = a((Context) this, this.O);
                    this.P = new com.twitter.android.profiles.a(this.O, this.N, this.r);
                    this.as = linearLayout.findViewById(2131953128);
                    this.at = (ViewGroup) linearLayout.findViewById(2131953127);
                    this.aT = (ViewGroup) linearLayout.findViewById(2131953124);
                    this.aU = (TypefacesTextView) linearLayout.findViewById(2131953123);
                    drawable = (Drawable) CollectionUtils.b(this.aU.getCompoundDrawables());
                    if (drawable != null) {
                        drawable.setColorFilter(ContextCompat.getColor(this, 2131886400), Mode.SRC_ATOP);
                    }
                    this.aw = new y(this, this, (LinearLayout) linearLayout.findViewById(2131952436), ab.f(), this.C);
                    this.R = (TweetStatView) linearLayout.findViewById(2131952815);
                    this.Q = (TweetStatView) linearLayout.findViewById(2131952816);
                    this.aA = linearLayout.findViewById(2131953121);
                    this.aB = linearLayout.findViewById(2131952696);
                    this.aP = (BalloonSetAnimationView) findViewById(2131953098);
                    setHeaderView(linearLayout);
                    this.V = ((TextView) linearLayout.findViewById(bcx.name)).getTextSize() + (resources.getDimension(2131690372) + ((float) this.r));
                    this.aH = new g(this, aa(), this.aI, this.am, this.o.findViewById(2131953119));
                    this.aH.a((ak) this);
                    this.aH.a(bundle);
                    aA();
                    if (this.ai != null) {
                        a(this.ai);
                    }
                    if (!(this.A == 0 && this.B == null)) {
                        A();
                    }
                    this.ai = null;
                    this.Y = resources.getColor(2131886425);
                    AccountManager.get(this).addOnAccountsUpdatedListener(this, null, true);
                    this.aE = true;
                    this.aJ = new u(this, this.aI, ab, this, new no(this));
                    this.aJ.a(this);
                } else if (!"twitter".equals(data.getScheme())) {
                    new mo(this, data).execute(new Void[0]);
                    int i = 1;
                    extras = intent.getExtras();
                    if (extras != null) {
                        this.af = cni.a(extras.getByteArray("pc"));
                    }
                    if (bundle != null) {
                        io.b(this, "profile");
                        this.ae = new FriendshipCache(6);
                        this.aa = 0;
                        this.ac = false;
                        this.ax = true;
                        if (intent.hasExtra("start_page")) {
                            this.aj = Uri.parse(intent.getStringExtra("start_page"));
                        }
                        this.aQ = true;
                    } else {
                        if (bundle.containsKey("state_friendship_cache")) {
                            this.ae = new FriendshipCache(6);
                        } else {
                            this.ae = (FriendshipCache) bundle.getSerializable("state_friendship_cache");
                        }
                        this.aa = bundle.getInt("state_friendship", 0);
                        this.ac = bundle.getBoolean("state_fr", false);
                        this.ai = (TwitterUser) bundle.getParcelable("state_user");
                        this.ar = bundle.getInt("state_fetch_flags", 0);
                        this.ay = bundle.getBoolean("should_hide_blocker_interstitial", false);
                        this.ad = bundle.getBoolean("show_dev_follow_rec_prompt", false);
                        this.aQ = bundle.getBoolean("show_balloon_animation");
                    }
                    this.aI = new ao(this, this.ai, this.C, this.ae);
                    this.aI.a((ap) this);
                    if (obj == null) {
                        N = N();
                        if (this.A != ab.g()) {
                            N.a("me");
                        } else {
                            N.a("profile");
                        }
                        this.ab = intent.getStringExtra("reason");
                        linearLayout = (LinearLayout) LayoutInflater.from(this).inflate(2130969226, null);
                        linearLayout.setOnClickListener(this);
                        this.X = linearLayout;
                        this.M = new ProfileDetailsViewManager(linearLayout);
                        this.T = (ImageView) linearLayout.findViewById(tv.periscope.android.library.k.icon);
                        this.U = (ImageView) linearLayout.findViewById(2131953115);
                        this.N = (HeaderImageView) linearLayout.findViewById(2131953131);
                        this.N.a(this, (Set) a_("bitmaps"), u());
                        this.O = c(resources);
                        this.aW = a((Context) this, this.O);
                        this.P = new com.twitter.android.profiles.a(this.O, this.N, this.r);
                        this.as = linearLayout.findViewById(2131953128);
                        this.at = (ViewGroup) linearLayout.findViewById(2131953127);
                        this.aT = (ViewGroup) linearLayout.findViewById(2131953124);
                        this.aU = (TypefacesTextView) linearLayout.findViewById(2131953123);
                        drawable = (Drawable) CollectionUtils.b(this.aU.getCompoundDrawables());
                        if (drawable != null) {
                            drawable.setColorFilter(ContextCompat.getColor(this, 2131886400), Mode.SRC_ATOP);
                        }
                        this.aw = new y(this, this, (LinearLayout) linearLayout.findViewById(2131952436), ab.f(), this.C);
                        this.R = (TweetStatView) linearLayout.findViewById(2131952815);
                        this.Q = (TweetStatView) linearLayout.findViewById(2131952816);
                        this.aA = linearLayout.findViewById(2131953121);
                        this.aB = linearLayout.findViewById(2131952696);
                        this.aP = (BalloonSetAnimationView) findViewById(2131953098);
                        setHeaderView(linearLayout);
                        this.V = ((TextView) linearLayout.findViewById(bcx.name)).getTextSize() + (resources.getDimension(2131690372) + ((float) this.r));
                        this.aH = new g(this, aa(), this.aI, this.am, this.o.findViewById(2131953119));
                        this.aH.a((ak) this);
                        this.aH.a(bundle);
                        aA();
                        if (this.ai != null) {
                            a(this.ai);
                        }
                        A();
                        this.ai = null;
                        this.Y = resources.getColor(2131886425);
                        AccountManager.get(this).addOnAccountsUpdatedListener(this, null, true);
                        this.aE = true;
                        this.aJ = new u(this, this.aI, ab, this, new no(this));
                        this.aJ.a(this);
                    }
                    Toast.makeText(this, 2131364102, 1).show();
                    m = AppConfig.m();
                    bbn.a(new bbl().a("intent_extras", intent.getExtras()).a("intent_data", intent.getData()).a(new IllegalStateException("Insufficient arguments to launch ProfileActivity.")));
                    finish();
                    return;
                }
            }
        }
        obj = obj2;
        extras = intent.getExtras();
        if (extras != null) {
            this.af = cni.a(extras.getByteArray("pc"));
        }
        if (bundle != null) {
            if (bundle.containsKey("state_friendship_cache")) {
                this.ae = (FriendshipCache) bundle.getSerializable("state_friendship_cache");
            } else {
                this.ae = new FriendshipCache(6);
            }
            this.aa = bundle.getInt("state_friendship", 0);
            this.ac = bundle.getBoolean("state_fr", false);
            this.ai = (TwitterUser) bundle.getParcelable("state_user");
            this.ar = bundle.getInt("state_fetch_flags", 0);
            this.ay = bundle.getBoolean("should_hide_blocker_interstitial", false);
            this.ad = bundle.getBoolean("show_dev_follow_rec_prompt", false);
            this.aQ = bundle.getBoolean("show_balloon_animation");
        } else {
            io.b(this, "profile");
            this.ae = new FriendshipCache(6);
            this.aa = 0;
            this.ac = false;
            this.ax = true;
            if (intent.hasExtra("start_page")) {
                this.aj = Uri.parse(intent.getStringExtra("start_page"));
            }
            this.aQ = true;
        }
        this.aI = new ao(this, this.ai, this.C, this.ae);
        this.aI.a((ap) this);
        if (obj == null) {
            Toast.makeText(this, 2131364102, 1).show();
            m = AppConfig.m();
            bbn.a(new bbl().a("intent_extras", intent.getExtras()).a("intent_data", intent.getData()).a(new IllegalStateException("Insufficient arguments to launch ProfileActivity.")));
            finish();
            return;
        }
        N = N();
        if (this.A != ab.g()) {
            N.a("profile");
        } else {
            N.a("me");
        }
        this.ab = intent.getStringExtra("reason");
        linearLayout = (LinearLayout) LayoutInflater.from(this).inflate(2130969226, null);
        linearLayout.setOnClickListener(this);
        this.X = linearLayout;
        this.M = new ProfileDetailsViewManager(linearLayout);
        this.T = (ImageView) linearLayout.findViewById(tv.periscope.android.library.k.icon);
        this.U = (ImageView) linearLayout.findViewById(2131953115);
        this.N = (HeaderImageView) linearLayout.findViewById(2131953131);
        this.N.a(this, (Set) a_("bitmaps"), u());
        this.O = c(resources);
        this.aW = a((Context) this, this.O);
        this.P = new com.twitter.android.profiles.a(this.O, this.N, this.r);
        this.as = linearLayout.findViewById(2131953128);
        this.at = (ViewGroup) linearLayout.findViewById(2131953127);
        this.aT = (ViewGroup) linearLayout.findViewById(2131953124);
        this.aU = (TypefacesTextView) linearLayout.findViewById(2131953123);
        drawable = (Drawable) CollectionUtils.b(this.aU.getCompoundDrawables());
        if (drawable != null) {
            drawable.setColorFilter(ContextCompat.getColor(this, 2131886400), Mode.SRC_ATOP);
        }
        this.aw = new y(this, this, (LinearLayout) linearLayout.findViewById(2131952436), ab.f(), this.C);
        this.R = (TweetStatView) linearLayout.findViewById(2131952815);
        this.Q = (TweetStatView) linearLayout.findViewById(2131952816);
        this.aA = linearLayout.findViewById(2131953121);
        this.aB = linearLayout.findViewById(2131952696);
        this.aP = (BalloonSetAnimationView) findViewById(2131953098);
        setHeaderView(linearLayout);
        this.V = ((TextView) linearLayout.findViewById(bcx.name)).getTextSize() + (resources.getDimension(2131690372) + ((float) this.r));
        this.aH = new g(this, aa(), this.aI, this.am, this.o.findViewById(2131953119));
        this.aH.a((ak) this);
        this.aH.a(bundle);
        aA();
        if (this.ai != null) {
            a(this.ai);
        }
        A();
        this.ai = null;
        this.Y = resources.getColor(2131886425);
        AccountManager.get(this).addOnAccountsUpdatedListener(this, null, true);
        this.aE = true;
        this.aJ = new u(this, this.aI, ab, this, new no(this));
        this.aJ.a(this);
    }

    private void a(LoggedOutBar loggedOutBar) {
        this.G.a(new mg(this, loggedOutBar));
    }

    protected void p_() {
        super.p_();
        a("bitmaps", (Object) this.N.getSavedBitmaps());
    }

    private void c(boolean z) {
        DisplayState displayState;
        if (this.D == null) {
            displayState = DisplayState.NO_USER;
        } else if (as.a(this.C, this.aa)) {
            displayState = DisplayState.BLOCKED_PROFILE;
        } else if (as.a(this.C, this.D, this.aa)) {
            displayState = DisplayState.PROTECTED_NOT_FOLLOWING;
        } else if (as.b(this.C, this.D, this.aa) && !this.ay) {
            displayState = DisplayState.BLOCKER_INTERSTITIAL;
        } else if (brz.b(this.D, this.aV)) {
            displayState = DisplayState.BUSINESS_PROFILE;
        } else {
            displayState = DisplayState.NORMAL;
        }
        if (z || this.az != displayState) {
            a(displayState);
        }
    }

    private void a(DisplayState displayState) {
        this.az = displayState;
        if (!(this.az == DisplayState.NO_USER || this.az == DisplayState.NORMAL)) {
            this.aC.k();
        }
        Bundle bundle = new Bundle();
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            bundle.putAll(extras);
        }
        v a = new ah().a((Context) this).a(bundle).a(this.D).a(this.C).a(this.aV).a(this.aa).a(P()).a(displayState).a();
        if (a != null) {
            this.L = a;
        }
        C();
        ag();
        E();
    }

    private void C() {
        this.m = N_();
        this.K.a(this.m);
        if (this.n.getAdapter() instanceof ms) {
            ((ms) this.n.getAdapter()).a(this.m);
        }
    }

    private void E() {
        if (this.aj != null) {
            boolean a = io.a();
            if (h.equals(this.aj)) {
                if (a) {
                    io.b(this, 6, this.S);
                } else {
                    startActivity(com.twitter.android.util.u.a(this, ab().g(), this.D, null));
                }
            } else if (i.equals(this.aj)) {
                if (a) {
                    io.b(this, 5, this.S);
                } else {
                    startActivity(ao());
                }
            } else if (j.equals(this.aj)) {
                if (a) {
                    io.b(this, 4, this.S);
                } else if (!(this.C || p.a(this.aa) || p.e(this.aa) || p.d(this.aa))) {
                    q(14);
                }
            } else if (k.equals(this.aj)) {
                if (!a) {
                    if (as.a(this.aI, true, as.a((Context) this, ab().e()))) {
                        q(13);
                    }
                }
            } else if (!l.equals(this.aj)) {
                int b = b(this.aj);
                if (b != -1) {
                    a(b);
                }
            } else if (!a) {
                c("me:::vine:add");
                bv.a((Context) this, ab(), new av(true));
                Toast.makeText(this, 2131362663, 0).show();
            }
            this.aj = null;
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            j(false);
        }
    }

    public void e() {
        super.e();
        this.av.post(new mh(this));
    }

    private UserImageView c(Resources resources) {
        UserImageView userImageView = new UserImageView(this);
        userImageView.setId(2131952353);
        as.a(resources, userImageView);
        return userImageView;
    }

    private static FrameLayout a(Context context, UserImageView userImageView) {
        FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(2130969215, null);
        Drawable gradientDrawable = new GradientDrawable();
        float[] cornerRadii = ((RichImageView) userImageView.getImageView()).getCornerRadii();
        gradientDrawable.setColor(context.getResources().getColor(2131886425));
        float f = (cornerRadii == null || cornerRadii.length <= 0) ? 0.0f : cornerRadii[0];
        gradientDrawable.setCornerRadius(f);
        frameLayout.setBackground(gradientDrawable);
        frameLayout.setVisibility(8);
        userImageView.addView(frameLayout);
        return frameLayout;
    }

    private void d(TwitterUser twitterUser) {
        if (twitterUser.j != 0) {
            GradientDrawable gradientDrawable = (GradientDrawable) this.aW.getBackground();
            gradientDrawable.setColor(twitterUser.j);
            this.aW.setBackground(gradientDrawable);
        }
        this.aW.setVisibility(0);
    }

    public FriendshipCache f() {
        return this.ae;
    }

    public ao h() {
        return this.aI;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (adapterView.getId() == 2131953126) {
            startActivity((Intent) adapterView.getItemAtPosition(i));
        } else {
            super.onItemClick(adapterView, view, i, j);
        }
    }

    protected void onRestart() {
        super.onRestart();
        if (this.N != null) {
            this.N.aG_();
        }
    }

    protected void onStop() {
        if (this.N != null) {
            this.N.f();
        }
        super.onStop();
    }

    protected void onDestroy() {
        if (this.al != null) {
            this.al.cancel(true);
            this.al = null;
        }
        this.J.b(this.au);
        if (this.aE) {
            AccountManager.get(this).removeOnAccountsUpdatedListener(this);
        }
        if (this.aH != null) {
            this.aH.p();
        }
        super.onDestroy();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("state_fetch_flags", this.ar);
        bundle.putInt("state_friendship", this.aa);
        if (this.aH != null) {
            this.aH.b(bundle);
            bundle.putBoolean("state_fr", this.aH.k());
        }
        if (!this.ae.a()) {
            bundle.putSerializable("state_friendship_cache", this.ae);
        }
        if (this.D != null) {
            this.D.S = this.aa;
            bundle.putParcelable("state_user", this.D);
        } else if (this.ai != null) {
            bundle.putParcelable("state_user", this.ai);
        }
        bundle.putBoolean("should_hide_blocker_interstitial", this.ay);
        bundle.putBoolean("show_dev_follow_rec_prompt", this.ad);
        bundle.putBoolean("show_balloon_animation", this.aP.c());
    }

    protected void onResume() {
        super.onResume();
        if (this.aG) {
            a(this.A, this.B);
        }
        bbn.a().a("profile_user", String.format("id: %d, name: %s", new Object[]{Long.valueOf(this.A), this.B}));
    }

    protected void onPause() {
        if (this.aH != null) {
            this.aH.q();
        }
        bbn.a().a("profile_user", null);
        super.onPause();
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017186);
        return true;
    }

    public void a(ao aoVar) {
        this.D = aoVar.a();
        this.C = aoVar.b();
        this.aa = aoVar.d();
        this.ae = aoVar.c();
        ak();
    }

    public void a(int i, int i2) {
        this.O.setTranslationY((float) i);
        if (this.N.getHeight() == 0) {
            this.av.sendMessage(this.av.obtainMessage(2, i, i2));
        } else {
            this.P.a(-i);
        }
        this.aP.a();
    }

    protected int i() {
        return j();
    }

    protected int j() {
        return (int) this.V;
    }

    private at l(int i) {
        if (i < 0 || i >= this.m.size()) {
            return null;
        }
        return (at) this.m.get(i);
    }

    private boolean a(int i, Uri uri) {
        at l = l(i);
        return l != null && l.a.equals(uri);
    }

    private int b(Uri uri) {
        for (int i = 0; i < this.m.size(); i++) {
            if (((at) this.m.get(i)).a.equals(uri)) {
                return i;
            }
        }
        return -1;
    }

    private String F() {
        if (this.L != null) {
            return this.L.a(l(this.K.a()), this.D, getResources());
        }
        return BuildConfig.VERSION_NAME;
    }

    public void a(boolean z) {
        super.a(z);
        if (z) {
            B();
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        long j = this.A;
        cni cni = this.af;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    as();
                } else if (i2 == -3) {
                    aw();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 == -1) {
                    au();
                } else if (i2 == -2) {
                    c(b(":user:block_dialog:cancel"));
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (i2 == -1) {
                    b(new bmz(this, ab(), j, cni, 3), 4);
                    c(b(":user:unblock_dialog:unblock"));
                    n(4);
                } else if (i2 == -2) {
                    c(b(":user:unblock_dialog:cancel"));
                }
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (i2 == -1) {
                    x bmz = new bmz(this, ab(), this.A, this.af, 2);
                    bmz.j = "spam";
                    bmz.g = true;
                    b(bmz, 6);
                    m(4);
                    c(b(":::report_as_spam"));
                }
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (i2 == -2) {
                    as();
                } else if (i2 == -3) {
                    aw();
                }
            case mx.TwitterEditText_messageSize /*9*/:
                if (i2 == -1) {
                    aw();
                }
            case mx.TwitterEditText_messageStyle /*10*/:
                if (i2 == -1) {
                    ap();
                    return;
                }
                a(b(":user:mute_dialog:cancel"));
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                if (i2 == -1) {
                    a(b(":user:muted_button:unmute_user"));
                    this.aJ.b();
                    return;
                }
                a(b(":user:muted_button:cancel"));
            case mx.TwitterEditText_characterCounterColor /*12*/:
                if (i2 == -1) {
                    aq();
                }
            case mx.TwitterEditText_characterCounterMode /*13*/:
                if (i2 == -1) {
                    c(b("::device_follow_prompt:accept"));
                    ax();
                } else if (i2 == -2) {
                    c(b("::device_follow_prompt:dismiss"));
                }
            case mx.TwitterButton_labelMargin /*14*/:
                if (i2 == -1) {
                    ar();
                }
            default:
        }
    }

    public boolean a(ac acVar) {
        boolean z = false;
        int a = acVar.a();
        long g = ab().g();
        switch (a) {
            case tv.periscope.android.library.k.home /*2131951668*/:
                setResult(-1, new Intent().putExtra("user_id", this.A).putExtra("friendship", this.aa));
                return super.a(acVar);
            case 2131953414:
                a(b(":user:block_dialog:impression"));
                bf.a((Context) this, this.B, 2, getSupportFragmentManager());
                return true;
            case 2131953464:
                a(b(":user:mute_dialog:open"));
                if (bf.a(this, this.B, this.aa, 10, getSupportFragmentManager(), null)) {
                    return true;
                }
                ap();
                return true;
            case 2131953473:
                if (this.D != null) {
                    com.twitter.library.util.aq.a((Context) this, this.D.c(), this.D.k, this.D.g);
                    a(as.a(this.C), null, "user", null, "share");
                    return true;
                }
                break;
            case 2131953474:
            case 2131953475:
                boolean f = p.f(this.aa);
                if (f) {
                    n(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
                } else {
                    m(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
                }
                bpj bpj = new bpj((Context) this, ab(), this.D);
                if (!f) {
                    z = true;
                }
                b(bpj.a(4, z), 14);
                return true;
            case 2131953476:
                as.a((Context) this);
                return true;
            case 2131953477:
                as.a((AbsFragmentActivity) this, this.A, g);
                c(b(":::add_to_list"));
                return true;
            case 2131953478:
                as.a((Context) this, this.A);
                return true;
            case 2131953479:
                a(b(":user:unmute_dialog:open"));
                a(b(":user:unmute_dialog:unmute_user"));
                this.aJ.b();
                return true;
            case 2131953480:
                a(b(":user:unblock_dialog:impression"));
                bf.b(this, this.B, 3, getSupportFragmentManager());
                return true;
            case 2131953481:
                as.a((AbsFragmentActivity) this, this.D, this.aa);
                return true;
            case 2131953482:
                startActivity(AdsCompanionWebViewActivity.a(this));
                break;
            default:
                return super.a(acVar);
        }
        return super.a(acVar);
    }

    public void onButtonBarItemClick(View view) {
        switch (view.getId()) {
            case 2131953099:
                a(b(":user:open_ads_companion:click"));
                startActivity(AdsCompanionWebViewActivity.a((Context) this, this.D.c));
            case 2131953100:
                ax();
            case 2131953101:
                p(9);
            case 2131953102:
                a(b("::message:click"));
                as.a((Context) this, this.D);
            case 2131953103:
                a(this.A, this.af);
                m(AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
                if (!this.ah.getBoolean("lifeline_follow_dialog_shown", false)) {
                    p(7);
                    this.ah.edit().putBoolean("lifeline_follow_dialog_shown", true).apply();
                }
                this.aw.b();
            case 2131953104:
                b(new bpj((Context) this, ab(), this.D).a(2, false), 13);
                n(AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
                if (this.ah.getBoolean("lifeline_unfollow_dialog_shown", false)) {
                    Toast.makeText(this, getString(2131364115, new Object[]{this.D.c()}), 1).show();
                } else {
                    p(8);
                    this.ah.edit().putBoolean("lifeline_unfollow_dialog_shown", true).apply();
                }
                this.aw.a();
            case 2131953105:
                if (io.a()) {
                    io.a((FragmentActivity) this, 4, this.S);
                } else {
                    ar();
                }
            case 2131953106:
                if (p.h(this.aa)) {
                    p(6);
                } else {
                    p(1);
                }
            case 2131953107:
                p(12);
            case 2131953108:
                a(b(":user:blocked_button:click"));
                a(b(":user:unblock_dialog:impression"));
                bf.b(this, this.B, 3, getSupportFragmentManager());
            case 2131953109:
                startActivityForResult(new Intent(this, AccountsDialogActivity.class).putExtra("AccountsDialogActivity_account_name", ab().e()), 3);
            case 2131953110:
                am();
            default:
        }
    }

    protected void a(TwitterUser twitterUser) {
        String str;
        TwitterUser a = a(twitterUser, false);
        super.a(a);
        if (com.twitter.util.aj.a(this.D.c())) {
            str = this.D.k;
        } else {
            str = this.D.c();
        }
        this.S = str;
        this.aw.a(a);
        this.aI.a(a, this.C);
        o(a.S);
        an();
        af.a(this, this.T, this.U, a.n, a.o, a.m);
        this.N.setOnClickListener(this);
        d(this.ai == null);
        this.O.setOnClickListener(this);
        X().setOnClickListener(this);
        ad();
        G();
        af();
        if (this.ac && this.aH != null) {
            this.aH.n();
            this.ac = false;
        }
        j(false);
    }

    public void a(com.twitter.model.ads.e eVar) {
        this.aR = eVar;
        int dimension = (int) getResources().getDimension(2131690374);
        this.aw.d().setVisibility(4);
        this.aS = this.aw.d().getLeft() >= dimension + this.O.getRight();
        this.aw.a(this.aR, this.aS);
        a(X());
    }

    public void a(com.twitter.model.businessprofiles.m mVar) {
        this.aV = mVar;
        if (this.aV != null) {
            c(true);
        }
    }

    private void G() {
        LoaderManager supportLoaderManager = getSupportLoaderManager();
        if (!this.E.a("ads_account_permissions") && com.twitter.android.ads.c.b(ab().f())) {
            this.E.a(new b(this, this, supportLoaderManager, 7));
        }
        if (!this.E.a("business_profile") && brz.a(this.D, this.aV)) {
            this.E.a(new com.twitter.android.businessprofiles.d(this, this, supportLoaderManager, 8, this.D, brz.a((Context) this)));
        }
    }

    private void ad() {
        if (this.aD) {
            c(b(":::impression"));
            this.aD = false;
        }
    }

    private void ae() {
        a(b(":user:muted_button:click"));
        bf.a((Context) this, this.B, 11, getSupportFragmentManager(), null);
    }

    private void d(boolean z) {
        if (this.D != null && !this.Z) {
            if (this.aI.f() != null) {
                this.N.setDefaultDrawable(new ColorDrawable(b(getResources())));
            } else {
                e(z);
            }
            this.Z = true;
        }
    }

    private void e(boolean z) {
        this.s = b(getResources());
        if (!z || this.s == this.Y) {
            this.z.a();
            this.N.setDefaultDrawable(new ColorDrawable(this.s));
            return;
        }
        this.z.b();
        Drawable transitionDrawable = new TransitionDrawable(new Drawable[]{new ColorDrawable(this.Y), new ColorDrawable(this.s)});
        this.N.setDefaultDrawable(transitionDrawable);
        transitionDrawable.startTransition(500);
        this.av.postDelayed(new mi(this), 500);
    }

    private void af() {
        this.N.setProfileUser(this.aI);
        a(this.Q, getString(2131363385), this.D.P);
        a(this.R, getString(2131363386), this.D.v);
        if (this.C && this.D.g()) {
            d(this.D);
        } else {
            this.aW.setVisibility(8);
            this.O.a(this.D, false);
        }
        ai();
    }

    private void ag() {
        int i;
        int i2;
        boolean z = this.m.size() > 1;
        HorizontalListView horizontalListView = this.p;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        horizontalListView.setVisibility(i);
        if (z) {
            i = getResources().getDimensionPixelSize(2131690233);
        } else {
            i = 0;
        }
        this.x = i;
        View view = this.as;
        if (z) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        view.setVisibility(i2);
        this.aw.f();
        if (this.az != DisplayState.BUSINESS_PROFILE || this.aV == null) {
            this.aT.setVisibility(8);
            this.aU.setVisibility(8);
            this.at.setVisibility(8);
        } else {
            boolean z2;
            this.M.a(Arrays.asList(new IconItemType[]{IconItemType.LOCATION, IconItemType.URL}));
            an();
            boolean a = new com.twitter.android.businessprofiles.a(this.at, this.as, this.aV, this.D, this).a();
            if (a || !brz.a(this.aV)) {
                z2 = false;
            } else {
                z = new com.twitter.android.businessprofiles.f(this.aT, this, this.aV, this.D, this.aV.h.d, ab().g()).c();
                if (z) {
                    this.aw.e();
                }
                z2 = z;
            }
            if (!z2 && !a && brz.b() && this.D.n) {
                if (as.a(this.aa, ab().g() == this.D.c) && new com.twitter.android.businessprofiles.e(this.aT, this, this.aV, this.D, ab().g()).c()) {
                    this.aw.e();
                }
            }
            if (!z2) {
                new com.twitter.android.businessprofiles.g(this.aV, this, this.aU).a();
            }
        }
        if (this.az == DisplayState.NORMAL || this.az == DisplayState.BUSINESS_PROFILE || this.az == DisplayState.PROTECTED_NOT_FOLLOWING) {
            this.aA.setVisibility(0);
            this.aB.setVisibility(0);
            this.aw.b(this.aa);
        } else {
            this.aA.setVisibility(8);
            this.aB.setVisibility(8);
        }
        if (this.az == DisplayState.NORMAL || this.az == DisplayState.BUSINESS_PROFILE) {
            this.R.setOnClickListener(this);
            this.Q.setOnClickListener(this);
        } else {
            this.R.setOnClickListener(null);
            this.Q.setOnClickListener(null);
        }
        if (this.az == DisplayState.BLOCKER_INTERSTITIAL) {
            if (this.aH != null) {
                this.aH.a();
            }
            b(true);
            a(b("blocker_interstitial:::impression"));
        } else {
            b(false);
        }
        ah();
        this.aL = true;
        if (this.az == DisplayState.BLOCKED_PROFILE) {
            this.aw.c();
            N().a("blocked_profile");
            if (this.ax) {
                a("blocked_profile:profile:::impression");
                this.ax = false;
            }
        }
    }

    private void ah() {
        if (this.az == DisplayState.BLOCKER_INTERSTITIAL) {
            h(false);
        } else {
            h(true);
        }
    }

    public void a(String str, Bitmap bitmap) {
        if (bitmap != null) {
            this.W = str;
            b(bitmap);
            return;
        }
        this.W = null;
        this.z.b();
        this.N.setDefaultDrawable(new ColorDrawable(u()));
    }

    private void b(Bitmap bitmap) {
        try {
            this.N.setContentDescription(getString(2131362814));
            a(bitmap);
            if (!this.ak) {
                if (this.al != null) {
                    this.al.cancel(true);
                }
                this.al = new nw(this, false);
                this.al.execute(new Bitmap[]{bitmap});
            }
        } catch (OutOfMemoryError e) {
            this.z.b();
        }
    }

    public void onAccountsUpdated(Account[] accountArr) {
        if (!com.twitter.util.aj.a(this.aF) && !CollectionUtils.a((Object[]) accountArr)) {
            boolean z = true;
            for (Account account : accountArr) {
                if (account.name.equals(this.aF)) {
                    z = false;
                }
            }
            if (z) {
                this.aG = true;
                this.aF = null;
            }
        }
    }

    public void ag_() {
        a(false, false);
    }

    public void l() {
        this.aM.setVisibility(8);
        a(true, false);
    }

    public void m() {
        this.aM.setVisibility(0);
        a(false, true);
    }

    private void a(boolean z, boolean z2) {
        if (Y().b()) {
            this.aN.b(z);
            this.aO.b(z2);
        }
    }

    private void ai() {
        if (as.a(this.C, this.D)) {
            if (this.ap == null) {
                this.ap = (ListView) this.X.findViewById(2131953126);
                this.ap.setOnItemClickListener(this);
            }
            if (this.ao == null) {
                List b = n.b(new ql(getString(2131362709), new q().a(18).a((Context) this)));
                this.ao = new qk((ql[]) b.toArray(new ql[b.size()]), com.twitter.util.ak.f() ? 2130969332 : 2130969240);
                this.ap.setAdapter(this.ao);
            }
            aj();
            al();
        }
        if (this.aq == null) {
            this.aq = (LinearLayout) this.X.findViewById(2131953117);
        }
    }

    private void aj() {
        if ((this.ar & 32) == 0) {
            b(new bow(this, ab(), 0), 2);
            this.ar |= 32;
        }
    }

    private void ak() {
        String e = ab().e();
        if ((this.ar & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) == 0 && as.a(this.aI, false, as.a((Context) this, e))) {
            x a = new bor(this, ab()).a(this.aI.e());
            this.ar |= AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS;
            b(a, 15);
        }
    }

    private void al() {
        getSupportLoaderManager().restartLoader(5, null, this);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        switch (i) {
            case mx.UserView_actionButtonPaddingRight /*5*/:
                long g = ab().g();
                return new bu(this, ck.a(ContentUris.withAppendedId(dg.s, g), g), new String[]{"user_groups_user_id"}, null, null, null);
            default:
                return null;
        }
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        switch (loader.getId()) {
            case mx.UserView_actionButtonPaddingRight /*5*/:
                if (cursor == null || !cursor.moveToFirst()) {
                    this.ap.setVisibility(8);
                    this.as.setVisibility(0);
                    this.ao.a(0, 0);
                } else if (as.a(this.C, this.D)) {
                    int count = cursor.getCount();
                    if (count > 0) {
                        this.ap.setVisibility(0);
                        this.as.setVisibility(8);
                        this.ao.a(0, count);
                    }
                }
            default:
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        loader.getId();
    }

    void a(String str, int i) {
        if (this.C && (com.twitter.util.aj.a((CharSequence) str) || Uri.parse(str).getPath().startsWith("/sticky/default_profile_images/"))) {
            am();
        } else if (str != null) {
            b(str, i);
        }
    }

    private void am() {
        Intent a;
        if (aa.a(this.C)) {
            bbu.a(new TwitterScribeLog(this.A).b("profile", "edit_profile_flow", null, "header", "launch"));
            a = ProfileCompletionFlowActivity.a((Context) this, "profile");
        } else {
            bbu.a(new TwitterScribeLog(this.A).b("profile", "edit_profile", null, "header", "launch"));
            a = new Intent(this, com.twitter.android.avatars.b.b() ? EditProfileWithAvatarDrawerActivity.class : EditProfileActivity.class);
        }
        startActivityForResult(a, 4);
    }

    private void an() {
        this.M.a(new do(this, (TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).b(as.a(this.C))));
        this.M.a(new mj(this));
        this.M.a(this.aI, this.ab, (Context) this);
    }

    private TwitterUser a(TwitterUser twitterUser, boolean z) {
        av a = bv.a(ab());
        Object obj = (this.C && a != null && a.i) ? 1 : null;
        if (obj == null && (!z || twitterUser.G == null)) {
            return twitterUser;
        }
        cp cpVar = new cp(twitterUser);
        if (obj != null) {
            cpVar.g(a.g).a(a.h).a(a.d);
            if (a.j) {
                cpVar.d(cph.a(a.e)).a(null);
            }
            if (a.k) {
                cpVar.e(a.f).b(null);
            }
            if (a.l != null) {
                cpVar.a(a.l);
            }
        }
        if (z) {
            cpVar.h(null);
        }
        return (TwitterUser) cpVar.q();
    }

    private void m(int i) {
        o(p.a(this.aa, i));
    }

    private void n(int i) {
        o(p.b(this.aa, i));
    }

    private void o(int i) {
        this.aw.a(i);
        this.aa = i;
        a(X());
        f(false);
        c(false);
        this.aI.a(this.aa);
    }

    private void a(ToolBar toolBar) {
        if (Y().b()) {
            ar rVar;
            if (io.a()) {
                rVar = new r();
                if (io.a((Activity) this)) {
                    toolBar.setDisplayShowHomeAsUpEnabled(false);
                }
            } else {
                rVar = new com.twitter.android.profiles.q(ab().f(), this.D, this.aa, this.C, this.aR, this.aS);
            }
            rVar.a(toolBar);
            this.aJ.a(this);
        }
    }

    private void a(TweetStatView tweetStatView, String str, int i) {
        tweetStatView.setValue(com.twitter.util.t.a(getResources(), (long) i));
        tweetStatView.setName(str.toUpperCase());
    }

    private Intent ao() {
        return new q().a(this.A).a(0).d(this.D.d).c(true).a(true).a((Context) this);
    }

    private void b(String str, int i) {
        if (this.D != null && str != null) {
            Uri parse = Uri.parse(str.replace("_normal.", "."));
            Intent putExtra = new Intent(this, ImageActivity.class).setData(parse).putExtra("android.intent.extra.TEXT", this.B).putExtra("image_url", parse.toString());
            if (this.C) {
                putExtra.putExtra("action_label_resid", 2131362585).putExtra("action_return_intent", new Intent().putExtra("place", i));
                startActivityForResult(putExtra, 6);
                return;
            }
            startActivity(putExtra);
        }
    }

    protected String n() {
        if (this.A != ab().g()) {
            return '@' + this.B + ' ';
        }
        return super.n();
    }

    public int b(w wVar) {
        int b = super.b(wVar);
        ToolBar j = wVar.j();
        this.aN = X().a(2131953464);
        this.aO = X().a(2131953479);
        if (!(b == 1 || isFinishing())) {
            a(j);
        }
        return b;
    }

    private void f(boolean z) {
        this.aM.setVisibility(as.a(this.aa));
    }

    private void ap() {
        a(b(":user:mute_dialog:mute_user"));
        this.aJ.a();
    }

    private String b(String str) {
        if (!as.a(this.C, this.aa)) {
            return as.a(this.C) + ":" + str;
        }
        if (str.startsWith(":")) {
            return "blocked_profile:profile" + str;
        }
        return "blocked_profile:" + str;
    }

    private void c(String str) {
        as.a(ab(), str, this.A, this.aI, this.af, as.b(this.D), this.am, null, this.an);
    }

    private void a(String... strArr) {
        as.a(ab().g(), this.aI, strArr);
    }

    private void p(int i) {
        PromptDialogFragment r = r(i);
        if (r != null) {
            r.a(getSupportFragmentManager());
        }
    }

    private void q(int i) {
        PromptDialogFragment r = r(i);
        if (r != null) {
            new Handler(Looper.getMainLooper()).post(new mk(this, r));
        }
    }

    private PromptDialogFragment r(int i) {
        int i2 = 2131362705;
        if (this.D == null) {
            return null;
        }
        int i3;
        int i4;
        ec ecVar;
        Resources resources = getResources();
        int i5 = 2131363158;
        String c = this.D.c();
        ec ecVar2;
        ec ecVar3;
        boolean z;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                ecVar2 = (ec) new ec(1).a(2131364091);
                if (!p.h(this.aa)) {
                    i2 = 2131364205;
                    i3 = 1;
                    ecVar3 = ecVar2;
                    i4 = 2131364093;
                    ecVar = ecVar3;
                    break;
                }
                ecVar2.e(2131364100);
                i2 = 2131364205;
                i3 = 1;
                ecVar3 = ecVar2;
                i4 = 2131364093;
                ecVar = ecVar3;
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                i2 = 2131364205;
                i3 = 1;
                ecVar3 = (ec) new ec(4).a(2131364121);
                i4 = 2131364122;
                ecVar = ecVar3;
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                i2 = 2131363218;
                z = false;
                ecVar3 = (ec) new ec(5).a(2131364128);
                i4 = 2131364127;
                ecVar = ecVar3;
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                i5 = 2131364091;
                i3 = 1;
                ecVar = (ec) ((ec) new ec(6).a(resources.getString(2131364086, new Object[]{c}))).e(2131364100);
                i4 = 2131364085;
                i2 = 2131362041;
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                i2 = 2131363218;
                z = false;
                ecVar3 = (ec) new ec(7).a(resources.getString(2131364112, new Object[]{c}));
                i4 = 2131364111;
                ecVar = ecVar3;
                break;
            case ControlMessage.CONTROL_BAN /*8*/:
                i2 = 2131363218;
                z = false;
                ecVar3 = (ec) new ec(8).a(resources.getString(2131364114, new Object[]{c}));
                i4 = 2131364113;
                ecVar = ecVar3;
                break;
            case mx.TwitterEditText_messageSize /*9*/:
                ecVar2 = new ec(9);
                ecVar2.a(getResources().getString(2131364097));
                i2 = 2131363218;
                i3 = 1;
                ecVar3 = ecVar2;
                i4 = 2131364098;
                i5 = 2131362041;
                ecVar = ecVar3;
                break;
            case mx.TwitterEditText_characterCounterColor /*12*/:
                i3 = 1;
                ecVar = (ec) new ec(12).a(resources.getString(2131362041));
                i4 = 2131364084;
                i2 = 2131364205;
                i5 = 2131363158;
                break;
            case mx.TwitterEditText_characterCounterMode /*13*/:
                this.ad = false;
                ecVar2 = (ec) new ec(13).a(2131364095);
                c(b("::device_follow_prompt:impression"));
                i2 = 2131363218;
                i3 = 1;
                ecVar3 = ecVar2;
                i4 = 2131364094;
                i5 = 2131363167;
                ecVar = ecVar3;
                break;
            case mx.TwitterButton_labelMargin /*14*/:
                i3 = 1;
                ecVar = (ec) new ec(14).a(2131362705);
                i4 = 2131364104;
                i5 = 2131362041;
                break;
            default:
                return null;
        }
        ((ec) ecVar.a(resources.getString(i4, new Object[]{c}))).d(i2);
        if (i3 != 0) {
            ecVar.f(i5);
        }
        return (PromptDialogFragment) ecVar.i();
    }

    private void a(long j, cni cni) {
        b(new boh((Context) this, ab(), j, cni).b(true).a(Integer.valueOf(this.aa)), 9);
    }

    private void aq() {
        b(new bog(this, ab()).a(this.A), 3);
        n(AccessibilityNodeInfoCompat.ACTION_COPY);
    }

    private void ar() {
        boolean b = p.b(this.aa);
        boolean a = p.a(this.aa);
        if (this.D.m) {
            m(AccessibilityNodeInfoCompat.ACTION_COPY);
        } else {
            m(1);
        }
        if (!a && this.ad) {
            q(13);
        }
        b(new boh((Context) this, ab(), this.A, this.af).a(false).a(-1).e(this.D.m), 8);
        c(b("profile::user:follow"));
        if (b) {
            c(b("profile::user:follow_back"));
        }
    }

    private void as() {
        c(b("profile::user:unfollow"));
        at();
    }

    private void at() {
        cni cni = this.af;
        n(1);
        this.ae.c(this.D.c);
        b(new bok(this, ab(), this.A, cni).a(-1), 10);
    }

    private void au() {
        c(b(":user:block_dialog:block"));
        av();
    }

    private void av() {
        b(new bmz(this, ab(), this.A, this.af, 1), 5);
        m(4);
    }

    private void g(boolean z) {
        b(new bpj((Context) this, ab(), this.D).a(1, z), 12);
    }

    private void aw() {
        n(16);
        c(b("profile::user:device_unfollow"));
        g(false);
    }

    private void ax() {
        m(16);
        c(b("profile::user:device_follow"));
        g(true);
    }

    void p() {
        getSupportLoaderManager().initLoader(6, null, new ml(this, this));
    }

    public void a(x xVar, int i) {
        boolean z = false;
        com.twitter.library.service.aa aaVar = (com.twitter.library.service.aa) xVar.l().b();
        Session a = aa().a(xVar);
        switch (i) {
            case WireMessage.WIRE_CONTROL /*2*/:
                if (aaVar.b()) {
                    al();
                }
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (aaVar.b()) {
                    this.ay = false;
                    c(false);
                    return;
                }
                m(4);
            case mx.UserView_actionButtonPaddingRight /*5*/:
                if (!aaVar.b() && ((bmz) xVar).b == this.A) {
                    p();
                }
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (aaVar.b() || ((bmz) xVar).b != this.A) {
                    Toast.makeText(this, 2131364120, 1).show();
                } else if (p.d(this.aa)) {
                    p();
                }
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                com.twitter.internal.network.k g = aaVar.g();
                if (g == null || g.a != 200) {
                    Toast.makeText(this, 2131362914, 1).show();
                } else {
                    Toast.makeText(this, 2131362915, 1).show();
                }
            case ControlMessage.CONTROL_BAN /*8*/:
                if (a != null) {
                    com.twitter.internal.android.service.ab l = ((boh) xVar).l();
                    if (l != null && ((com.twitter.library.service.aa) l.b()).b()) {
                        z = true;
                    }
                    if (!z) {
                        this.aa = p.b(this.aa, 1);
                    } else if (!this.D.m && this.aH != null) {
                        this.aH.n();
                    }
                }
            case mx.TwitterEditText_messageStyle /*10*/:
                if (a == null) {
                    return;
                }
                if (!aaVar.b()) {
                    this.aa = p.a(this.aa, 1);
                    if (!xVar.isCancelled()) {
                        Toast.makeText(this, 2131364092, 1).show();
                    }
                } else if (this.aH != null) {
                    this.aH.a();
                }
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                if (aaVar.b()) {
                    bot bot = (bot) xVar;
                    if (this.D != null && bot.a == this.A) {
                        this.D.S = bot.b;
                        o(this.D.S);
                    }
                }
            case mx.TwitterEditText_characterCounterColor /*12*/:
                com.twitter.library.service.ab N = xVar.N();
                if (N != null) {
                    String str = N.e;
                    boolean d = PushRegistration.d(this, str);
                    boolean h = p.h(this.aa);
                    if (aaVar.b() && (d || !h)) {
                        i(h);
                    } else if (aaVar.d() == 1001 || !d) {
                        boolean z2;
                        com.twitter.android.client.z a2 = com.twitter.android.client.z.a((Context) this);
                        if (d) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        a2.a(str, z2, true);
                        i(h);
                    } else {
                        Toast.makeText(this, 2131362396, 1).show();
                        if (h) {
                            n(16);
                        } else {
                            m(16);
                        }
                    }
                }
            case mx.TwitterButton_labelMargin /*14*/:
                boolean f = p.f(this.aa);
                if (aaVar.b()) {
                    Toast.makeText(this, getString(f ? 2131364126 : 2131364124, new Object[]{this.D.c()}), 0).show();
                    return;
                }
                Toast.makeText(this, 2131362396, 1).show();
                if (f) {
                    n(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
                } else {
                    m(AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
                }
            case mx.TwitterButton_strokeWidth /*15*/:
                if (aaVar.b()) {
                    this.ad = ((bor) xVar).b();
                    return;
                }
                this.ad = false;
                this.ar &= -129;
            default:
                super.a(xVar, i);
        }
    }

    private void i(boolean z) {
        if (!z) {
            return;
        }
        if (this.ah.getBoolean("profile_device_follow_dialog_shown", false)) {
            Toast.makeText(this, getString(2131364096, new Object[]{this.D.c()}), 1).show();
            return;
        }
        p(5);
        this.ah.edit().putBoolean("profile_device_follow_dialog_shown", true).apply();
    }

    private void a(long j, String str) {
        this.ag = true;
        startActivity(a(this, j, str, this.af, null, -1, null, null));
        overridePendingTransition(2131034190, 2131034191);
        finish();
    }

    protected Intent B_() {
        Intent ac = this.ag ? ac() : super.B_();
        if (ac != null) {
            ac.addFlags(536870912);
        }
        return ac;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        boolean z = true;
        super.onActivityResult(i, i2, intent);
        if (i2 != 0) {
            switch (i) {
                case WireMessage.WIRE_CHAT /*1*/:
                    com.twitter.app.lists.d a = com.twitter.app.lists.d.a(intent);
                    b(new bln(getApplicationContext(), ab(), ab().g(), a.b, a.a, 4), 7);
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (-1 == i2 && intent != null) {
                        long longExtra = intent.getLongExtra("user_id", 0);
                        if (longExtra > 0 && intent.hasExtra("friendship")) {
                            int intExtra = intent.getIntExtra("friendship", 0);
                            if (!this.ae.a(longExtra, intExtra)) {
                                this.ae.b(longExtra, intExtra);
                                az();
                            }
                            az();
                        }
                    }
                case WireMessage.WIRE_AUTH /*3*/:
                    if (i2 == 1) {
                        Account account = ((UserAccount) intent.getParcelableExtra("account")).a;
                        if (!account.name.equals(ab().e())) {
                            aa().d(account.name);
                            bp.a();
                            Session ab = ab();
                            a(ab.g(), ab.e());
                        }
                    }
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (-1 == i2 && intent != null) {
                        this.D = a(this.D, intent.getBooleanExtra("remove_header", false));
                        an();
                        af();
                        az();
                        this.ar |= 64;
                    }
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    switch (i2) {
                        case WireMessage.WIRE_CHAT /*1*/:
                            at();
                        case WireMessage.WIRE_CONTROL /*2*/:
                            this.aJ.a();
                        case WireMessage.WIRE_AUTH /*3*/:
                            av();
                        default:
                    }
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    int intExtra2 = intent != null ? intent.getIntExtra("place", -1) : -1;
                    if (intExtra2 != -1) {
                        Intent intent2;
                        if (com.twitter.android.avatars.b.b()) {
                            Intent intent3 = new Intent(this, EditProfileWithAvatarDrawerActivity.class);
                            String str = "extra_show_avatar_picker";
                            if (1 == intExtra2) {
                                z = false;
                            }
                            intent3.putExtra(str, z);
                            intent2 = intent3;
                        } else {
                            intent2 = new Intent(this, EditProfileActivity.class);
                        }
                        String valueOf = String.valueOf(this.A);
                        intent2.setData(dh.b.buildUpon().appendEncodedPath(valueOf).appendQueryParameter("ownerId", valueOf).build());
                        startActivityForResult(intent2, 4);
                    }
                default:
            }
        }
    }

    private void j(boolean z) {
        int[] iArr = null;
        com.twitter.android.profiles.c a = new com.twitter.android.profiles.b().a(this.aI);
        if (a != null) {
            int i = 1;
        } else {
            boolean z2 = false;
        }
        if ((!ay() && i == 0) || !boo.a() || !boo.b() || !hasWindowFocus()) {
            return;
        }
        if (this.aQ || z) {
            if (z) {
                a(b("::birthday:click"));
            }
            int width = X().findViewById(tv.periscope.android.library.k.home).getWidth();
            int width2 = X().findViewById(2131953426).getWidth() + X().findViewById(bcx.overflow).getWidth();
            this.aP.setProfileUser(this.aI);
            this.aP.setUserId(ab().g());
            BalloonSetAnimationView balloonSetAnimationView = this.aP;
            String[] strArr = a != null ? a.b : null;
            if (a != null) {
                iArr = a.c;
            }
            if (balloonSetAnimationView.a(width, width2, strArr, iArr)) {
                String[] strArr2 = new String[1];
                strArr2[0] = b(i != 0 ? "::balloon_override:play" : "::birthday:play");
                a(strArr2);
            }
            this.aQ = false;
        }
    }

    private boolean ay() {
        return (this.aI.a() == null || this.aI.a().t == null || !as.a(this.aI.a().t, new Date())) ? false : true;
    }

    public void onBackPressed() {
        setResult(-1, new Intent().putExtra("user_id", this.A).putExtra("friendship", this.aa));
        super.onBackPressed();
    }

    private void az() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        for (at a : this.m) {
            BaseFragment a2 = a.a(supportFragmentManager);
            if (a2 instanceof TimelineFragment) {
                ((TimelineFragment) a2).ab_();
            }
        }
        if (this.aH != null) {
            this.aH.o();
        }
    }

    public void r() {
        this.M.a(true);
        this.aq.setVisibility(8);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131952353:
                a(this.D.e, 2);
            case 2131952815:
                if (io.a()) {
                    io.a((FragmentActivity) this, 5, this.S);
                } else {
                    startActivity(ao());
                }
            case 2131952816:
                if (io.a()) {
                    io.a((FragmentActivity) this, 6, this.S);
                } else {
                    startActivity(com.twitter.android.util.u.a(this, ab().g(), this.D, null));
                }
            case 2131953068:
                J();
            case 2131953131:
                a(this.W, 1);
            default:
        }
    }

    public void s() {
        this.ay = true;
        c(false);
        a(b("blocker_interstitial:::click"));
    }

    public com.twitter.app.common.base.t a(Bundle bundle, com.twitter.app.common.base.t tVar) {
        tVar.d(2130969214);
        tVar.d(true);
        if (io.a()) {
            tVar.c(false);
            tVar.a(4);
        }
        return tVar;
    }

    protected BaseAdapter a(List<at> list) {
        this.K = new mr(list);
        return this.K;
    }

    protected PagerAdapter a(List<at> list, ViewPager viewPager) {
        return new ms(this, this, list, viewPager, this.p, this.K);
    }

    protected void a(int i) {
        super.a(i);
        this.n.setCurrentItem(i);
        this.K.a(i);
    }

    protected String a() {
        return this.D == null ? this.B : this.D.c();
    }

    protected String c() {
        return F();
    }

    protected void a(Drawable drawable) {
        this.N.setBackgroundDrawable(drawable);
    }

    protected int a(Resources resources) {
        return (int) (((float) resources.getDisplayMetrics().widthPixels) / 3.0f);
    }

    protected int b(Resources resources) {
        return as.a(this.D, this.Y);
    }

    public void setHeaderView(View view) {
        ViewParent parent = X().getParent();
        if (parent instanceof RelativeLayout) {
            RelativeLayout relativeLayout = (RelativeLayout) parent;
            relativeLayout.addView(this.O, relativeLayout.indexOfChild(this.t) + 1);
        }
        super.setHeaderView(view);
    }

    protected void b(int i) {
        super.b(i);
        this.ak = true;
        this.al = null;
    }

    protected List<at> N_() {
        if (this.L != null) {
            return this.L.a();
        }
        return n.g();
    }

    private void aA() {
        this.aM = (TextView) findViewById(2131953125);
        CharSequence spannableStringBuilder = new SpannableStringBuilder(getString(2131363406));
        spannableStringBuilder.append(" ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append(getString(2131364051));
        spannableStringBuilder.setSpan(new mm(this, getResources().getColor(2131886265)), length, spannableStringBuilder.length(), 33);
        com.twitter.ui.view.p.a(this.aM);
        this.aM.setText(spannableStringBuilder);
    }

    public void c(int i) {
        this.aw.c(i);
    }
}
