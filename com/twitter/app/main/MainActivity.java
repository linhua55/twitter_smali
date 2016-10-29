package com.twitter.app.main;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.OnAccountsUpdateListener;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.AnimRes;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.support.v4.app.TaskStackBuilder;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.recyclerview.BuildConfig;
import android.support.v7.widget.SwitchCompat;
import android.view.View;
import com.google.android.gcm.b;
import com.twitter.android.AbsPagesAdapter;
import com.twitter.android.AccountsDialogActivity;
import com.twitter.android.ActivityFragment;
import com.twitter.android.ActivityWithProgress;
import com.twitter.android.DispatchActivity;
import com.twitter.android.HomeTimelineFragment;
import com.twitter.android.NotificationsBaseTimelineActivity;
import com.twitter.android.ProfileActivity;
import com.twitter.android.RemoveAccountDialogActivity;
import com.twitter.android.RootTabbedFindPeopleActivity;
import com.twitter.android.UserAccount;
import com.twitter.android.VitActivityFragment;
import com.twitter.android.ads.AdsCompanionWebViewActivity;
import com.twitter.android.bb;
import com.twitter.android.bp;
import com.twitter.android.bx;
import com.twitter.android.client.bz;
import com.twitter.android.client.q;
import com.twitter.android.client.u;
import com.twitter.android.d;
import com.twitter.android.e;
import com.twitter.android.ei;
import com.twitter.android.geo.c;
import com.twitter.android.hv;
import com.twitter.android.ko;
import com.twitter.android.ky;
import com.twitter.android.kz;
import com.twitter.android.lf;
import com.twitter.android.metrics.LaunchTracker;
import com.twitter.android.moments.ui.guide.MomentsGuideFragment;
import com.twitter.android.moments.ui.guide.ai;
import com.twitter.android.news.CategorizedNewsFragment;
import com.twitter.android.news.NewsActivity;
import com.twitter.android.people.PeopleDiscoveryActivity;
import com.twitter.android.twogday.TwoGDayEndOverlay;
import com.twitter.android.twogday.TwoGDayStartOverlay;
import com.twitter.android.util.af;
import com.twitter.android.util.ak;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.j;
import com.twitter.config.AppConfig;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.activity.f;
import com.twitter.library.api.timeline.TimelineHelper;
import com.twitter.library.client.Session;
import com.twitter.library.client.aa;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.client.navigation.a;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.r;
import com.twitter.library.client.navigation.w;
import com.twitter.library.client.y;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.v;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.library.util.g;
import com.twitter.model.core.TwitterUser;
import com.twitter.platform.PlatformContext;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableList;
import com.twitter.util.m;
import defpackage.adn;
import defpackage.asp;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bcx;
import defpackage.bew;
import defpackage.bex;
import defpackage.bus;
import defpackage.bvj;
import defpackage.bvs;
import defpackage.bym;
import defpackage.cbx;
import defpackage.cym;
import java.util.ArrayList;
import java.util.List;
import rx.an;
import tv.periscope.android.library.k;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class MainActivity extends ActivityWithProgress implements OnAccountsUpdateListener, asp, bb, e, com.twitter.android.geo.e, ky, a {
    public static final Uri c;
    public static final Uri d;
    public static final Uri e;
    public static final Uri f;
    public static final Uri g;
    public static boolean h;
    private static int r;
    private static int s;
    private SharedPreferences A;
    private l B;
    private u C;
    private OnSharedPreferenceChangeListener D;
    private aa E;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private boolean O;
    private String P;
    private List<Uri> Q;
    private m R;
    private List<at> S;
    private af T;
    private long U;
    private z V;
    private s W;
    private q X;
    private com.twitter.android.client.z Y;
    private c Z;
    private OnSharedPreferenceChangeListener aa;
    private boolean ab;
    private an ac;
    private Snackbar ad;
    ei i;
    j j;
    String k;
    int l;
    int m;
    int n;
    int o;
    ViewPager p;
    o q;
    private final h t;
    private final i u;
    private final r v;
    private final lf w;
    private long x;
    private int y;
    private d z;

    public MainActivity() {
        this.t = new h(this);
        this.u = new i();
        this.v = new r();
        this.w = lf.a();
        this.U = -1;
    }

    public /* synthetic */ Fragment a(at atVar) {
        return b(atVar);
    }

    static {
        c = Uri.parse("twitter://timeline/home");
        d = Uri.parse("twitter://notifications");
        e = Uri.parse("twitter://dms");
        f = Uri.parse("twitter://moments");
        g = Uri.parse("twitter://news");
        r = 0;
        s = 0;
    }

    public static TaskStackBuilder a(Context context, String str) {
        TaskStackBuilder create = TaskStackBuilder.create(context);
        create.addNextIntent(new Intent(context, MainActivity.class).putExtra("AbsFragmentActivity_account_name", str));
        return create;
    }

    public static void a(Intent intent, Context context, String str) {
        TaskStackBuilder a = a(context, str);
        a.addNextIntent(intent);
        a.startActivities();
    }

    public static void a(bg bgVar, Intent intent, Context context, String str) {
        bgVar.c(bgVar.b(str));
        bp.a();
        a(intent, context, str);
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.b(34);
        a.d(true);
        a.d(2130968967);
        return a;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        com.twitter.android.client.c M = M();
        Resources resources = getResources();
        c(null);
        this.Y = com.twitter.android.client.z.a((Context) this);
        this.j = new j(getApplicationContext());
        this.W = new s(this.j);
        M.c((Context) this);
        this.p = (ViewPager) findViewById(2131952457);
        this.p.setPageMargin(resources.getDimensionPixelSize(2131690051));
        this.p.setPageMarginDrawable(2131886266);
        this.p.setOffscreenPageLimit(3);
        this.z = new d(this, findViewById(2131952684), this);
        this.A = getPreferences(0);
        s = this.A.getInt("version_code", 0);
        AccountManager.get(this).addOnAccountsUpdatedListener(this, null, true);
        this.K = true;
        this.E = new k(this);
        M.a(this.E);
        this.X = new q(this);
        aa().a(this.X);
        this.V = new l(this);
        this.J.a(this.V);
        this.S = new ArrayList();
        this.R = new m(this.S);
        this.D = new a(this);
        b(ab().e());
        this.C = new u(this, ab().f(), getSupportFragmentManager());
        if (bundle == null) {
            x c = M.c();
            if (c != null) {
                this.J.a(c);
            }
        }
        this.T = new af(ab().g());
        boolean e = bus.a().e();
        this.y = e ? u() + t() : 0;
        DockLayout dockLayout = (DockLayout) findViewById(2131952323);
        if (dockLayout != null) {
            dockLayout.a(new kz(this, X(), this.y));
        }
        HorizontalListView horizontalListView = (HorizontalListView) findViewById(2131952459);
        this.q = new o(this, this, this.S, this.p, horizontalListView, this.R, dockLayout);
        this.p.setAdapter(this.q);
        if (e) {
            horizontalListView.setAdapter(this.R);
            horizontalListView.setOnItemClickListener(new b(this));
            ((r) Y().c()).a(this.R);
        } else {
            if (dockLayout != null) {
                dockLayout.setTopDockView(null);
            }
            horizontalListView.setVisibility(8);
        }
        y();
        b(getIntent());
        l();
        f();
        if (bundle == null) {
            bz.a((Context) this).a(null);
            if (AppConfig.m().b()) {
                q.a(getApplicationContext());
            }
        } else {
            this.O = bundle.getBoolean("alreadyCheckedExpiredDrafts", false);
        }
        if (com.twitter.util.ui.a.a() && bundle == null) {
            bbu.a(new TwitterScribeLog(ab().g()).b("app::::explorebytouch_enabled"));
        }
        if (hv.c(this)) {
            b(c);
        }
        this.Z = new c(this, "main_activity_location_dialog", this.w, 3);
        this.aa = new c(this);
        this.b.registerOnSharedPreferenceChangeListener(this.aa);
        TimelineHelper.a().b();
    }

    private void a(boolean z, boolean z2) {
        if (bus.a().e() && this.q != null) {
            TwitterListFragment b = b(this.q.b(d));
            if (b instanceof ActivityFragment) {
                ActivityFragment activityFragment = (ActivityFragment) b;
                int l = activityFragment.l();
                if (!(activityFragment instanceof VitActivityFragment)) {
                    l = z2 ? 3 : 0;
                }
                activityFragment.a(l, z);
            }
        }
    }

    private int t() {
        return getResources().getDimensionPixelSize(2131690152);
    }

    private int u() {
        return getResources().getDimensionPixelSize(2131690153);
    }

    protected void b(String str) {
        if (!(this.B == null || this.D == null)) {
            this.B.unregisterOnSharedPreferenceChangeListener(this.D);
        }
        this.k = str;
        l lVar = new l(this, str);
        this.L = lVar.getBoolean("connect_tab", false);
        this.M = lVar.getBoolean("notifications_follow_only", false);
        lVar.registerOnSharedPreferenceChangeListener(this.D);
        this.B = lVar;
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        Uri uri = (Uri) bundle.getParcelable("currentTab");
        if (uri != null) {
            b(uri);
        }
    }

    public boolean D() {
        return true;
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable c = this.q.c();
        if (c != null) {
            bundle.putParcelable("currentTab", c);
        }
        bundle.putBoolean("alreadyCheckedExpiredDrafts", this.O);
    }

    public void onContentChanged() {
        super.onContentChanged();
        this.p = (ViewPager) findViewById(2131952457);
    }

    protected void onStart() {
        super.onStart();
        C();
        com.twitter.android.metrics.a.a(L(), ab().g()).j();
        if (PushRegistration.c(this)) {
            CharSequence f = b.f(this);
            if (aj.a(f)) {
                PushRegistration.d(this);
            } else if (PushRegistration.c(this, this.k)) {
                AsyncOperation asyncOperation = (bew) new bew(this, ab()).d(1);
                asyncOperation.a = f;
                this.J.a(asyncOperation);
            }
        }
        if (!this.b.getBoolean("has_completed_signin_flow", false)) {
            this.b.edit().putBoolean("has_completed_signin_flow", true).apply();
        }
        v();
    }

    protected void onResume() {
        super.onResume();
        if (this.P != null) {
            d(this.P);
            this.P = null;
        }
        com.twitter.android.client.c M = M();
        bvj.a((asp) this);
        bg aa = aa();
        if (this.k == null) {
            aa.d(aa.c().e());
        }
        this.C.a();
        if (h) {
            h = false;
            Y().h();
        }
        try {
            int i = getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
            if (s == 0 && M.e() == 0) {
                this.Y.c();
            } else if (i > s) {
                if (m.b() > (((long) com.twitter.config.d.a("legacy_deciders_find_friends_interval_sec", 15552000)) * 1000) + M.e()) {
                    this.Y.c();
                }
            }
            s = i;
        } catch (NameNotFoundException e) {
        }
        Object obj = null;
        if (r == 0) {
            int i2 = this.A.getInt("ver", 0);
            if (i2 == 0) {
                if (P().c()) {
                    if (!AppConfig.m().p()) {
                        obj = 1;
                    } else if (!getSharedPreferences("debug_prefs", 0).getBoolean("suppress_location_dialogs", false)) {
                        obj = 1;
                    }
                }
            } else if ((i2 == 1 || i2 == 2) && !this.A.getBoolean("suppress_location_dialogs", false) && P().c()) {
                obj = 1;
            }
            r = 6;
        }
        com.twitter.android.util.t a = com.twitter.android.util.t.a(this, "location_fatigue", this.k);
        if (obj != null && a.a()) {
            a.b();
            this.Z.a((com.twitter.android.geo.e) this);
            this.Z.a(5);
        }
        if (this.ab) {
            this.ab = false;
            if (bvs.a().e()) {
                this.w.a(3, (Activity) this, "android.permission.ACCESS_FINE_LOCATION");
            }
        }
        SharedPreferences sharedPreferences = this.A;
        long b = m.b();
        this.x = sharedPreferences.getLong("st", 0);
        Session c = aa.c();
        if (c.j() == null || this.x + 3600000 < b) {
            M.d();
            az.a((Context) this).a(bex.a((Context) this, c), null);
            this.x = b;
        }
        e(c.e());
        Context applicationContext = getApplicationContext();
        com.twitter.library.vineloops.c.a(applicationContext, az.a(applicationContext)).a();
        y.a().a((Object) new com.twitter.library.client.z(applicationContext));
        if (this.N) {
            r();
            this.N = false;
        }
        w();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 3 && !lf.a().a("android.permission.ACCESS_FINE_LOCATION", strArr, iArr)) {
            bvs.a().a(false);
        }
    }

    private void v() {
        if (!this.O) {
            if (this.ac != null) {
                this.ac.K_();
            }
            this.ac = v.b(getApplicationContext(), ab().g()).a(cym.a()).c(new d(this));
        }
    }

    public void a(long j) {
        runOnUiThread(new e(this));
    }

    private void w() {
        if (AppConfig.m().b()) {
            long g = bg.a().c().g();
            if (bvj.c(g)) {
                com.twitter.platform.q b = PlatformContext.f().b();
                if (com.twitter.android.twogday.c.a()) {
                    if (!com.twitter.android.twogday.c.a(b)) {
                        com.twitter.android.twogday.c.b();
                        TwoGDayStartOverlay.a(this, g);
                    }
                } else if (com.twitter.android.twogday.c.a(b) && com.twitter.library.network.v.a().c()) {
                    com.twitter.android.twogday.c.c();
                    TwoGDayEndOverlay.a(this, g);
                }
            }
        }
    }

    public String b() {
        TwitterListFragment e = e();
        if (e instanceof bb) {
            return ((bb) e).b();
        }
        return null;
    }

    public TwitterListFragment b(at atVar) {
        if (atVar == null) {
            return null;
        }
        return (TwitterListFragment) atVar.a(getSupportFragmentManager());
    }

    public TwitterListFragment e() {
        return b(this.q.a(this.p.getCurrentItem()));
    }

    void f() {
        l lVar = new l(this, ab().e(), "hometab");
        j jVar = this.j;
        if (lVar.getLong("ft", 0) == 0) {
            if (jVar.hasMessages(1)) {
                jVar.removeMessages(1);
            }
            jVar.sendMessageDelayed(jVar.obtainMessage(1), 60000);
        }
        c(30000);
        b(15000);
    }

    private void b(long j) {
        j jVar = this.j;
        if (jVar.hasMessages(5)) {
            jVar.removeMessages(5);
        }
        jVar.sendMessageDelayed(jVar.obtainMessage(5), j);
    }

    private void c(long j) {
        this.j.a(j, this.W, j.a);
    }

    protected void onPause() {
        super.onPause();
        bvj.b((asp) this);
        this.Y.a(ab().e(), (int) MotionEventCompat.ACTION_MASK);
        Editor edit = this.A.edit();
        edit.putInt("ver", 6);
        edit.putInt("version_code", s);
        Uri c = this.q.c();
        edit.putString("tag", c != null ? c.toString() : null);
        edit.putLong("st", this.x);
        edit.apply();
    }

    protected void onStop() {
        if (this.ac != null) {
            this.ac.K_();
        }
        super.onStop();
    }

    protected void onDestroy() {
        super.onDestroy();
        PushRegistration.e(this);
        aa().b(this.X);
        aa aaVar = this.E;
        if (aaVar != null) {
            M().b(aaVar);
        }
        this.J.b(this.V);
        if (this.K) {
            AccountManager.get(this).removeOnAccountsUpdatedListener(this);
        }
        if (this.D != null) {
            this.B.unregisterOnSharedPreferenceChangeListener(this.D);
        }
        w c = Y().c();
        if (c != null) {
            c.a(null, ab().j());
        }
        if (this.aa != null) {
            this.b.unregisterOnSharedPreferenceChangeListener(this.aa);
            this.aa = null;
        }
    }

    public void onBackPressed() {
        if (bus.a().c()) {
            if (Y().e()) {
                Y().g();
                return;
            } else if (!(this.q == null || this.p.getCurrentItem() == this.q.a(c))) {
                b(c);
                return;
            }
        }
        super.onBackPressed();
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        b(intent);
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (xVar.e.equals(f.a)) {
            ab N = xVar.N();
            com.twitter.library.service.aa aaVar = (com.twitter.library.service.aa) xVar.l().b();
            if (N.c == ab().g() && aaVar.b()) {
                a(N.e, false);
            }
        }
    }

    private void a(String str, boolean z) {
        if (z) {
            e(str);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("activity", false);
        TwitterDataSyncService.a((Context) this, bundle, ab());
    }

    private void a(ac acVar, int i, int i2) {
        if (acVar != null) {
            if (acVar instanceof com.twitter.internal.android.widget.e) {
                com.twitter.internal.android.widget.e eVar = (com.twitter.internal.android.widget.e) acVar;
                eVar.setBadgeMode(i);
                eVar.setBadgeNumber(i2);
            }
            if (acVar instanceof bca) {
                CharSequence charSequence;
                bca bca = (bca) acVar;
                CharSequence j = bca.j();
                Resources resources = getResources();
                if (i2 <= 0) {
                    charSequence = BuildConfig.VERSION_NAME;
                } else {
                    charSequence = resources.getQuantityString(2131492864, i2, new Object[]{Integer.valueOf(i2)});
                }
                if (aj.b(j)) {
                    if (aj.a(charSequence)) {
                        charSequence = j.toString();
                    } else {
                        charSequence = resources.getString(2131361847, new Object[]{j, charSequence});
                    }
                }
                bca.b(charSequence);
            }
        }
    }

    private void x() {
        Session ab = ab();
        TwitterUser f = ab.f();
        if (f != null) {
            this.T.a(f.bf_());
            z();
            N().b(BuildConfig.VERSION_NAME);
        }
        Y().a(f, ab.j());
    }

    private void y() {
        this.S.clear();
        if (bus.a().e()) {
            int a = this.T.a();
            this.Q = MutableList.a();
            if (a == 1) {
                this.Q.add(f);
            } else if (a == 2) {
                this.Q.add(g);
            }
            this.Q.add(d);
            this.Q.add(e);
        } else {
            this.Q = CollectionUtils.a();
        }
        d(c);
        for (Uri d : this.Q) {
            d(d);
        }
        this.q.notifyDataSetChanged();
    }

    private void d(Uri uri) {
        j jVar = (j) new j().e(this.y);
        if (bus.a().e()) {
            jVar.f(u());
        }
        if (uri.equals(c)) {
            ((j) ((j) jVar.b(2131362657)).c(2131362658)).a("type", 0);
            Intent intent = getIntent();
            if (intent != null && intent.hasExtra("ref_event")) {
                jVar.b("ref_event", intent.getStringExtra("ref_event"));
            }
            this.S.add(new au(c, HomeTimelineFragment.class).a(jVar.b()).a("home").a(getString(2131362805)).a(2130839034).a(false).b(k.home).a((Object) "nav_item_tag_home").a());
        } else if (uri.equals(e)) {
            this.S.add(new bx().a(this, uri, jVar.b()));
        } else if (uri.equals(d)) {
            if (ab().f() != null) {
                this.S.add(new ko(this.L, ab().f().n, NotificationsBaseTimelineActivity.a(getApplicationContext(), aa())).a(this, uri, jVar.b()));
            }
        } else if (uri.equals(f)) {
            ((j) jVar.a("show_category_pills", bym.i())).b("home_view_tag", "nav_item_tag_home");
            this.S.add(new au(uri, MomentsGuideFragment.class).a(jVar.b()).a("moments").a(getString(2131363113)).a(2130839037).a(false).b(2131953443).a());
        } else if (uri.equals(g)) {
            this.S.add(new au(uri, CategorizedNewsFragment.class).a(jVar.b()).a("news").a(getString(2131363136)).a(2130839038).a(false).b(2131953230).a());
        }
        this.R.notifyDataSetChanged();
    }

    private void z() {
        y();
        this.p.setCurrentItem(0);
        this.q.d();
        this.A.edit().remove("tag").apply();
    }

    public void onAccountsUpdated(Account[] accountArr) {
        if (!isDestroyed() && !isFinishing()) {
            Object obj = null;
            int i = 0;
            String str = null;
            for (Account account : accountArr) {
                if (com.twitter.library.util.b.a.equals(account.type)) {
                    i++;
                    if (str == null) {
                        str = account;
                    }
                    if (obj == null && account.name.equals(this.k)) {
                        obj = 1;
                    }
                }
            }
            if (obj == null && i > 0) {
                this.k = null;
                x();
            }
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == 1) {
                    UserAccount userAccount = (UserAccount) intent.getParcelableExtra("account");
                    if (userAccount != null && this.k != null && !this.k.equals(userAccount.a.name)) {
                        if (bus.a().c()) {
                            d(userAccount.a.name);
                        } else {
                            this.z.a(userAccount.a);
                        }
                    }
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                this.j.a(0, 0, this.W, 2);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (i2 != -1) {
                    return;
                }
                if (intent.getBooleanExtra("is_last", false)) {
                    DispatchActivity.a((Activity) this);
                } else if (com.twitter.library.util.b.a() > 1) {
                    A();
                }
            default:
                super.onActivityResult(i, i2, intent);
        }
    }

    private void A() {
        a(B());
    }

    private Intent B() {
        return new Intent(this, AccountsDialogActivity.class).putExtra("page", c).putExtra("AccountsDialogActivity_account_name", ab().e());
    }

    private void a(Intent intent) {
        startActivityForResult(intent, 1);
    }

    public void i() {
        Intent B = B();
        B.putExtra("AccountsDialogActivity_new_account", true);
        a(B);
    }

    public void j() {
        Intent B = B();
        B.putExtra("AccountsDialogActivity_add_account", true);
        a(B);
    }

    void l() {
        c(0);
        b(0);
        for (at atVar : this.S) {
            atVar.i = 0;
        }
        this.R.notifyDataSetChanged();
        C();
    }

    private void C() {
        getSupportLoaderManager().restartLoader(0, null, this.t);
        getSupportLoaderManager().restartLoader(1, null, this.u);
        if (com.twitter.config.d.a(ab().g(), "japan_news_android_periodic_sync_enabled", false)) {
            getSupportLoaderManager().restartLoader(3, null, this.v);
        }
    }

    private void b(Intent intent) {
        if ("twitter".equals(intent.getScheme())) {
            if ("timeline".equals(intent.getData().getHost())) {
                b(c);
            } else {
                b(c);
            }
        } else {
            Uri uri = (Uri) intent.getParcelableExtra("page");
            if (uri == null) {
                b(Uri.parse(this.A.getString("tag", c.toString())));
            } else {
                b(uri);
            }
        }
        this.N = intent.getBooleanExtra("scroll_to_top", false);
    }

    public void b(Uri uri) {
        int a = this.q.a(uri);
        if (a != -1) {
            LaunchTracker.a().a(uri);
            c(uri);
            this.p.setCurrentItem(a);
        }
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017192);
        wVar.a(2132017169);
        wVar.a(2132017170);
        return true;
    }

    public int b(w wVar) {
        super.b(wVar);
        ToolBar j = wVar.j();
        TwitterUser f = ab().f();
        this.T.a(wVar);
        this.T.a(j, this.C);
        a(wVar.b(2131953230), 4, this.n);
        a(wVar.b(2131953443), 4, 0);
        a(wVar.b(2131953441), 2, this.m);
        ac b = wVar.b(2131953442);
        int i = (f == null || !f.n) ? 2 : 1;
        a(b, i, this.l);
        F();
        ac b2 = wVar.b(2131953449);
        if (b2 != null) {
            b2.f(com.twitter.config.d.a("android_toolbar_item_logout_enabled", false));
        }
        ac b3 = wVar.b(2131953448);
        if (b3 != null) {
            b3.f(g.a().b());
            if (b3.d() instanceof SwitchCompat) {
                SwitchCompat switchCompat = (SwitchCompat) b3.d();
                switchCompat.setOnCheckedChangeListener(null);
                switchCompat.setChecked(g.a(getResources()));
                switchCompat.setOnCheckedChangeListener(new f(this, b3));
            }
        }
        b3 = wVar.b(2131953440);
        b = wVar.b(2131953447);
        i = cbx.a() ? 2131363241 : 2131364116;
        if (b3 != null) {
            b3.g(i);
        }
        if (b != null) {
            b.g(i);
        }
        Session ab = ab();
        Y().a(ab.f(), ab.j());
        return 2;
    }

    protected void c(String str) {
        bbu.a(new TwitterScribeLog(ab().g()).b("home", "navigation_bar", BuildConfig.VERSION_NAME, str, "click"));
    }

    protected void c(at atVar) {
        String str;
        if (f.equals(atVar.a)) {
            str = "moments";
        } else if (g.equals(atVar.a)) {
            str = "news_menu_item";
        } else if (d.equals(atVar.a)) {
            str = "notifications_menu_item";
        } else if (e.equals(atVar.a)) {
            str = "messages_menu_item";
        } else if (c.equals(atVar.a)) {
            str = "home_menu_item";
        } else {
            str = null;
        }
        if (str != null) {
            c(str);
        }
    }

    public boolean a(ac acVar) {
        int i = 0;
        int a = acVar.a();
        switch (a) {
            case bcx.accounts /*2131951616*/:
                if (!bus.a().h()) {
                    A();
                }
                c("accounts_overflow_item");
                break;
            case bcx.add_account /*2131951627*/:
                j();
                break;
            case bcx.drawer_icon /*2131951649*/:
                bbu.a(new TwitterScribeLog(ab().g()).b("home", "navigation_bar", "overflow", BuildConfig.VERSION_NAME, "click"));
                Y().c().d();
                break;
            case k.home /*2131951668*/:
                r();
                c("home_menu_item");
                break;
            case bcx.my_profile /*2131951682*/:
                startActivity(new Intent(this, ProfileActivity.class).putExtra("user_id", ab().g()));
                c("me_overflow_item");
                break;
            case bcx.new_account /*2131951685*/:
                i();
                break;
            case bcx.overflow /*2131951688*/:
                bbu.a(new TwitterScribeLog(ab().g()).b("home", "navigation_bar", "overflow", BuildConfig.VERSION_NAME, "click"));
                break;
            case 2131953230:
                startActivity(new Intent(this, NewsActivity.class));
                c("news_menu_item");
                break;
            case 2131953426:
                super.a(acVar);
                c("search_menu_item");
                break;
            case 2131953440:
            case 2131953447:
                if (cbx.a()) {
                    startActivity(new Intent(this, PeopleDiscoveryActivity.class));
                } else {
                    startActivityForResult(new Intent(this, RootTabbedFindPeopleActivity.class), 2);
                }
                if (a == 2131953447) {
                    i = 1;
                }
                c(i != 0 ? "peopleplus_overflow_item" : "peopleplus_menu_item");
                break;
            case 2131953441:
                startActivity(com.twitter.android.dm.r.d(this));
                c("messages_menu_item");
                break;
            case 2131953442:
                startActivity(ak.a(this, ab().f(), true, this.L));
                c("notifications_menu_item");
                break;
            case 2131953443:
                ai.a((Activity) this);
                c("moments");
                break;
            case 2131953444:
                startActivity(com.twitter.app.lists.c.a().b(ab().g()).a((Context) this));
                c("lists_overflow_item");
                break;
            case 2131953445:
                startActivity(new Intent(this, NewsActivity.class));
                c("news_overflow_item");
                break;
            case 2131953446:
                startActivity(new com.twitter.android.highlights.j(this).a());
                c("highlights_overflow_item");
                break;
            case 2131953448:
                E();
                break;
            case 2131953449:
                startActivityForResult(new Intent(this, RemoveAccountDialogActivity.class).putExtra("RemoveAccountDialogActivity_account_name", ab().e()), 4);
                c("logout_overflow_item");
                break;
            case 2131953450:
                startActivity(AdsCompanionWebViewActivity.a(this));
                c("open_ads_companion");
                break;
            case 2131953489:
                super.a(acVar);
                c("settings_overflow_item");
                break;
            case 2131953490:
                super.a(acVar);
                c("help_overflow_item");
                break;
            default:
                return super.a(acVar);
        }
        return true;
    }

    private void E() {
        w c = Y().c();
        if (c instanceof r) {
            g.a().a(this.b);
            this.G.b();
            ((r) c).a(new g(this));
            c.e();
            return;
        }
        com.twitter.util.j.a("Theme switching is only supported within Modern Android");
    }

    private void F() {
        TwitterUser f = ab().f();
        ac b = Y().c().b(2131953450);
        if (b != null) {
            b.f(com.twitter.android.ads.c.c(f));
        }
    }

    private void G() {
        Session ab = ab();
        Y().a(ab.f(), ab.j());
    }

    public void a(Uri uri, int i, boolean z) {
        for (at atVar : this.S) {
            if (uri.equals(atVar.a) && atVar.i != i) {
                atVar.i = i;
                atVar.h = z;
                this.R.notifyDataSetChanged();
                return;
            }
        }
    }

    public void a(String str) {
        bg aa = aa();
        aa.c(aa.b(str));
        e(str);
        bp.a();
    }

    public void d(String str) {
        bg aa = aa();
        aa.b(this.X);
        aa.c(aa.b(str));
        bp.a();
        a(2131034190, 2131034191);
    }

    private void a(@AnimRes int i, @AnimRes int i2) {
        Intent intent = new Intent(this, MainActivity.class);
        if (!(this.q == null || this.q.c() == null)) {
            intent.putExtra("page", this.q.c());
        }
        finish();
        overridePendingTransition(i, i2);
        startActivity(intent);
    }

    public void c(Uri uri) {
        int i = 1;
        I();
        String str = this.k;
        this.Y.a(str, (int) MotionEventCompat.ACTION_MASK);
        if (c.equals(uri)) {
            this.Y.b(str, 1);
        }
        if (f.equals(uri)) {
            adn.a(ab().g());
        }
        o oVar = this.q;
        setTitle(oVar.getPageTitle(oVar.a(uri)));
        N().a(oVar.e());
        if (e.equals(uri)) {
            i = 2;
        }
        i(i);
    }

    public void showFragmentBottomBar(View view) {
        if (this.ad == null) {
            this.ad = com.twitter.ui.widget.u.a(this, findViewById(2131952684), view);
            this.ad.show();
        }
    }

    public void m() {
        if (this.ad != null) {
            this.ad.dismiss();
            this.ad = null;
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getWindow().setFormat(1);
    }

    public boolean onSearchRequested() {
        c(0);
        return super.onSearchRequested();
    }

    public void r() {
        TwitterListFragment e = e();
        if (e != null) {
            e.aJ();
            if (this.G != null) {
                this.G.b();
            }
        }
    }

    public static void a(Activity activity, Uri uri) {
        Intent a = a((Context) activity, uri);
        if (activity instanceof TwitterFragmentActivity) {
            ((TwitterFragmentActivity) activity).d(a);
        } else {
            activity.startActivity(a);
        }
        activity.finish();
    }

    public static Intent a(Context context, Uri uri) {
        Intent addFlags = new Intent(context, MainActivity.class).addFlags(67108864);
        if (uri != null) {
            addFlags.putExtra("page", uri);
        }
        return addFlags;
    }

    private void e(String str) {
        if (TwitterDataSyncService.a(getApplicationContext(), str)) {
            Bundle bundle = new Bundle(7);
            bundle.putBoolean("activity", true);
            bundle.putBoolean("live_addressbook_sync", false);
            bundle.putBoolean("home", false);
            bundle.putBoolean("messages", false);
            bundle.putBoolean("show_notif", false);
            bundle.putBoolean("news", false);
            bundle.putBoolean("moments", false);
            com.twitter.app.common.account.a b = com.twitter.library.util.b.b(str);
            if (b != null) {
                TwitterDataSyncService.a(this, bundle, false, b.a());
            }
        }
    }

    private void a(int i) {
        if (this.o != i) {
            this.o = i;
            a(c, this.o, false);
            if (!this.Q.contains(c)) {
                Y().h();
            }
        }
    }

    private void b(int i) {
        if (this.l != i) {
            this.l = i;
            if (this.Q.contains(d)) {
                a(d, this.l, true);
            } else {
                Y().h();
            }
        }
    }

    private void c(int i) {
        if (this.m != i) {
            this.m = i;
            if (this.Q.contains(e)) {
                a(e, this.m, true);
            } else {
                Y().h();
            }
        }
    }

    private void d(int i) {
        if (this.n != i) {
            this.n = i;
            Y().h();
        }
    }

    public void c() {
        this.ab = true;
    }

    public AbsPagesAdapter g() {
        return this.q;
    }
}
