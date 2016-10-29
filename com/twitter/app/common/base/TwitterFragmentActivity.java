package com.twitter.app.common.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.design.widget.FloatingActionButton;
import android.support.v7.recyclerview.BuildConfig;
import android.view.KeyEvent;
import android.view.View;
import com.twitter.android.DispatchActivity;
import com.twitter.android.WebViewActivity;
import com.twitter.android.av;
import com.twitter.android.av.audio.g;
import com.twitter.android.client.BrowserLoadingStatus;
import com.twitter.android.client.NotificationService;
import com.twitter.android.client.SearchSuggestionController;
import com.twitter.android.client.c;
import com.twitter.android.client.notifications.StatusBarNotif;
import com.twitter.android.composer.ComposerDockLayout;
import com.twitter.android.composer.aw;
import com.twitter.android.composer.ba;
import com.twitter.android.composer.bd;
import com.twitter.android.hw;
import com.twitter.android.io;
import com.twitter.android.jh;
import com.twitter.android.settings.SettingsActivity;
import com.twitter.android.trends.TrendsPlusActivity;
import com.twitter.app.drafts.DraftsActivity;
import com.twitter.app.main.MainActivity;
import com.twitter.config.AppConfig;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.AbsFragmentActivity;
import com.twitter.library.client.aa;
import com.twitter.library.client.d;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.client.q;
import com.twitter.library.client.s;
import com.twitter.library.media.manager.l;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.ui.view.b;
import com.twitter.ui.view.f;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.concurrent.i;
import com.twitter.util.ui.a;
import defpackage.aru;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bdj;
import defpackage.bus;
import defpackage.bvy;
import java.util.ArrayList;
import java.util.Iterator;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public abstract class TwitterFragmentActivity extends AbsFragmentActivity implements hw, s {
    protected ComposerDockLayout G;
    protected boolean H;
    private n a;
    private final a b;
    private final ArrayList<aa> c;
    private c d;
    private bvy e;
    private SearchSuggestionController f;
    private t g;
    private CharSequence h;
    private g i;
    private boolean j;
    private f k;

    public TwitterFragmentActivity() {
        this.b = new a();
        this.c = new ArrayList();
        this.h = BuildConfig.VERSION_NAME;
    }

    @CallSuper
    protected final void onCreate(Bundle bundle) {
        this.d = c.a((Context) this);
        this.a = new n(this);
        super.onCreate(bundle);
    }

    public void a(Bundle bundle, d dVar) {
        if (a(getIntent())) {
            this.i = new g(this);
            View findViewById = findViewById(2131952323);
            if (findViewById instanceof ComposerDockLayout) {
                ba qVar = new q(this);
                ComposerDockLayout composerDockLayout = (ComposerDockLayout) findViewById;
                FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(2131952462);
                composerDockLayout.setFab(floatingActionButton);
                if (floatingActionButton != null) {
                    if (VERSION.SDK_INT >= 22) {
                        floatingActionButton.setAccessibilityTraversalBefore(2131952459);
                    }
                    this.k = f.a(floatingActionButton);
                    this.k.a(new b(this, qVar, aa()));
                }
                boolean z = this.g.c == 2 || this.g.c == 3 || this.g.c == 4;
                this.H = z;
                if (this.H) {
                    if (this.g.c == 3) {
                        composerDockLayout.setBottomLocked(true);
                    }
                    if (this.g.c == 4) {
                        composerDockLayout.setLoggedOutMode(true);
                        composerDockLayout.a((Activity) this);
                    } else {
                        composerDockLayout.setComposerDockListener(qVar);
                    }
                } else {
                    composerDockLayout.setBottomVisible(false);
                }
                this.G = composerDockLayout;
            }
            bdj.a((Context) this).a();
            b(bundle, this.g);
            return;
        }
        DispatchActivity.a((Activity) this);
    }

    public void i(int i) {
        if (this.k != null) {
            this.k.a(i);
        }
    }

    public void h(boolean z) {
        if (this.G != null && this.H) {
            this.G.setBottomVisible(z);
        }
    }

    public final d g(Bundle bundle) {
        this.d = c.a((Context) this);
        this.d.c((Context) this);
        this.e = bvy.a((Context) this);
        a(new jh(this));
        this.f = new SearchSuggestionController(this, RtlSpacingHelper.UNDEFINED);
        this.f.a(bundle);
        this.f.a(new r(this));
        boolean d = bus.a().d();
        t tVar = new t();
        if (!d && getResources().getConfiguration().orientation == 2) {
            tVar.a(1);
        } else if (a.a()) {
            tVar.a(3);
        } else {
            tVar.a(2);
        }
        tVar.d(2130968834);
        this.g = a(bundle, tVar);
        return this.g;
    }

    public boolean D() {
        return true;
    }

    protected void onStart() {
        super.onStart();
        this.b.a();
    }

    protected void onStop() {
        this.b.a(isChangingConfigurations());
        super.onStop();
    }

    void j(int i) {
        if (i == 4) {
            startActivity(DraftsActivity.a((Context) this, true));
        } else {
            startActivity(aw.a().a(i).a(n(), d()).a(A_()).a((Context) this));
        }
    }

    protected bd A_() {
        return bd.a;
    }

    protected String n() {
        return null;
    }

    protected String k() {
        return getString(2131362289);
    }

    protected int[] d() {
        return null;
    }

    public t a(Bundle bundle, t tVar) {
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
    }

    public boolean a(w wVar) {
        if (this.g.a) {
            wVar.a(2132017161);
            ToolBar j = wVar.j();
            this.f.a(j);
            bca a = j.a(2131953425);
            if (a != null) {
                View c = a.c();
                if (c != null) {
                    c.setContentDescription(getString(2131362013));
                }
                if (this.g.c != 1) {
                    a.b(false);
                }
            }
        }
        AppConfig m = AppConfig.m();
        if (m.d()) {
            wVar.a(2132017154);
        } else if (m.p()) {
            wVar.a(2132017181);
        }
        if (this.g.b && ab().d() && !bus.a().f()) {
            wVar.a(2132017192);
        }
        if (io.a((Activity) this)) {
            wVar.j().setDisplayShowHomeAsUpEnabled(false);
        }
        return true;
    }

    public boolean a(ac acVar) {
        switch (acVar.a()) {
            case k.home /*2131951668*/:
                if (!io.a()) {
                    return super.a(acVar);
                }
                finish();
                return true;
            case 2131953415:
                av a = av.a((Context) this);
                a.a(getResources().getString(2131364285), a.b(), "Thanks for filing a bug!\n\n" + "Summary: \n\n" + "Steps to reproduce: \n\n" + "Expected results: \n\n" + "Actual results: \n\n" + a.d(), true).b(new com.twitter.util.concurrent.f().a(i.b).a(new s(this)));
                return true;
            case 2131953425:
                j(1);
                return true;
            case 2131953426:
                return onSearchRequested();
            case 2131953468:
                com.twitter.library.network.narc.i.a(getApplicationContext(), false);
                return true;
            case 2131953489:
                SettingsActivity.a((Context) this);
                return true;
            case 2131953490:
                startActivity(new Intent(this, WebViewActivity.class).setData(Uri.parse(getString(2131364276))));
                return true;
            default:
                return super.a(acVar);
        }
    }

    protected void onDestroy() {
        this.b.b(isChangingConfigurations());
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return (this.G != null && this.G.a(keyEvent)) || super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        boolean z = false;
        if (this.G != null && this.G.a(keyEvent)) {
            return true;
        }
        boolean f;
        if (Y().b() && i == 82 && !this.f.b()) {
            f = Y().f();
        } else {
            f = false;
        }
        if (f || super.onKeyUp(i, keyEvent)) {
            z = true;
        }
        return z;
    }

    public void onBackPressed() {
        if (this.f == null || !this.f.c()) {
            super.onBackPressed();
        }
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        a(intent);
    }

    private boolean a(Intent intent) {
        if (ab.a(intent)) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                if (((StatusBarNotif) extras.getParcelable("sb_notification")) != null) {
                    NotificationService.a(getApplicationContext(), extras);
                }
                this.j = u.b(intent);
                intent.removeExtra("sb_account_name");
                intent.removeExtra("sb_notification");
                intent.removeExtra("notif_scribe_log");
                intent.removeExtra("notif_scribe_log_for_preview_experiment");
                intent.removeExtra("notif_scribe_log_from_background");
            }
            return true;
        }
        intent.replaceExtras((Bundle) null);
        return false;
    }

    protected void onResume() {
        super.onResume();
        this.b.b();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            this.d.a((aa) it.next());
        }
        this.e.e();
        r();
    }

    protected void onPause() {
        I();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            this.d.b((aa) it.next());
        }
        this.e.d();
        com.twitter.library.metrics.g.a().b();
        super.onPause();
        this.b.c();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.b.a(bundle);
        this.f.b(bundle);
    }

    protected void o() {
        a(null);
    }

    protected void a(Uri uri) {
        if (bus.a().e() && !isTaskRoot()) {
            onBackPressed();
        } else if (this.j) {
            onBackPressed();
        } else {
            Intent ac = ac();
            if (ac != null) {
                a((Activity) this, ac);
                return;
            }
            Activity activity;
            Activity parent = getParent();
            if (parent != null) {
                activity = parent;
            }
            MainActivity.a(activity, uri);
        }
    }

    public boolean onSearchRequested() {
        startActivity(new Intent(this, TrendsPlusActivity.class).putExtra("type", 28).putExtra("timeline_tag", "TRENDSPLUS").putExtra("scribe_section", "search").putExtra("scribe_page", "trendsplus"));
        bbu.a(new TwitterScribeLog(ab().g()).b("trendsplus::::search_icon_launch"));
        return true;
    }

    protected final boolean I() {
        return this.f.c();
    }

    protected final boolean J() {
        return this.f.d();
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        i();
    }

    public CharSequence K() {
        return this.h;
    }

    public void k(int i) {
        b(getString(i));
    }

    public void b(CharSequence charSequence) {
        Y().b(charSequence);
        this.h = charSequence;
        i();
    }

    public void a(CharSequence charSequence, boolean z) {
        Y().b(charSequence, z);
        this.h = charSequence;
        i();
    }

    private void i() {
        ToolBar X = X();
        if (X != null) {
            CharSequence title = getTitle();
            if (aj.b(title) && aj.b(this.h)) {
                title = getString(2131362027, new Object[]{title, this.h});
            } else if (!aj.b(title)) {
                if (aj.b(this.h)) {
                    title = this.h;
                } else {
                    title = BuildConfig.VERSION_NAME;
                }
            }
            X.setTitleDescription(title);
        }
    }

    protected aru L() {
        return aru.b();
    }

    protected c M() {
        return this.d;
    }

    protected SearchSuggestionController N() {
        return this.f;
    }

    protected l O() {
        return l.a((Context) this);
    }

    @Deprecated
    protected void a(aa aaVar) {
        this.c.add(aaVar);
    }

    protected bvy P() {
        return this.e;
    }

    public void a(q qVar) {
        this.b.a(qVar);
    }

    public void b(q qVar) {
        this.b.b(qVar);
    }

    protected void v_() {
        DispatchActivity.a(this, getIntent());
    }

    public t Q() {
        if (this.g != null) {
            return this.g;
        }
        throw new IllegalStateException("ToolBarOptions have not been configured");
    }

    public g R() {
        return this.i;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.b.a(configuration);
    }

    private void r() {
        if (com.twitter.config.c.c("link_fetch_3760")) {
            BrowserLoadingStatus g = c.a((Context) this).g();
            if (g != null && g.a()) {
                g.a(findViewById(2131952025), (Activity) this);
            }
        }
    }

    protected boolean S() {
        return this.j;
    }

    protected final n T() {
        return this.a;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        if (n.a(i) && intent.hasExtra("extra_perm_result")) {
            this.a.b(i, intent);
        }
        this.b.a(i, i2, intent);
        super.onActivityResult(i, i2, intent);
    }
}
