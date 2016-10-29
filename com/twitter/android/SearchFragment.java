package com.twitter.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.recyclerview.BuildConfig;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AbsListView;
import com.twitter.android.client.az;
import com.twitter.android.events.b;
import com.twitter.app.common.base.g;
import com.twitter.app.common.inject.v;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.p;
import com.twitter.app.common.list.t;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.api.search.d;
import com.twitter.library.av.ai;
import com.twitter.library.client.navigation.z;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.service.x;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.util.aj;
import com.twitter.util.m;
import com.twitter.util.object.e;
import defpackage.bdl;
import defpackage.bvy;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class SearchFragment<T, A extends bdl<T>> extends TweetListFragment<T, A> {
    protected static final SparseArray<Long> b;
    protected String A;
    protected String B;
    protected String C;
    protected String D;
    protected String E;
    protected ou F;
    protected bvy G;
    private final Handler a;
    private final Runnable ab;
    private int ac;
    private boolean ad;
    private boolean ae;
    private boolean af;
    private SharedPreferences ag;
    private ot ah;
    protected boolean c;
    protected boolean d;
    protected boolean e;
    protected boolean f;
    protected boolean g;
    protected boolean h;
    protected boolean i;
    protected boolean j;
    protected boolean k;
    protected int l;
    protected int m;
    protected int n;
    protected int o;
    protected int p;
    protected int q;
    protected long r;
    protected long s;
    protected String t;
    protected String u;
    protected String v;
    protected String w;
    protected String x;
    protected String y;
    protected String z;

    protected abstract void O_();

    protected abstract String P();

    protected abstract void R();

    protected abstract void a(Context context);

    protected abstract void a(String str);

    protected abstract boolean a(int i);

    protected abstract int b(long j);

    public abstract int q();

    protected abstract boolean y();

    public SearchFragment() {
        this.q = -1;
        this.a = new Handler();
        this.ab = new os(this);
    }

    public /* synthetic */ h C() {
        return t();
    }

    public /* synthetic */ g o() {
        return t();
    }

    static {
        b = new SparseArray(4);
        b.put(0, Long.valueOf(10000));
        b.put(1, Long.valueOf(30000));
        b.put(2, Long.valueOf(60000));
        b.put(3, Long.valueOf(120000));
    }

    public ov t() {
        return ov.a(getArguments());
    }

    public void onCreate(Bundle bundle) {
        int i = -1;
        super.onCreate(bundle);
        if (bundle == null) {
            this.h = false;
            ov t = t();
            this.l = t.b("fetch_type");
            this.s = t.d();
            this.v = t.f("q_source");
            this.w = t.f("query_rewrite_id");
            this.x = t.f("data_lookup_id");
            this.ae = t.a("terminal", false);
            this.af = t.a("search_button", false);
            this.i = t.a("should_poll", true);
            this.j = t.a("should_refresh", false);
            this.y = t.f("seed_hashtag");
            this.t = t.f("query_name");
            this.z = t.f("timeline_type");
            this.A = t.f("experiments");
            this.B = t.f("scribe_page");
            this.d = t.a("follows", false);
            this.c = t.a("near", false);
            this.D = t.f("event_id");
            this.q = t.a("event_type", -1);
            this.C = t.f("notification_setting_key");
            if (aj.a(this.B)) {
                this.B = "search";
            }
            if (this.v == null && this.C != null) {
                String str = this.C;
                switch (str.hashCode()) {
                    case 956662491:
                        if (str.equals("event_parrot")) {
                            i = 0;
                            break;
                        }
                        break;
                }
                switch (i) {
                    case mx.View_android_theme /*0*/:
                        this.v = "evpa";
                        break;
                    default:
                        break;
                }
            }
        }
        this.s = bundle.getLong("search_id");
        this.h = bundle.getBoolean("is_last", false);
        this.v = bundle.getString("q_source");
        this.w = bundle.getString("query_rewrite_id");
        this.x = bundle.getString("data_lookup_id");
        this.n = bundle.getInt("polled_organic_count");
        this.o = bundle.getInt("polled_total_count");
        this.p = bundle.getInt("poll_count");
        this.i = bundle.getBoolean("should_poll", true);
        this.j = bundle.getBoolean("should_refresh", false);
        this.d = bundle.getBoolean("follows", false);
        this.c = bundle.getBoolean("near", false);
        this.ae = bundle.getBoolean("terminal", false);
        this.af = bundle.getBoolean("search_button", false);
        this.y = bundle.getString("seed_hashtag");
        this.t = bundle.getString("query_name");
        this.z = bundle.getString("timeline_type");
        this.A = bundle.getString("experiments");
        this.B = bundle.getString("scribe_page");
        this.D = bundle.getString("event_id");
        this.q = bundle.getInt("event_type", -1);
        this.C = bundle.getString("notification_setting_key");
        this.ad = bundle.getBoolean("is_saved", false);
        this.E = bundle.getString("request_url");
        this.g = aj.b(this.C);
        if (this.l == 0) {
            this.l = 3;
        }
        Context activity = getActivity();
        this.ag = activity.getSharedPreferences("search", 0);
        this.G = bvy.a(activity);
    }

    protected v b(LayoutInflater layoutInflater, Bundle bundle) {
        t tVar = new t();
        a(tVar);
        return az.a(layoutInflater, tVar, bundle);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        ap().a((p) this);
        return a;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("should_poll", this.i);
        bundle.putBoolean("should_refresh", this.j);
        bundle.putBoolean("follows", this.d);
        bundle.putBoolean("near", this.c);
        bundle.putBoolean("terminal", this.ae);
        bundle.putBoolean("search_button", this.af);
        bundle.putBoolean("is_last", this.h);
        bundle.putBoolean("is_saved", this.ad);
        bundle.putInt("polled_organic_count", this.n);
        bundle.putInt("polled_total_count", this.o);
        bundle.putInt("poll_count", this.p);
        bundle.putInt("event_type", this.q);
        bundle.putLong("search_id", this.s);
        bundle.putString("q_source", this.v);
        bundle.putString("query_rewrite_id", this.w);
        bundle.putString("data_lookup_id", this.x);
        bundle.putString("query_name", this.t);
        bundle.putString("seed_hashtag", this.y);
        bundle.putString("timeline_type", this.z);
        bundle.putString("experiments", this.A);
        bundle.putString("scribe_page", this.B);
        bundle.putString("notification_setting_key", this.C);
        bundle.putString("event_id", this.D);
        bundle.putString("request_url", this.E);
    }

    public void a() {
        super.a();
        ac_();
    }

    protected void d() {
        super.d();
        O_();
        if (this.j) {
            ac_();
        }
    }

    public void onStop() {
        this.a.removeCallbacks(this.ab);
        R();
        super.onStop();
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.d(tVar.d() ? 2130968866 : 2130968859);
    }

    protected void g() {
        if (this.n > 0) {
            m();
        } else {
            a(2);
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        ov t = t();
        String b = e.b(t.f("query"));
        this.u = b;
        CharSequence f = t.f("query_name");
        if (aj.b(f)) {
            this.t = f;
        } else {
            this.t = b;
        }
        this.ac = t.a("q_type", 0);
        this.m = t.b();
        this.e = t.c();
        this.f = t.a("realtime", false);
        this.d = t.a("follows", false);
        this.c = t.a("near", false);
        if (this.ah != null) {
            this.ah.a();
        }
    }

    public int a(long j) {
        if (an()) {
            return b(j) + ap().a.getHeaderViewsCount();
        }
        return 0;
    }

    protected void a(x xVar, int i, int i2) {
        Object obj = 1;
        super.a(xVar, i, i2);
        if (xVar instanceof d) {
            d dVar = (d) xVar;
            if (i == 1 && xVar.U()) {
                this.o += dVar.h();
                int s = dVar.s();
                if (s > 0) {
                    if (s != 1 || dVar.C() == null) {
                        obj = null;
                    }
                    this.n = s + this.n;
                    if (this.F != null && r1 == null) {
                        this.F.a(this.n);
                    }
                }
                this.p++;
                u();
                a(dVar.B());
            }
            this.r = dVar.t();
            this.E = dVar.A();
        }
    }

    protected void a(TwitterTopic twitterTopic) {
        z aE = aE();
        if (aE.a() && twitterTopic != null) {
            com.twitter.model.topic.g gVar = (com.twitter.model.topic.g) twitterTopic.a(com.twitter.model.topic.g.class);
            if (gVar != null && gVar.e != null) {
                aE.b(gVar.e);
            }
        }
    }

    protected void u() {
        if (this.i && y()) {
            long longValue = this.r > 0 ? this.r : ((Long) b.get(this.p, Long.valueOf(300000))).longValue();
            this.a.removeCallbacks(this.ab);
            this.a.postDelayed(this.ab, longValue);
        }
    }

    protected void v() {
        Editor edit = this.ag.edit();
        edit.putLong("refresh_time", m.b());
        edit.apply();
    }

    protected boolean w() {
        return this.j && m.b() > this.ag.getLong("refresh_time", 0) + 900000;
    }

    public void n() {
        ap().a.smoothScrollToPosition(0);
        if (this.o > 0) {
            m();
            a(ScribeLog.a(this.B, P(), "new_tweet_prompt", BuildConfig.VERSION_NAME, "click"));
        }
    }

    protected void m() {
        if (this.F != null) {
            this.F.a();
        }
        this.l = 4;
        r();
        this.p = 0;
        this.n = 0;
        this.o = 0;
    }

    private void r() {
        AsyncOperation asyncOperation = (com.twitter.library.api.search.e) new com.twitter.library.api.search.e(getActivity(), aT()).d(1);
        asyncOperation.a = this.s;
        this.aa.a(asyncOperation);
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        if (i2 != 0 && z) {
            if (i == 0) {
                ap().v();
            } else if (ap().h() > 0 && i > 0 && i + i2 >= i3) {
                h();
            }
        }
        return super.a(absListView, i, i2, i3, z);
    }

    protected void h() {
        if (ar() && !this.h && ap().h() < 400) {
            a(1);
        }
    }

    protected boolean z() {
        return ai.a();
    }

    public String B() {
        if (aj.b(this.t)) {
            return this.t;
        }
        return this.u;
    }

    public String D() {
        return this.u;
    }

    public String E() {
        return this.v;
    }

    public boolean F() {
        return this.k;
    }

    public String H() {
        return this.E;
    }

    public String I() {
        if (this.y != null) {
            return this.y;
        }
        return this.u;
    }

    public static String c(int i) {
        switch (i) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
                return "everything";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "people";
            case WireMessage.WIRE_AUTH /*3*/:
                return "photos";
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return "video";
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return "news";
            case ControlMessage.CONTROL_BAN /*8*/:
                return "eventsummary";
            case mx.TwitterEditText_messageSize /*9*/:
                return "geo";
            case mx.TwitterEditText_characterCounterColor /*12*/:
            case mx.TwitterEditText_characterCounterMode /*13*/:
                return "periscope";
            default:
                return null;
        }
    }

    public boolean J() {
        return this.c;
    }

    public boolean L() {
        return this.d;
    }

    protected int P_() {
        if (this.ad) {
            return 6;
        }
        return this.ac;
    }

    public boolean N() {
        return this.ae;
    }

    public boolean O() {
        return this.af;
    }

    public void a(ou ouVar) {
        this.F = ouVar;
        if (ouVar != null && this.n > 0) {
            ouVar.a(this.n);
        }
    }

    protected void a(d dVar) {
        b.a(dVar);
        if (aj.b(this.w)) {
            dVar.b(this.w);
        }
        if (aj.b(this.x)) {
            dVar.c(this.x);
        }
    }

    protected void a(ot otVar) {
        this.ah = otVar;
    }
}
