package com.twitter.android;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.annotation.VisibleForTesting;
import android.support.v4.app.Fragment;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v4.view.ViewPager;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.view.InflateException;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import android.widget.Toast;
import com.twitter.android.events.b;
import com.twitter.android.geo.c;
import com.twitter.android.widget.TopicView$TopicData;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.config.d;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.network.an;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.da;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.util.aq;
import com.twitter.library.widget.SlidingPanel;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.concurrent.f;
import com.twitter.util.concurrent.i;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bca;
import defpackage.bus;
import defpackage.bvs;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class SearchActivity extends TwitterFragmentActivity implements LoaderCallbacks<Cursor>, OnClickListener, OnGlobalLayoutListener, OnItemClickListener, OnCheckedChangeListener, RadioGroup.OnCheckedChangeListener, ky, pl {
    private static final Map<String, Integer> l;
    private SlidingPanel A;
    private RelativeLayout B;
    private Switch C;
    private TextView D;
    private DockLayout E;
    private ViewPager K;
    private ej L;
    private c M;
    op a;
    int b;
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    km j;
    HorizontalListView k;
    private final List<at> m;
    private final lf n;
    private final Stack<Intent> o;
    private di p;
    private TwitterScribeAssociation q;
    private HashMap<String, Long> r;
    private HashMap<Integer, Long> s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    public SearchActivity() {
        this.m = new ArrayList(2);
        this.n = lf.a();
        this.o = new Stack();
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    static {
        l = new HashMap(10);
        l.put("com.twitter.android.action.USER_SHOW", Integer.valueOf(1));
        l.put("com.twitter.android.action.USER_SHOW_TYPEAHEAD", Integer.valueOf(2));
        l.put("com.twitter.android.action.USER_SHOW_SEARCH_SUGGESTION", Integer.valueOf(3));
        l.put("com.twitter.android.action.SEARCH", Integer.valueOf(4));
        l.put("com.twitter.android.action.SEARCH_RECENT", Integer.valueOf(5));
        l.put("com.twitter.android.action.SEARCH_TYPEAHEAD_TOPIC", Integer.valueOf(6));
        l.put("com.twitter.android.action.SEARCH_QUERY_SAVED", Integer.valueOf(7));
        l.put("com.twitter.android.action.SEARCH_TREND", Integer.valueOf(8));
        l.put("com.twitter.android.action.SEARCH_TAKEOVER", Integer.valueOf(9));
    }

    public t a(Bundle bundle, t tVar) {
        t a = super.a(bundle, tVar);
        a.d(bus.a().c() ? 2130969000 : 2130969370);
        a.d(true);
        a.b(6);
        if (io.a()) {
            a.c(false);
            a.a(4);
        }
        return a;
    }

    public void b(Bundle bundle, t tVar) {
        boolean z;
        this.E = (DockLayout) findViewById(2131952323);
        this.p = di.a((Context) this, ab().g());
        if (d.a("search_alerts_enabled")) {
            f();
        }
        this.D = (TextView) LayoutInflater.from(this).inflate(2130969378, null);
        this.D.setOnClickListener(this);
        this.q = (TwitterScribeAssociation) new TwitterScribeAssociation().b("search");
        N().a(this.q);
        SlidingPanel slidingPanel = (SlidingPanel) findViewById(2131952321);
        op opVar = new op(slidingPanel, this);
        opVar.n.setOnClickListener(this);
        opVar.o.setOnClickListener(this);
        opVar.p.setOnClickListener(this);
        this.a = opVar;
        slidingPanel.a(3);
        slidingPanel.setPanelSlideListener(new oo(slidingPanel, opVar));
        slidingPanel.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.A = slidingPanel;
        getSupportLoaderManager().initLoader(0, null, this);
        this.g = false;
        if (bundle == null) {
            this.r = new HashMap();
            this.s = new HashMap();
            this.v = true;
            io.b(this, "search");
        } else {
            this.r = (HashMap) bundle.getSerializable("search_saved_queries");
            this.s = (HashMap) bundle.getSerializable("search_ids");
            this.b = bundle.getInt("filter_type");
            this.c = bundle.getBoolean("filter_following");
            this.d = bundle.getBoolean("filter_near");
            this.f = bundle.getBoolean("filter_scope_alt");
            this.h = bundle.getBoolean("state_panel_maximized");
            this.v = bundle.getBoolean("state_show_toolbar_content", true);
            Collection collection = (Collection) bundle.getSerializable("backstack");
            if (collection != null) {
                this.o.addAll(collection);
            }
            this.p.a(this.s.values());
        }
        Intent intent = getIntent();
        if (bundle == null) {
            z = true;
        } else {
            z = false;
        }
        a(intent, z);
        this.i = true;
        this.M = new c(this, "search_activity_location_dialog", this.n, 1);
    }

    protected void onResume() {
        super.onResume();
        this.x = false;
        a(e());
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("search_saved_queries", this.r);
        bundle.putSerializable("search_ids", this.s);
        bundle.putInt("filter_type", this.b);
        bundle.putBoolean("filter_following", this.c);
        bundle.putBoolean("filter_near", this.d);
        bundle.putBoolean("filter_scope_alt", this.f);
        bundle.putBoolean("state_panel_maximized", this.A.getPanelState() == 4);
        bundle.putBoolean("state_show_toolbar_content", this.v);
        bundle.putSerializable("backstack", this.o);
    }

    protected void onRestoreInstanceState(Bundle bundle) {
    }

    protected void onDestroy() {
        if (ab().b() == LoginStatus.LOGGED_IN) {
            this.p.b(this.s.values());
        }
        super.onDestroy();
    }

    public boolean a(boolean z, String str) {
        if (this.u || this.x) {
            return false;
        }
        this.i = z;
        if ((this.i && this.y) || this.z) {
            this.i = false;
        }
        return true;
    }

    public void a(boolean z, ListView listView, SearchFragment searchFragment) {
        if (listView != null && searchFragment == e()) {
            if (z) {
                a(false, null);
                a(false);
                h(false);
                listView.setVisibility(8);
                if (this.z && this.B != null) {
                    this.B.setVisibility(8);
                    return;
                }
                return;
            }
            a(true, null);
            h(true);
            a(true);
            listView.setVisibility(0);
            if (this.z && this.B != null) {
                this.B.setVisibility(0);
            }
        }
    }

    public boolean a(String str, long j, TwitterTopic twitterTopic, String str2) {
        if (twitterTopic == null || !d.a("search_ui_event_takeover_enabled")) {
            return false;
        }
        String bg_ = twitterTopic.bg_();
        int i = twitterTopic.d().b;
        if (!b.a(b.a(bg_, i), str2)) {
            return false;
        }
        Intent a = sm.a(this, bg_, i, twitterTopic.e(), str, null, twitterTopic.h(), false, new TopicView$TopicData(twitterTopic));
        a.setAction("com.twitter.android.action.SEARCH_TAKEOVER").putExtra("search_takeover", true).putExtra("event_page_type", str2).putExtra("search_id", j).putExtra("search_src_ref", getIntent().getStringExtra("search_src_ref"));
        getIntent().setAction("com.twitter.android.action.SEARCH_TAKEOVER");
        startActivity(a);
        finish();
        overridePendingTransition(2131034186, 2131034187);
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aa().c().g()).b("search::::takeover")).a(TwitterScribeItem.a(bg_, i))).g(str));
        return true;
    }

    public boolean onSearchRequested() {
        if (this.A.getPanelState() != 0) {
            this.A.d();
        }
        return N().d();
    }

    public void onGlobalLayout() {
        boolean z = true;
        SlidingPanel slidingPanel = this.A;
        int height = slidingPanel.findViewById(2131953261).getHeight();
        int height2 = slidingPanel.findViewById(2131953245).getHeight() + height;
        slidingPanel.setPanelPreviewHeight(height2);
        this.t = getWindowManager().getDefaultDisplay().getHeight() > height + height2;
        slidingPanel.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        if (slidingPanel.getPanelState() != 0) {
            if (this.h || !this.t) {
                z = false;
            }
            b(z);
            slidingPanel.requestLayout();
        }
    }

    private void a(Intent intent, boolean z) {
        Integer num = (Integer) l.get(intent.getAction());
        CharSequence trim = e.b(intent.getStringExtra("query")).trim();
        if (!aj.a(trim)) {
            boolean z2;
            int intExtra;
            if (num != null) {
                String stringExtra = intent.getStringExtra("user_query");
                int intExtra2 = intent.getIntExtra("search_suggestion_position", -1);
                long longExtra = intent.getLongExtra("search_suggestion_id", -1);
                TwitterScribeAssociation twitterScribeAssociation = (TwitterScribeAssociation) intent.getParcelableExtra("source_association");
                switch (num.intValue()) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        b(twitterScribeAssociation, "go_to_user", "click", stringExtra, trim);
                        startActivity(new Intent(this, ProfileActivity.class).putExtra("screen_name", trim).putExtra("association", this.q).putExtra("expanded_search", true));
                        finish();
                        return;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        a(twitterScribeAssociation, "typeahead", "profile_click", stringExtra, trim, intExtra2, longExtra);
                        startActivity(new Intent(this, ProfileActivity.class).putExtra("screen_name", trim).putExtra("association", this.q).putExtra("expanded_search", true));
                        finish();
                        return;
                    case WireMessage.WIRE_AUTH /*3*/:
                        b(twitterScribeAssociation, "user", "click", stringExtra, trim);
                        startActivity(new Intent(this, ProfileActivity.class).putExtra("screen_name", trim).putExtra("association", this.q).putExtra("expanded_search", true));
                        finish();
                        return;
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        intent.putExtra("q_source", "typed_query").putExtra("scribe_context", "search_box");
                        b(twitterScribeAssociation, null, "search", stringExtra, trim);
                        z2 = false;
                        break;
                    case mx.UserView_actionButtonPaddingRight /*5*/:
                        intent.putExtra("q_source", "recent_search_click").putExtra("scribe_context", "typeahead_recent_search");
                        b(twitterScribeAssociation, "recent", "search", stringExtra, trim);
                        z2 = false;
                        break;
                    case mx.UserView_actionButtonPaddingBottom /*6*/:
                        intent.putExtra("q_source", "typeahead_click").putExtra("scribe_context", "typeahead");
                        a(twitterScribeAssociation, "typeahead", "search", stringExtra, trim, intExtra2, longExtra);
                        z2 = false;
                        break;
                    case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                        intent.putExtra("q_source", "saved_search_click").putExtra("scribe_context", "typeahead_saved_search");
                        a(twitterScribeAssociation, "saved_search", "search", stringExtra, trim, intExtra2, longExtra);
                        z2 = true;
                        break;
                    case ControlMessage.CONTROL_BAN /*8*/:
                        intent.putExtra("q_source", "typed_query").putExtra("scribe_context", "typeahead_cluster");
                        b(twitterScribeAssociation, "cluster", "search", stringExtra, trim);
                        z2 = false;
                        break;
                }
            }
            z2 = false;
            if (intent.getData() == null) {
                intExtra = intent.getIntExtra("search_type", 0);
                if (!intent.hasExtra("q_source")) {
                    intent.putExtra("q_source", "typed_query");
                }
            } else {
                intExtra = 0;
            }
            this.c = intent.getBooleanExtra("follows", false);
            this.d = intent.getBooleanExtra("near", false);
            boolean booleanExtra = intent.getBooleanExtra("terminal", false);
            String b = e.b(intent.getStringExtra("q_source"));
            List<or> a = a(booleanExtra, intExtra, intent);
            boolean z3 = intExtra == 3 && a.size() == 1;
            int dimensionPixelSize = this.E.c() ? getResources().getDimensionPixelSize(2131690233) : 0;
            this.m.clear();
            boolean z4 = z3;
            for (or orVar : a) {
                Class cls = z4 ? SearchPhotosFragment.class : SearchResultsFragment.class;
                int i = orVar.a;
                boolean z5 = orVar.b;
                int hashCode = new oq(trim, b, orVar, z4, intent.getBooleanExtra("follows", false), intent.getBooleanExtra("near", false)).hashCode();
                ow owVar = (ow) ((ow) ((ow) ((ow) ow.a(intent).b(2131363567)).c(2131363568)).h(true)).a(i).a(z5).a("is_saved", z2);
                if (a.size() > 1 || this.z) {
                    owVar.e(dimensionPixelSize);
                }
                if (z) {
                    if (!intent.hasExtra("search_id")) {
                        long nextLong = aj.a.nextLong();
                        this.s.put(Integer.valueOf(hashCode), Long.valueOf(nextLong));
                        this.p.j(nextLong);
                        owVar.a(nextLong);
                    }
                }
                this.m.add(a(cls, owVar.a(), a(i, z4), hashCode));
                if (i != 3 || z4) {
                    z4 = false;
                } else {
                    z4 = true;
                }
            }
            if (z) {
                if (intent.getBooleanExtra("in_back_stack", true)) {
                    this.o.push(intent);
                }
            }
            if (this.L == null) {
                this.E.a(new kz(this, X(), dimensionPixelSize));
                this.j = new km(this.m);
                HorizontalListView horizontalListView = (HorizontalListView) findViewById(2131952459);
                this.k = horizontalListView;
                horizontalListView.setVisibility(0);
                horizontalListView.setAdapter(this.j);
                horizontalListView.setOnItemClickListener(this);
                this.K = (ViewPager) findViewById(2131952457);
                this.L = new om(this, this, this.m, this.K, horizontalListView, this.j, this.E, new ei(this.E));
                this.K.setAdapter(this.L);
                return;
            }
            this.j.notifyDataSetChanged();
            this.L.notifyDataSetChanged();
            d(intent.getBooleanExtra("show_alternate", false));
        }
    }

    public void c() {
        TwitterListFragment e = e();
        if (e != null) {
            e.aJ();
        }
    }

    public void onBackPressed() {
        if (this.o.size() <= 1) {
            super.onBackPressed();
            return;
        }
        this.o.pop();
        startActivity((Intent) this.o.peek());
    }

    protected Intent B_() {
        Intent intent = getIntent();
        Integer num = (Integer) l.get(intent.getAction());
        if (num != null) {
            switch (num.intValue()) {
                case WireMessage.WIRE_CHAT /*1*/:
                case WireMessage.WIRE_CONTROL /*2*/:
                case WireMessage.WIRE_AUTH /*3*/:
                case mx.TwitterEditText_messageSize /*9*/:
                    return ac();
            }
        }
        return new Intent(intent.putExtra("in_back_stack", false));
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131953068) {
            J();
            N().b(this.D.getText());
        } else if (id == 2131953260) {
            bbu.a(new TwitterScribeLog(ab().g()).b("search:universal:filter_sheet:more:click"));
            b(false);
        } else if (id == 2131953262) {
            bbu.a(new TwitterScribeLog(ab().g()).b("search:universal:filter_sheet::apply"));
            b(e());
        } else if (id == 2131953263) {
            bbu.a(new TwitterScribeLog(ab().g()).b("search:universal:filter_sheet::cancel"));
            this.A.d();
            c(e());
        }
    }

    private TwitterScribeLog a(TwitterScribeAssociation twitterScribeAssociation, String str, String str2, String str3, String str4) {
        String a = TwitterScribeLog.a(twitterScribeAssociation, "search_box", str, str2);
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) new TwitterScribeLog(ab().g()).b(a);
        if (aj.b((CharSequence) str3)) {
            ((TwitterScribeLog) twitterScribeLog.d(str3)).g(str4);
        }
        return twitterScribeLog;
    }

    private void b(TwitterScribeAssociation twitterScribeAssociation, String str, String str2, String str3, String str4) {
        bbu.a(a(twitterScribeAssociation, str, str2, str3, str4));
    }

    private void a(TwitterScribeAssociation twitterScribeAssociation, String str, String str2, String str3, String str4, int i, long j) {
        bbw a = a(twitterScribeAssociation, str, str2, str3, str4);
        a.a(TwitterScribeItem.a(j, str4, 12, i));
        bbu.a(a);
    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        a(intent, true);
    }

    public boolean a(w wVar) {
        super.a(wVar);
        if (!io.a() && d.a("search_features_bad_search_report_enabled")) {
            wVar.a(2132017194);
        }
        wVar.a(2132017191);
        wVar.a(2132017198);
        return true;
    }

    private void a(boolean z) {
        this.v = z;
        DockLayout dockLayout = this.E;
        boolean z2 = !this.u && this.i;
        dockLayout.setTopVisible(z2);
        Y().h();
    }

    public int b(w wVar) {
        boolean z;
        boolean z2 = true;
        super.b(wVar);
        ToolBar j = wVar.j();
        bca a = j.a(2131953426);
        if (!this.v || this.u) {
            j.setCustomView(null);
        } else {
            this.D.setVisibility(0);
            j.setCustomView(this.D);
        }
        if (this.v && this.u && this.w) {
            z = true;
        } else {
            z = false;
        }
        a.b(z);
        if (j.a(2131953486) != null) {
            a = j.a(2131953486);
            if (!this.v || this.u) {
                z = false;
            } else {
                z = true;
            }
            a.b(z);
        }
        if (j.a(2131953473) != null) {
            a = j.a(2131953473);
            if (!this.v || this.u) {
                z = false;
            } else {
                z = true;
            }
            a.b(z);
        }
        if (ab().d()) {
            SearchFragment e = e();
            if (e != null) {
                a = j.a(2131953488);
                bca a2 = j.a(2131953487);
                boolean a3 = a(e.D());
                if (this.u || !this.v || d.a("search_alerts_enabled")) {
                    a.b(false);
                    a2.b(false);
                    c(a3);
                } else {
                    a.b(a3).c(a3);
                    bca b = a2.b(!a3);
                    if (a3) {
                        z2 = false;
                    }
                    b.c(z2);
                }
            }
        }
        return 2;
    }

    protected String n() {
        String I = e().I();
        if (I.length() <= 0 || (I.charAt(0) != '#' && I.charAt(0) != '$')) {
            return super.n();
        }
        return ' ' + I;
    }

    protected int[] d() {
        return new int[]{0, 0};
    }

    public boolean a(ac acVar) {
        long g = ab().g();
        String D = e().D();
        long j = 0;
        if (a(D)) {
            j = ((Long) this.r.get(D.toLowerCase())).longValue();
        }
        switch (acVar.a()) {
            case 2131953473:
                aq.a((Context) this, D, e().B());
                bbu.a(new TwitterScribeLog(g).b("search:universal::query:share"));
                return true;
            case 2131953486:
                c(e());
                b(this.t);
                bbu.a(new TwitterScribeLog(g).b("search:universal:filter_sheet::impression"));
                return true;
            case 2131953487:
                b(new com.twitter.library.api.search.b(this, ab(), D, j).h(0), 100);
                acVar.f(false).e(false);
                bbu.a(new TwitterScribeLog(g).b("search:universal::saved_search:add"));
                return true;
            case 2131953488:
                b(new com.twitter.library.api.search.b(this, ab(), D, j).h(1), mx.AppCompatTheme_buttonStyleSmall);
                acVar.f(false).e(false);
                bbu.a(new TwitterScribeLog(g).b("search:universal::saved_search:remove"));
                return true;
            case 2131953492:
                av a = av.a((Context) this);
                a.a(getResources().getString(2131364378), "Bad search for [" + e().D() + "] from Android", a(a), false).b(new f().a(i.b).a(new oh(this)));
                return true;
            default:
                return super.a(acVar);
        }
    }

    private String a(av avVar) {
        return "Thanks for submitting a bad search!\n\n" + "What (user, tweet, image, etc): \n\n" + "Expected results: \n\n" + "Actual results: \n\n\n\n" + "-------------------------\n\n" + "Request URL:\n" + e().H() + "\n\n" + avVar.c() + "\n\n" + an.a((Context) this).e;
    }

    private void b(boolean z) {
        if (com.twitter.config.c.a("periscope_search_enabled_android_4273", "enabled")) {
            this.A.findViewById(2131953250).setVisibility(0);
            this.A.findViewById(2131953251).setVisibility(0);
        }
        if (z) {
            this.a.a(false);
            this.A.b(2);
            this.A.b();
            return;
        }
        this.A.a(2);
        this.a.a(true);
        this.A.a();
    }

    private void a(SearchFragment searchFragment) {
        boolean z = true;
        if (searchFragment != null) {
            boolean z2;
            boolean z3;
            int i;
            boolean z4;
            this.b = searchFragment.q();
            this.c = searchFragment.L();
            this.d = searchFragment.J();
            this.a.a(this.b, this.c, this.d);
            this.w = searchFragment.O();
            searchFragment.I();
            CharSequence B = searchFragment.B();
            int i2 = this.b;
            boolean N = searchFragment.N();
            switch (i2) {
                case WireMessage.WIRE_CONTROL /*2*/:
                    z2 = false;
                    z3 = false;
                    i = 2131363910;
                    break;
                case WireMessage.WIRE_AUTH /*3*/:
                    z2 = false;
                    z3 = true;
                    i = 2131363912;
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    z2 = false;
                    z3 = true;
                    i = 2131363914;
                    break;
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    z2 = false;
                    z3 = false;
                    i = 2131363909;
                    break;
                case mx.TwitterEditText_characterCounterColor /*12*/:
                case mx.TwitterEditText_characterCounterMode /*13*/:
                    z2 = false;
                    z3 = true;
                    i = 2131363911;
                    break;
                default:
                    int i3 = this.c ? 2131363905 : this.d ? 2131363908 : 0;
                    z2 = true;
                    z3 = true;
                    i = i3;
                    break;
            }
            if (z3) {
                z4 = false;
            } else {
                z4 = true;
            }
            this.y = z4;
            ToolBar X = X();
            if (this.g && i2 == 3) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (d.a("search_alerts_enabled") && r3 && !N) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.z = z2;
            if (this.z || !z3 || (N && !r0)) {
                z = false;
            }
            this.i = z;
            this.E.setTopVisible(this.i);
            if (this.B != null) {
                if (this.z) {
                    this.B.setVisibility(0);
                    this.E.setTopView(this.B);
                } else {
                    this.B.setVisibility(8);
                }
            }
            if (N) {
                X.setCustomView(null);
                setTitle(B);
                if (i == 0 || this.g) {
                    b(null);
                } else {
                    k(i);
                }
            } else {
                this.D.setVisibility(0);
                X.setCustomView(this.D);
                this.D.setText(B);
                b(null);
            }
            X.setDisplayShowTitleEnabled(N);
            searchFragment.a(new ok(this, searchFragment));
            this.u = N;
            Y().h();
        }
    }

    private void f() {
        ViewStub viewStub = (ViewStub) findViewById(2131952731);
        if (viewStub != null) {
            try {
                this.B = (RelativeLayout) viewStub.inflate();
                this.C = (Switch) findViewById(2131953274);
                this.C.setOnCheckedChangeListener(this);
            } catch (InflateException e) {
                this.B = null;
                this.C = null;
            }
        }
    }

    private void c(boolean z) {
        if (this.C != null) {
            this.C.setOnCheckedChangeListener(null);
            this.C.setChecked(z);
            this.C.setOnCheckedChangeListener(this);
        }
    }

    private AlertDialog i() {
        String str = "SpikingHawk";
        CharSequence string = getString(2131364386);
        int indexOf = string.indexOf("SpikingHawk");
        int length = "SpikingHawk".length() + indexOf;
        CharSequence spannableString = new SpannableString(string);
        oi oiVar = new oi(this);
        View textView = new TextView(this);
        spannableString.setSpan(oiVar, indexOf, length, 0);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setPadding(30, 15, 30, 15);
        textView.setText(spannableString, BufferType.SPANNABLE);
        textView.setTextSize(0, getResources().getDimension(2131689540));
        return new Builder(this).setTitle(2131364387).setPositiveButton(2131364385, new oj(this)).setNegativeButton(2131361988, null).setView(textView).create();
    }

    public boolean a(String str) {
        return str != null && this.r.containsKey(str.toLowerCase());
    }

    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        boolean z = false;
        SearchFragment e = e();
        if (e != null) {
            this.x = true;
            boolean L = e.L();
            boolean J = e.J();
            int id = radioGroup.getId();
            if (id == 2131953246) {
                int i2;
                if (i == 2131953248) {
                    i2 = 3;
                } else if (i == 2131953249) {
                    i2 = 5;
                } else if (i == 2131953250) {
                    i2 = 12;
                } else if (i == 2131953252) {
                    i2 = 6;
                } else if (i == 2131953253) {
                    i2 = 2;
                }
                if (this.b != i2) {
                    this.b = i2;
                    this.e = true;
                }
                if (this.A.getPanelState() != 4) {
                    b(e);
                }
            } else if (id == 2131953254) {
                if (i == 2131953256) {
                    z = true;
                }
                if (L != z) {
                    this.c = z;
                    this.e = true;
                }
            } else if (id == 2131953257) {
                if (i == 2131953259) {
                    z = true;
                }
                if (J == z) {
                    return;
                }
                if (!z || bvs.a().d()) {
                    this.d = z;
                    this.e = true;
                    return;
                }
                this.M.a(1);
            }
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i == 1) {
            boolean a = lf.a().a("android.permission.ACCESS_FINE_LOCATION", strArr, iArr);
            if (this.d != a) {
                this.d = a;
                this.e = true;
            }
            this.a.a(this.b, this.c, this.d);
            if (!a) {
                c.b((Context) this);
                bvs.a().a(false);
            }
        }
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        SearchFragment e = e();
        if (e != null) {
            String D = e.D();
            long j = 0;
            if (a(D)) {
                j = ((Long) this.r.get(D.toLowerCase())).longValue();
            }
            x bVar = new com.twitter.library.api.search.b(this, ab(), D, j);
            long g = ab().g();
            if (z) {
                if (!e.F()) {
                    i().show();
                }
                bVar.h(0);
                b(bVar, 100);
                bbu.a(new TwitterScribeLog(g).b("search:universal::saved_search:add"));
                return;
            }
            bVar.h(1);
            b(bVar, mx.AppCompatTheme_buttonStyleSmall);
            bbu.a(new TwitterScribeLog(g).b("search:universal::saved_search:remove"));
        }
    }

    public void a(x xVar, int i) {
        boolean z = true;
        super.a(xVar, i);
        aa aaVar = (aa) xVar.l().b();
        boolean a = a(e().D());
        int i2 = i == 100 ? 2131363528 : 2131362400;
        int i3 = i == 100 ? 2131363529 : 2131362401;
        switch (i) {
            case mx.AppCompatTheme_buttonStyle /*100*/:
            case mx.AppCompatTheme_buttonStyleSmall /*101*/:
                if (aaVar.b()) {
                    Toast.makeText(this, i2, 0).show();
                    return;
                }
                Toast.makeText(this, i3, 0).show();
                if (this.z) {
                    c(a);
                    return;
                }
                ToolBar X = X();
                bca a2 = X.a(2131953488);
                bca a3 = X.a(2131953487);
                a2.b(a).c(a);
                bca b = a3.b(!a);
                if (a) {
                    z = false;
                }
                b.c(z);
            default:
        }
    }

    private static List<or> a(boolean z, int i, Intent intent) {
        if (z) {
            return n.b(new or(i, intent.getBooleanExtra("recent", false)));
        }
        switch (i) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
                return n.a(new or(0, false), new or(1, true));
            case WireMessage.WIRE_AUTH /*3*/:
                return n.a(new or(3, false), new or(3, false));
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return n.a(new or(5, false), new or(4, false));
            case mx.TwitterEditText_characterCounterColor /*12*/:
            case mx.TwitterEditText_characterCounterMode /*13*/:
                return n.a(new or(12, false), new or(13, true));
            default:
                return n.b(new or(i, intent.getBooleanExtra("recent", false)));
        }
    }

    @StringRes
    private int a(int i, boolean z) {
        switch (i) {
            case mx.View_android_theme /*0*/:
            case mx.TwitterEditText_characterCounterColor /*12*/:
                return 2131363573;
            case WireMessage.WIRE_CONTROL /*2*/:
                return 2131363910;
            case WireMessage.WIRE_AUTH /*3*/:
                return z ? 2131363571 : 2131363572;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 2131363575;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return 2131363574;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return 2131363909;
            default:
                return 2131363570;
        }
    }

    private void b(SearchFragment searchFragment) {
        boolean z = true;
        this.A.d();
        if (this.e) {
            boolean z2;
            boolean z3 = this.b == 1;
            if (this.b == 3 && this.j.a() == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            String b = e.b(searchFragment.D());
            String B = searchFragment.B();
            String b2 = e.b(searchFragment.E());
            int hashCode = new oq(b, b2, new or(this.b, z3), z2, this.c, this.d).hashCode();
            Intent putExtra = new Intent(this, SearchActivity.class).putExtra("query", b).putExtra("query_name", B).putExtra("search_type", this.b).putExtra("follows", this.c).putExtra("near", this.d).putExtra("terminal", this.u);
            String str = "photo_list";
            if (z2) {
                z = false;
            }
            putExtra = putExtra.putExtra(str, z).putExtra("in_back_stack", false).putExtra("q_source", b2);
            Long l = (Long) this.s.get(Integer.valueOf(hashCode));
            if (l != null) {
                putExtra.putExtra("search_id", l.longValue());
            }
            startActivity(putExtra);
            this.e = false;
        }
    }

    private void c(SearchFragment searchFragment) {
        this.b = searchFragment.q();
        this.c = searchFragment.L();
        this.d = searchFragment.J();
        this.a.a(this.b, this.c, this.d);
    }

    private void d(boolean z) {
        this.K.setCurrentItem(z ? 1 : 0);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        return new bu(this, ck.a(da.a, ab().g()), ol.a, "type=? AND latitude IS NULL AND longitude IS NULL", new String[]{String.valueOf(6)}, "query_id DESC, time ASC");
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        this.r.clear();
        if (cursor.moveToFirst()) {
            do {
                this.r.put(cursor.getString(2).toLowerCase(), Long.valueOf(cursor.getLong(3)));
            } while (cursor.moveToNext());
            Y().h();
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
        this.r.clear();
    }

    public AbsPagesAdapter g() {
        return this.L;
    }

    public Fragment a(at atVar) {
        return this.L.c(atVar);
    }

    private at a(Class<? extends BaseFragment> cls, g gVar, @StringRes int i, int i2) {
        return a((Class) cls, gVar, getString(i), i2);
    }

    @VisibleForTesting
    static at a(Class<? extends BaseFragment> cls, g gVar, String str, int i) {
        return new au(new Uri.Builder().scheme("twitter").authority("search").appendPath(cls.getName()).appendPath(String.valueOf(i)).build(), cls).a((CharSequence) str).a(gVar).a();
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (i == this.K.getCurrentItem()) {
            c();
        } else {
            this.K.setCurrentItem(i);
        }
    }

    public SearchFragment e() {
        if (this.L == null || this.K == null) {
            return null;
        }
        return (SearchFragment) a(this.L.a(this.K.getCurrentItem()));
    }
}
