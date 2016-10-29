package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewConfiguration;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.Toast;
import bpg;
import cep;
import cfn;
import com.twitter.android.client.w;
import com.twitter.android.client.x;
import com.twitter.android.client.z;
import com.twitter.android.platform.DeviceStorageLowReceiver;
import com.twitter.android.util.ai;
import com.twitter.android.util.bx;
import com.twitter.app.common.inject.v;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.p;
import com.twitter.app.common.list.t;
import com.twitter.app.lists.ListTabActivity;
import com.twitter.app.main.MainActivity;
import com.twitter.library.api.activity.c;
import com.twitter.library.api.activity.e;
import com.twitter.library.api.activity.f;
import com.twitter.library.client.Session;
import com.twitter.library.client.bf;
import com.twitter.library.provider.a;
import com.twitter.library.scribe.ScribeAssociation;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.ap;
import com.twitter.model.core.aq;
import com.twitter.model.core.bg;
import com.twitter.model.core.bi;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.m;
import com.twitter.util.object.ObjectUtils;
import defpackage.aoz;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bdl;
import defpackage.cem;
import defpackage.cgu;
import java.util.Collection;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ActivityFragment extends TwitterListFragment<r, ji> implements jo, p {
    private final bf a;
    private final OnSharedPreferenceChangeListener b;
    private int c;
    private boolean d;
    private long e;
    private long f;
    private View g;
    private vr h;
    private boolean i;
    private boolean j;
    private FriendshipCache k;
    private SharedPreferences l;
    private q m;
    private boolean n;
    private ai o;
    private TweetView p;
    private boolean q;
    private boolean r;
    private DeviceStorageLowReceiver s;
    private boolean t;
    private boolean u;

    public ActivityFragment() {
        this.a = new p(this, null);
        this.b = new l(this);
        this.q = true;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        h C = C();
        this.c = C.a("activity_type", 0);
        this.d = C.a("activity_mention_only", false);
        a(c.a(this.c));
        if (bundle != null) {
            this.u = bundle.getBoolean("scribed_ref_event");
            this.c = bundle.getInt("state_activity_type");
            this.d = bundle.getBoolean("state_mentions_only");
        }
        Context activity = getActivity();
        this.l = PreferenceManager.getDefaultSharedPreferences(activity);
        this.l.registerOnSharedPreferenceChangeListener(this.b);
        Session aT = aT();
        this.o = new ai(activity, this.c, aT.g(), aT.e());
        this.r = bx.a(aT.f());
        if (this.r) {
            if (bundle != null) {
                this.t = bundle.getBoolean("is_device_storage_low");
            }
            this.s = new DeviceStorageLowReceiver();
            activity.registerReceiver(this.s, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW"));
        }
        this.q = C.a("should_fetch_new_data", true);
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        Context aI = aI();
        TwitterScribeAssociation aD = aD();
        cem snVar = new sn(this, aD);
        this.h = new vr(this, aD, null, new cep().c("tweet:::platform_photo_card:click").d("tweet:::platform_player_card:click").a(TwitterScribeLog.a(aD, "tweet", "avatar", "profile_click")).b(aD.a() + "::tweet:link:open_link").a());
        k ap = ap();
        ap.a(new tj(this, snVar, ap.a, ViewConfiguration.get(this.T).getScaledTouchSlop(), false));
        this.k = new FriendshipCache();
        bdl n = n();
        a((w) n);
        if (bundle != null) {
            long[] longArray = bundle.getLongArray("spinning_gap_ids");
            if (longArray != null) {
                for (long a : longArray) {
                    n.a(a);
                }
                n.notifyDataSetChanged();
            }
            if (bundle.getBoolean("state_show_stork", false)) {
                u();
            }
        }
        if (!this.l.getBoolean("show_stork_text", false)) {
            u();
            this.l.edit().putBoolean("show_stork_text", true).apply();
        }
        ap().a(n);
        this.m = new q(aI, aD);
    }

    public void a(Bundle bundle) {
        this.m.a(bundle);
    }

    private ji n() {
        return new ji(aI(), x.a(this.T).a(), this.h, this.k, this.o, aD(), this, p(), q());
    }

    private OnClickListener p() {
        return new m(this, aD());
    }

    private OnClickListener q() {
        return new n(this);
    }

    private void r() {
        TwitterScribeAssociation aD = aD();
        this.m.a(aT().g(), aD.a() + ":" + aD.b() + ":stream::results");
    }

    protected void a() {
        super.a();
        this.Z.a(this.a);
        ac_();
        v();
    }

    protected void d() {
        String str;
        super.d();
        if (as()) {
            z.a(getActivity()).c(aT().e());
        }
        h C = C();
        if (!C.a("ref_event") || this.u) {
            str = null;
        } else {
            String f = C.f("ref_event");
            this.u = true;
            str = f;
        }
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(TwitterScribeLog.a(aD(), BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "impression"))).a(str));
    }

    protected void e() {
        if (ai()) {
            r();
        }
        this.o.c();
        if (this.g != null) {
            this.g.setVisibility(8);
        }
        this.Z.b(this.a);
        super.e();
    }

    public void onStop() {
        super.onStop();
        if (this.p != null) {
            this.p.setHighlighted(false);
            this.p = null;
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.l.unregisterOnSharedPreferenceChangeListener(this.b);
        if (this.r) {
            Context activity = getActivity();
            activity.unregisterReceiver(this.s);
            this.aa.a(bx.a(activity, aT()));
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (ay()) {
            Collection c = ((ji) az()).c();
            if (!c.isEmpty()) {
                bundle.putLongArray("spinning_gap_ids", CollectionUtils.e(c));
            }
        }
        if (this.g != null) {
            bundle.putBoolean("state_show_stork", true);
        }
        if (this.s != null) {
            bundle.putBoolean("is_device_storage_low", t());
        }
        bundle.putBoolean("scribed_ref_event", this.u);
        bundle.putInt("state_activity_type", this.c);
        bundle.putBoolean("state_mentions_only", this.d);
    }

    protected aoz<cgu<r>> f() {
        return new g(getLoaderManager(), 0, new o(this));
    }

    protected void a(cgu<r> cgu_com_twitter_android_r) {
        super.a((cgu) cgu_com_twitter_android_r);
        ji jiVar = (ji) az();
        if (!this.j) {
            if (jiVar.isEmpty()) {
                a(3);
            }
            this.j = true;
        }
        if (this.i) {
            this.i = false;
        }
        if (this.g != null) {
            this.g.setVisibility(8);
            this.g = null;
        }
    }

    private static boolean a(TwitterUser twitterUser) {
        return "Twitter Tips".equals(twitterUser.d) && "TwitterTips".equals(twitterUser.k) && "https://pbs.twimg.com/profile_images/530872164480610304/ITjwbHBa_normal.png".equals(twitterUser.e);
    }

    protected void a(com.twitter.library.service.x xVar, int i, int i2) {
        if (a(xVar)) {
            super.a(xVar, i, i2);
            aa aaVar = (aa) xVar.l().b();
            ab N = xVar.N();
            if (i == 7778) {
                this.n = false;
                if (xVar.U()) {
                    this.o.a(N.c, aaVar.c.getLong("act_read_pos"));
                }
            } else if (N.a(aT())) {
                if (i == 7779) {
                    TweetView tweetView = (TweetView) ap().a.getEmptyView().findViewById(2131952440);
                    FragmentActivity activity = getActivity();
                    TwitterUser b = ((bpg) xVar).b();
                    if (!(!xVar.U() || activity == null || tweetView == null || b == null || a(b))) {
                        tweetView.setTweet(a(aT().f(), b));
                    }
                } else if (i == this.c && !xVar.U()) {
                    Toast.makeText(this.T, 2131361858, 1).show();
                }
                if (i2 == 6) {
                    ji jiVar = (ji) az();
                    jiVar.d();
                    jiVar.notifyDataSetChanged();
                }
            }
        }
    }

    protected void a(boolean z) {
        this.o.c();
        super.a(z);
    }

    protected void ac_() {
        super.ac_();
        if (ao() && ((ji) az()).isEmpty()) {
            a(3);
        }
    }

    protected void a(long j, long j2) {
        this.n = false;
        Session b = this.Z.b(j2);
        this.o.a(this.c, b.g(), b.e());
    }

    protected void a(v vVar) {
        super.a(vVar);
        k kVar = (k) vVar;
        kVar.a((p) this);
        Context activity = getActivity();
        View view = kVar.b;
        if ((activity instanceof RootNotificationActivity) && view != null) {
            TweetView tweetView = (TweetView) view.findViewById(2131952440);
            if (tweetView != null) {
                tweetView.setHideInlineActions(true);
                tweetView.setTweet(a(aT().f(), null));
                tweetView.setClickable(false);
                tweetView.setOnTweetViewClickListener(null);
                for (int i = 0; i < tweetView.getChildCount(); i++) {
                    View childAt = tweetView.getChildAt(i);
                    if (childAt.isClickable()) {
                        childAt.setClickable(false);
                    }
                }
                c(new bpg(activity, aT(), 1934802841), 7779, 9);
            }
        }
    }

    protected void a(t tVar) {
        super.a(tVar);
        if (getActivity() instanceof RootNotificationActivity) {
            tVar.f(2130969138);
        }
    }

    protected void g() {
        this.o.c();
        a(2);
    }

    protected void a(ListView listView, View view, int i, long j) {
        a(view);
        int positionForView = listView.getPositionForView(view);
        if (positionForView != -1) {
            r rVar = (r) ObjectUtils.a(listView.getItemAtPosition(positionForView));
            if (rVar != null && rVar.b.d == 8) {
                this.e = rVar.b.b;
                this.f = rVar.b.c;
                a(6, rVar.b.c);
            }
        }
    }

    private void a(View view) {
        Object tag = view.getTag();
        TwitterScribeAssociation aD = aD();
        if (tag instanceof jk) {
            jk jkVar = (jk) view.getTag();
            TweetView tweetView = jkVar.d;
            Tweet tweet = tweetView.getTweet();
            if (tweet != null) {
                String str;
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.Z.c().g()).a(getContext(), tweet, aD, null).b(TwitterScribeLog.a(aD, "tweet", "tweet", "click"))).a((ScribeAssociation) aD)).a(tweetView.getScribeItem()));
                if (jkVar.a == 2) {
                    str = "mention";
                } else {
                    str = "reply";
                }
                a(tweet, str);
            }
        } else if (tag instanceof jn) {
            jn jnVar = (jn) tag;
            if (jnVar.g != null) {
                a(jnVar.g, jnVar.f);
            } else if (jnVar.h != null) {
                a(jnVar.h.c, jnVar.h.k);
            }
            String str2 = "joined_twitter";
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.Z.c().g()).b(TwitterScribeLog.a(aD, "joined_twitter", jnVar.f, "click"))).a((ScribeAssociation) aD));
        } else if (tag instanceof TwitterUser) {
            r0 = (TwitterUser) tag;
            a(r0.c, r0.k);
        } else if (tag instanceof v) {
            v vVar = (v) tag;
            a aVar = vVar.l;
            if (aVar != null) {
                a(aVar.b, aVar.c, aVar.d, aVar.e);
            } else if (vVar.j == 5 && vVar.k.size() == 1) {
                r0 = (TwitterUser) CollectionUtils.b(vVar.k);
                a(r0.bf_(), r0.k);
            } else {
                a(vVar.i, vVar.j);
            }
        }
    }

    private void a(Tweet tweet, String str, int i, int i2, String str2, TwitterScribeItem twitterScribeItem) {
        TwitterScribeAssociation aD = aD();
        TwitterScribeAssociation twitterScribeAssociation = (TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(1)).a(tweet.t)).b(aD.a())).c(aD.b());
        if (str != null) {
            twitterScribeAssociation.d(str);
        }
        startActivity(new Intent(getActivity(), aw() ? RootTweetActivity.class : TweetActivity.class).putExtra("tw", tweet).putExtra("association", twitterScribeAssociation).putExtra("social_context_type", i).putExtra("social_context_user_count", i2).putExtra("social_context_user_name", str2).putExtra("scribe_item", twitterScribeItem));
    }

    private void a(Tweet tweet, String str) {
        a(tweet, str, 0, -1, null, null);
    }

    private void a(long j, String str) {
        Intent putExtra = new Intent(getActivity(), ProfileActivity.class).putExtra("user_id", j).putExtra("screen_name", str);
        putExtra.putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation(aD()).a(5)).a(this.Y));
        startActivity(putExtra);
    }

    private void a(long j, String str, String str2, long j2) {
        startActivity(new Intent(getActivity(), ListTabActivity.class).putExtra("list_id", j).putExtra("list_name", str).putExtra("list_fullname", str2).putExtra("creator_id", j2));
    }

    private void a(long j, int i) {
        Intent putExtra = new Intent(getActivity(), ActivityDetailActivity.class).putExtra("type", this.c).putExtra("event_type", i).putExtra("user_tag", j).putExtra("status_tag", j);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case mx.TwitterEditText_messageStyle /*10*/:
            case mx.TwitterEditText_characterCounterColor /*12*/:
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                putExtra.putExtra("title_res_id", 2131361859);
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                putExtra.putExtra("title_res_id", 2131361860);
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                putExtra.putExtra("title_res_id", 2131362716);
                break;
            case mx.TwitterEditText_messageSize /*9*/:
                putExtra.putExtra("title_res_id", 2131361860);
                break;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                putExtra.putExtra("title_res_id", 2131361860);
                break;
            case mx.TwitterButton_bounded /*17*/:
                putExtra.putExtra("title_res_id", 2131361860);
                break;
            default:
                bbn.a(new IllegalStateException("Tried to start ActivityDetailActivity for unsupported type: " + ((String) cfn.a.get(Integer.valueOf(i)))));
                return;
        }
        startActivity(putExtra);
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        if (i2 > 0 && i == 0) {
            this.o.b();
            if (getActivity() instanceof MainActivity) {
                ((MainActivity) getActivity()).a(MainActivity.d, 0, true);
            }
        }
        return false;
    }

    public boolean a(AbsListView absListView, int i) {
        if (i == 2 || i == 0) {
            boolean z;
            if (i == 2) {
                z = true;
            } else {
                z = false;
            }
            f(z);
        }
        return false;
    }

    protected void h() {
        boolean z = false;
        s sVar = (s) ObjectUtils.a(((ji) az()).h());
        if (this.r) {
            if (!t()) {
                z = true;
            }
        } else if (sVar.aU_() < 800) {
            z = true;
        }
        if (ar() && !sVar.r_() && r1 && !this.i) {
            a(1);
            this.i = true;
        }
    }

    private boolean t() {
        return this.s.a() || this.t;
    }

    protected boolean a(int i) {
        return a(i, 0);
    }

    private boolean a(int i, long j) {
        int i2 = 20;
        if (!a_(i)) {
            return false;
        }
        switch (i) {
            case WireMessage.WIRE_AUTH /*3*/:
                i2 = 0;
                break;
        }
        TwitterScribeAssociation aD = aD();
        c(new f(getActivity(), aT(), this.c).a(TwitterListFragment.a(aD.a(), aD.b(), i)).c(c(i)).b(d(i)).c(i2), this.c, i);
        if (i == 6 && j != 0) {
            ji jiVar = (ji) az();
            jiVar.a(j);
            jiVar.notifyDataSetChanged();
        }
        return true;
    }

    private long c(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
                return 0;
            case WireMessage.WIRE_CONTROL /*2*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                r rVar = (r) ((ji) az()).h().a(0);
                if (rVar != null) {
                    return rVar.b.b;
                }
                return 0;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return this.f;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
    }

    private long d(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                cgu h = ((ji) az()).h();
                if (!h.g()) {
                    r rVar = (r) h.a(h.aU_() - 1);
                    if (rVar != null) {
                        return rVar.b.c;
                    }
                }
                return 0;
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 0;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return this.e;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
    }

    protected String i() {
        return aD().a();
    }

    protected boolean j() {
        return this.q;
    }

    protected void k() {
        a(4);
    }

    private void u() {
        if (this.g == null) {
            View frameLayout = new FrameLayout(getActivity());
            this.g = LayoutInflater.from(getActivity()).inflate(2130968611, frameLayout, false);
            if (this.g != null) {
                frameLayout.addView(this.g);
                ap().a.addHeaderView(frameLayout);
            }
        }
    }

    private boolean a(com.twitter.library.service.x xVar) {
        ab N = xVar.N();
        return N == null || N.c == this.Y;
    }

    private void v() {
        if (!this.n) {
            this.n = true;
            c(new e(getActivity(), aT()), 7778, 8);
        }
    }

    private Tweet a(TwitterUser twitterUser, TwitterUser twitterUser2) {
        if (twitterUser == null) {
            return null;
        }
        String string = getString(2131363521, twitterUser.k);
        com.twitter.model.core.bf bfVar = new com.twitter.model.core.bf();
        if (twitterUser2 == null) {
            bfVar.d(1934802841);
            bfVar.h("TwitterTips");
            bfVar.c("Twitter Tips");
            bfVar.d("Twitter Tips");
            bfVar.g("https://pbs.twimg.com/profile_images/530872164480610304/ITjwbHBa_normal.png");
        } else {
            bfVar.d(twitterUser2.c);
            bfVar.h(twitterUser2.k);
            bfVar.c(twitterUser2.d);
            bfVar.d(twitterUser2.d);
            bfVar.g(twitterUser2.e);
        }
        return bfVar.a(string).a(m.b() - 60000).a((bg) new bi().a((ap) new aq().a(twitterUser.c).a(twitterUser.k).b(twitterUser.d).q()).q()).a();
    }

    public void a(int i, boolean z) {
        this.c = i;
        this.d = z;
        a(true);
    }

    public int l() {
        return this.c;
    }

    public boolean m() {
        return this.d;
    }
}
