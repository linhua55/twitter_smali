package com.twitter.android;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import aow;
import cen;
import cep;
import cgr;
import com.twitter.android.client.w;
import com.twitter.android.events.b;
import com.twitter.android.revenue.y;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.TopicView;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.m;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.k;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.search.d;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.db;
import com.twitter.library.scribe.ScribeAssociation;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.ScribeLog.SearchDetails;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.p;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.model.topic.l;
import com.twitter.refresh.widget.a;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import defpackage.ama;
import defpackage.aor;
import defpackage.aoz;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.boh;
import defpackage.bok;
import defpackage.ccu;
import defpackage.cgu;
import defpackage.cni;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class SearchResultsFragment extends SearchFragment<pk, oz> implements OnClickListener, OnItemClickListener, tl, xc, m {
    private static final SparseArray<String> a;
    private long ab;
    private long ac;
    private boolean ad;
    private boolean ae;
    private FriendshipCache af;
    private kr<View, Object> ag;
    private String ah;
    private boolean ai;
    private boolean aj;
    private String ak;
    private HashSet<Long> al;
    private List<Long> am;
    private vr an;
    private vr ao;
    private vr ap;
    private vr aq;
    private vr ar;
    private pj as;
    private final List<TwitterScribeItem> at;
    private List<TwitterScribeItem> au;
    private final Set<Long> av;
    private oz aw;

    public SearchResultsFragment() {
        this.ad = false;
        this.ae = true;
        this.at = new ArrayList();
        this.av = new HashSet();
    }

    static {
        a = new SparseArray(7);
        a.put(1, "universal_all");
        a.put(2, "users");
        a.put(3, "photo_tweets");
        a.put(4, "videos_vines");
        a.put(5, "videos_all");
        a.put(6, "news");
        a.put(9, "geo");
        a.put(13, "periscopes_recent");
        a.put(12, "periscopes_top");
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            if (bundle.containsKey("friendship_cache")) {
                this.af = (FriendshipCache) bundle.getSerializable("friendship_cache");
            } else {
                this.af = new FriendshipCache();
            }
            this.al = (HashSet) bundle.getSerializable("viewed_item_ids");
            this.ab = bundle.getLong("since");
            this.ac = bundle.getLong("until");
            this.aj = bundle.getBoolean("in_back_stack");
            this.ad = bundle.getBoolean("search_takeover");
            this.ae = bundle.getBoolean("event_header_available");
        } else {
            this.af = new FriendshipCache();
            this.al = new HashSet();
            h t = t();
            this.ab = t.a("since", 0);
            this.ac = t.a("until", 0);
            this.aj = t.a("in_back_stack");
            this.ad = t.a("search_takeover", false);
            this.ae = t.a("event_header_available", false);
            this.am = (List) t.i("pinnedTweetIds");
        }
        this.ag = new ph(this);
        this.as = new pj(this);
        kq kqVar = new kq(getFragmentManager(), aT().e(), this.C, this.D, this.u);
        this.aw = new oz(aI(), this.t, this.af, this.ag, this, this, kqVar, this.m, W(), this.D, this.al, this.C, bundle != null, this.aj, this.q, this);
    }

    public void a() {
        super.a();
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) getFragmentManager().findFragmentByTag("summary_dialog");
        if (promptDialogFragment != null) {
            promptDialogFragment.a((m) this);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (!this.af.a()) {
            bundle.putSerializable("friendship_cache", this.af);
        }
        bundle.putLong("since", this.ab);
        bundle.putLong("until", this.ac);
        bundle.putSerializable("viewed_item_ids", this.al);
        bundle.putBoolean("in_back_stack", this.aj);
        bundle.putBoolean("search_takeover", this.ad);
        bundle.putBoolean("event_header_available", this.ae);
        if (!this.ai) {
            this.aa.a(this.as);
        }
    }

    public void onDestroy() {
        if (W()) {
            StringBuilder stringBuilder = new StringBuilder();
            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.Y);
            String[] strArr = new String[1];
            strArr[0] = ScribeLog.a(stringBuilder, this.B, TwitterTopic.c(this.q), "time_nav", null, "close");
            bbu.a(((TwitterScribeLog) twitterScribeLog.b(strArr)).g(this.D));
        }
        this.aa.b(this.as);
        super.onDestroy();
    }

    protected void ac_() {
        super.ac_();
        if (!ao()) {
            return;
        }
        if (((oz) az()).isEmpty() || w()) {
            a(3);
        }
    }

    protected void g() {
        if (this.m == 2 && this.ab != 0) {
            return;
        }
        if (this.n > 0) {
            m();
        } else {
            a(2, this.s);
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.ah = t().f("scribe_context");
        a((w) this.aw);
        if (this.J != null) {
            this.J.a(this);
        }
        if (aD() == null) {
            V();
        }
        this.au = r();
        this.aw.a(b("tweet"), b("news"), b("highlight"), b("tweet_list_glance"), b("tweet_list_popular"));
        k ap = ap();
        ap.a(this.aw);
        ap.a.setContentDescription(getString(2131363588));
    }

    protected List<TwitterScribeItem> r() {
        if (this.g || W()) {
            return n.b(TwitterScribeItem.a(this.D, this.C, this.q));
        }
        return n.g();
    }

    protected boolean A() {
        return y.a();
    }

    private vr b(String str) {
        SearchDetails searchDetails = new SearchDetails(this.u, SearchFragment.c(this.m), str, this.d, this.c);
        boolean z = true;
        switch (str.hashCode()) {
            case -1876906170:
                if (str.equals("tweet_list_popular")) {
                    z = true;
                    break;
                }
                break;
            case -681210700:
                if (str.equals("highlight")) {
                    z = true;
                    break;
                }
                break;
            case -321432153:
                if (str.equals("tweet_list_glance")) {
                    z = true;
                    break;
                }
                break;
            case 3377875:
                if (str.equals("news")) {
                    z = true;
                    break;
                }
                break;
            case 110773873:
                if (str.equals("tweet")) {
                    z = false;
                    break;
                }
                break;
        }
        vr a;
        switch (z) {
            case mx.View_android_theme /*0*/:
                a = a(this.an, str, this.m == 3, null);
                this.an = a;
                return a;
            case WireMessage.WIRE_CHAT /*1*/:
                a = a(this.ao, str, false, null);
                this.ao = a;
                return a;
            case WireMessage.WIRE_CONTROL /*2*/:
                a = a(this.ap, str, false, null);
                this.ap = a;
                return a;
            case WireMessage.WIRE_AUTH /*3*/:
                a = a(this.aq, str, false, searchDetails);
                this.aq = a;
                return a;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a = a(this.ar, str, false, searchDetails);
                this.ar = a;
                return a;
            default:
                return null;
        }
    }

    private vr a(vr vrVar, String str, boolean z, SearchDetails searchDetails) {
        if (vrVar == null || vrVar.b() != z) {
            return a(str, z, searchDetails);
        }
        return vrVar;
    }

    private vr a(String str, boolean z, SearchDetails searchDetails) {
        StringBuilder stringBuilder = new StringBuilder();
        String str2 = this.B;
        String P = P();
        TwitterScribeAssociation aD = aD();
        String a = TwitterScribeLog.a(aD, str, "avatar", "profile_click");
        String a2 = ScribeLog.a(stringBuilder, str2, P, str, "link", "open_link");
        String a3 = ScribeLog.a(stringBuilder, str2, P, str, "platform_photo_card", "click");
        cen a4 = new cep().a(a).b(a2).c(a3).d(ScribeLog.a(stringBuilder, str2, P, str, "platform_player_card", "click")).a();
        if (z) {
            return new vr(this, aD, this.u, a4, new aow(ck.a(db.a, this.Y), ccu.a, "statuses_flags&1537 !=0 AND search_id=?", new String[]{String.valueOf(this.s)}, "type_id ASC, _id ASC"));
        }
        return new vr(this, aD, this.u, a4, new pi(this, aD, searchDetails, this.au));
    }

    private void b(boolean z) {
        if (!(this.aj && (z || N())) && getActivity() != null && (getActivity() instanceof pl) && an()) {
            ((pl) getActivity()).a(z, ap().a, this);
        }
    }

    protected aoz<cgu<pk>> f() {
        boolean z = true;
        b(true);
        Context aI = aI();
        if (!this.ad && (this.D == null || !(aI instanceof fl))) {
            z = false;
        }
        ama ama = new ama(aI, this.C, this.D, this.m, -1, this.ad, z, this.ae);
        return new aor(getLoaderManager(), 0, new pf(this), new pg(this, ama));
    }

    public void S() {
        super.S();
        b(false);
    }

    protected boolean y() {
        return this.m != 2 && this.ab == 0;
    }

    protected void a(Context context) {
        x a = new d(context, aT(), this.s, this.u, P_(), this.v, this.t, 1, this.A, false, io.a()).a(this.m, this.d, this.e, this.f).a(this.ab, this.ac).a(this.D, null);
        a.k("Not triggered by a user action.");
        a((d) a);
        if (this.c) {
            a.a(this.G.a());
        }
        c(a, 1, 4);
    }

    private void V() {
        if (this.m == 2) {
            a((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(this.Y)).b(this.B)).c("people"));
        } else {
            a((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(6)).b(this.B)).c(P()));
        }
    }

    @SuppressLint({"MissingSuperCall"})
    protected void a(cgu<pk> cgu_com_twitter_android_pk) {
        int i = this.l;
        if (this.ai) {
            if (i == 3) {
                V();
                ((oz) az()).a(b("tweet"), b("news"), b("highlight"), b("tweet_list_glance"), b("tweet_list_popular"));
            }
            u();
        }
        this.aw.a(((cgr) ObjectUtils.a((Object) cgu_com_twitter_android_pk)).a());
        a d = ap().d();
        b((cgu) cgu_com_twitter_android_pk);
        a(d);
        if (this.ai) {
            if (i == 2) {
                this.l = 3;
            }
        } else if (((oz) az()).isEmpty()) {
            a(3);
        }
        b(this.ad);
        if (this.V) {
            ax();
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (bundle != null) {
            b(false);
        }
    }

    protected boolean a(int i) {
        return a(i, this.s);
    }

    private boolean a(int i, long j) {
        if (!a_(i)) {
            return false;
        }
        int i2;
        Object obj;
        this.l = i;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                i2 = 2;
                obj = null;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                i2 = 1;
                obj = null;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                i2 = 0;
                obj = 1;
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                i2 = 1;
                obj = null;
                break;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.Y).b(TwitterListFragment.a(this.B, P(), i))).a(this.u, SearchFragment.c(this.m), this.d, this.c);
        x a = new d(getActivity(), aT(), j, this.u, P_(), this.v, this.t, i2, this.A, false, io.a()).a(this.m, this.d, this.e, this.f).a(this.ab, this.ac).a(this.D, null);
        a((d) a);
        if (obj != null) {
            a.a(this.am);
        }
        a.a("scribe_log", (Parcelable) twitterScribeLog);
        if (this.c) {
            a.a(this.G.a());
        }
        c(a, 2, i);
        return true;
    }

    protected void b(x xVar, int i, int i2) {
        super.b(xVar, i, i2);
        this.ai = false;
    }

    protected void a(x xVar, int i, int i2) {
        this.ai = true;
        View emptyView = ap().a.getEmptyView();
        emptyView.setVisibility(8);
        super.a(xVar, i, i2);
        if (i == 2) {
            d dVar = (d) xVar;
            aa aaVar = (aa) dVar.l().b();
            if (aaVar == null || !aaVar.b()) {
                a(emptyView);
            } else if (i2 == 3) {
                a(dVar, emptyView);
                this.ad = b(dVar);
                if (!this.ad) {
                    b(false);
                } else {
                    return;
                }
            } else if (dVar.h() == 0 && i2 == 1) {
                this.h = true;
            }
            this.k = dVar.g();
        }
    }

    void a(d dVar, View view) {
        this.D = dVar.x();
        a(dVar.B());
        if (dVar.h() == 0) {
            view.setVisibility(0);
            String a = ScribeLog.a(this.B, P(), "stream", null, "no_results");
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.Y).b(a)).a(this.u, SearchFragment.c(this.m), this.d, this.c));
        }
        if (this.j) {
            v();
        }
    }

    void a(View view) {
        Toast.makeText(this.T, 2131363580, 1).show();
        b(false);
        ((TextView) view.findViewById(2131951652)).setText(2131363580);
        view.setVisibility(0);
    }

    private boolean b(d dVar) {
        if (!(getActivity() instanceof pl)) {
            return false;
        }
        boolean z = this.ad;
        String y = dVar.y();
        if (y != null) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                TwitterTopic C = dVar.C();
                String z2 = dVar.z();
                if (b.a(y) && C == null) {
                    C = new TwitterTopic(new l(2, dVar.x(), false), this.t, null, this.u, this.u, null, null, null, 0, 0, 0, null, null, null, null, null);
                }
                return ((pl) activity).a(this.u, this.s, C, z2);
            }
        }
        return z;
    }

    protected int b(long j) {
        return ay() ? ((oz) az()).a(j) : 0;
    }

    public vt b(View view) {
        if (view.getTag() instanceof pb) {
            return ((pb) view.getTag()).a;
        }
        return null;
    }

    public void a(ListView listView, View view, int i, long j) {
        if (i >= ap().a.getHeaderViewsCount()) {
            String c = SearchFragment.c(this.m);
            pb pbVar = (pb) view.getTag();
            if (pbVar == null) {
                bbn.a(new bbl().a("view", view).a("position", Integer.valueOf(i)).a("view type", Integer.valueOf(((oz) az()).getItemViewType(i))));
            }
            pk pkVar = pbVar.m;
            StringBuilder stringBuilder = new StringBuilder();
            TwitterScribeAssociation aD = aD();
            switch (pkVar.b) {
                case mx.View_android_theme /*0*/:
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                case mx.TwitterEditText_messageSize /*9*/:
                case mx.TweetView_mediaTopMargin /*21*/:
                case mx.TweetView_mediaDivider /*23*/:
                    Tweet tweet = pbVar.a.d.getTweet();
                    int reasonIconResId = pbVar.a.d.getReasonIconResId();
                    Context applicationContext = getActivity().getApplicationContext();
                    startActivity(new Intent(getActivity(), TweetActivity.class).putExtra("tw", tweet).putExtra("reason", pbVar.a.d.getReason()).putExtra("reason_icon_id", reasonIconResId).putExtra("association", aD));
                    TwitterScribeLog a;
                    String[] strArr;
                    if (W()) {
                        a = new TwitterScribeLog(this.Y).a(applicationContext, tweet, aD, null);
                        strArr = new String[1];
                        strArr[0] = ScribeLog.a(stringBuilder, this.B, P(), "tweet", "tweet", "click");
                        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) a.b(strArr)).a((ScribeAssociation) aD)).a(this.au)).a(this.u, c, this.d, this.c));
                    } else if (pkVar.b == 0 || pkVar.b == 21) {
                        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.Y).a(applicationContext, tweet, aD, null).b(TwitterScribeLog.a(aD, "tweet", "tweet", "click"))).a((ScribeAssociation) aD)).a(this.au)).a(this.u, c, this.d, this.c));
                    } else if (pkVar.b == 23) {
                        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.Y).a(applicationContext, tweet, aD, null).b(this.B + ":cluster:tweet::click")).a((ScribeAssociation) aD)).a(this.au)).a(this.u, c, this.d, this.c));
                    } else {
                        a = new TwitterScribeLog(this.Y).a(applicationContext, tweet, aD, null);
                        strArr = new String[1];
                        strArr[0] = ScribeLog.a(stringBuilder, this.B, P(), "news", "tweet", "click");
                        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) a.b(strArr)).a((ScribeAssociation) aD)).a(this.au)).a(this.u, c, this.d, this.c));
                    }
                case WireMessage.WIRE_CHAT /*1*/:
                    String str;
                    UserView userView = (UserView) ((GroupedRowView) view).getChildAt(0);
                    long userId = userView.getUserId();
                    Intent putExtra = new Intent(getActivity(), ProfileActivity.class).putExtra("user_id", userId).putExtra("screen_name", userView.getUserName());
                    if (aD != null) {
                        putExtra.putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation(aD).a(5)).a(this.Y));
                    }
                    cni promotedContent = userView.getPromotedContent();
                    if (promotedContent != null) {
                        aH().a(PromotedEvent.SCREEN_NAME_CLICK, promotedContent);
                        putExtra.putExtra("pc", cni.a(promotedContent));
                    }
                    startActivity(putExtra);
                    if (this.m == 2) {
                        str = this.B + ":people:users:user:profile_click";
                    } else {
                        str = ScribeLog.a(stringBuilder, this.B, P(), null, "user", "profile_click");
                    }
                    bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.Y).a(userId, userView.getPromotedContent(), null, i).b(str)).a(this.au)).a((ScribeAssociation) aD)).a(this.u, c, this.d, this.c));
                case WireMessage.WIRE_CONTROL /*2*/:
                    startActivity(new Intent(getActivity(), SearchActivity.class).putExtra("query", this.u).putExtra("query_name", this.t).putExtra("q_source", "auto_spell_correct_revert_click"));
                    a(ScribeLog.a(stringBuilder, this.B, P(), "spelling_corrections", null, "revert_click"));
                case WireMessage.WIRE_AUTH /*3*/:
                    startActivity(new Intent(getActivity(), SearchActivity.class).putExtra("query", pkVar.h).putExtra("query_name", pkVar.h).putExtra("q_source", "related_query_click"));
                    a(ScribeLog.a(stringBuilder, this.B, P(), "related_queries", null, "search"));
                case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                case ControlMessage.CONTROL_BAN /*8*/:
                case mx.TwitterButton_labelMargin /*14*/:
                    a(ScribeLog.a(stringBuilder, this.B, P(), "user", "more", "search"));
                    startActivity(new Intent(getActivity(), SearchTerminalActivity.class).putExtra("query", this.u).putExtra("query_name", this.t).putExtra("search_type", 2).putExtra("terminal", true));
                case mx.TwitterEditText_maxCharacterCount /*11*/:
                case mx.TwitterButton_iconLayout /*19*/:
                    if (!W()) {
                        TopicView topicView = pbVar.j;
                        int topicType = topicView.getTopicType();
                        String topicId = topicView.getTopicId();
                        String seedHashtag = topicView.getSeedHashtag();
                        String c2 = TwitterTopic.c(topicType);
                        ScribeItem twitterScribeItem = new TwitterScribeItem();
                        twitterScribeItem.b = topicId;
                        twitterScribeItem.c = 16;
                        twitterScribeItem.x = c2;
                        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.Y);
                        String[] strArr2 = new String[1];
                        strArr2[0] = ScribeLog.a(this.B, "universal_top", c2, NotificationCompatApi21.CATEGORY_EVENT, "click");
                        twitterScribeLog.b(strArr2);
                        bbu.a(((TwitterScribeLog) twitterScribeLog.a(this.u, c, this.d, this.c)).a(twitterScribeItem));
                        new sm(this).a(topicId, topicType, this.t, this.u, seedHashtag, topicView.getTopicData());
                    }
                case mx.TwitterButton_strokeWidth /*15*/:
                    a(ScribeLog.a(stringBuilder, this.B, P(), "highlight", "more", "search"));
                    startActivity(new Intent(getActivity(), SearchTerminalActivity.class).putExtra("query", this.u).putExtra("query_name", this.t).putExtra("q_source", "highlight_tweet_drill_down_click").putExtra("since", pkVar.i.c).putExtra("until", pkVar.i.d).putExtra("terminal", true));
                case mx.TwitterButton_bounded /*17*/:
                    a(ScribeLog.a(stringBuilder, this.B, P(), "media_gallery", "more", "search"));
                    startActivity(new Intent(getActivity(), SearchTerminalActivity.class).putExtra("query", this.u).putExtra("query_name", this.t).putExtra("search_type", 3).putExtra("terminal", true));
                case mx.TweetView_mediaBottomMargin /*22*/:
                    Intent putExtra2 = new Intent(getActivity(), SearchTerminalActivity.class).putExtra("query", this.u).putExtra("terminal", true).putExtra("q_type", 1);
                    if (pkVar.j != null) {
                        putExtra2.putExtra("query_name", this.t).putExtra("follows", pkVar.j.b).putExtra("near", pkVar.j.c);
                        if (pkVar.j.b) {
                            a(ScribeLog.a(stringBuilder, this.B, P(), "follows_pivot", "more", "search"));
                        } else if (pkVar.j.c) {
                            a(ScribeLog.a(stringBuilder, this.B, P(), "nearby_pivot", "more", "search"));
                        }
                    }
                    startActivity(putExtra2);
                default:
            }
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        pk pkVar = (pk) adapterView.getTag();
        getActivity().startActivity(new Intent(getActivity(), GalleryActivity.class).setData(ck.a(db.a, this.Y)).putExtra("prj", ccu.a).putExtra("sel", "statuses_flags&1537 !=0 AND search_id=? AND type_id=?").putExtra("selArgs", new String[]{String.valueOf(this.s), String.valueOf(pkVar.c)}).putExtra("orderBy", "type_id ASC, _id ASC").putExtra("id", j).putExtra("context", 2));
        a(ScribeLog.a(this.B, P(), "media_gallery", "photo", "click"));
    }

    public void a(long j, cni cni, int i, xe xeVar) {
        String str;
        String str2;
        String P;
        Intent putExtra = new Intent(getActivity(), ProfileActivity.class).putExtra("user_id", j).putExtra("screen_name", xeVar.a);
        TwitterScribeAssociation aD = aD();
        if (aD != null) {
            putExtra.putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation(aD).a(5)).a(this.Y));
        }
        if (cni != null) {
            aH().a(PromotedEvent.SCREEN_NAME_CLICK, cni);
            putExtra.putExtra("pc", cni.a(cni));
        }
        startActivity(putExtra);
        if (W()) {
            str = "avatar";
            str2 = "user_rail";
            P = P();
        } else {
            str = "user";
            str2 = "user_gallery";
            P = P();
        }
        TwitterScribeLog a = new TwitterScribeLog(this.Y).a(j, cni, null, i);
        String[] strArr = new String[1];
        strArr[0] = ScribeLog.a(this.B, P, str2, str, "profile_click");
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) a.b(strArr)).a((ScribeAssociation) aD)).a(this.u, SearchFragment.c(this.m), this.d, this.c));
    }

    public int b(long j, cni cni, int i, xe xeVar) {
        FragmentActivity activity = getActivity();
        FriendshipCache friendshipCache = this.af;
        int i2 = xeVar.b;
        if (io.a()) {
            io.a(activity, 4, xeVar.a);
        } else {
            boolean k;
            String str;
            String P;
            String a;
            if (friendshipCache.a(j)) {
                k = friendshipCache.k(j);
            } else {
                k = p.a(i2);
            }
            if (W()) {
                str = "user_rail";
                P = P();
            } else {
                str = "user_gallery";
                P = P();
            }
            if (k) {
                i2 = p.b(i2, 1);
                this.aa.a(new bok(activity, aT(), j, cni));
                friendshipCache.c(j);
                a = ScribeLog.a(this.B, P, str, "user", "unfollow");
            } else {
                i2 = p.a(i2, 1);
                this.aa.a(new boh((Context) activity, aT(), j, cni));
                friendshipCache.b(j);
                a = ScribeLog.a(this.B, P, str, "user", "follow");
            }
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.Y).a(j, cni, null, i).b(a)).a(aD())).a(this.u, SearchFragment.c(this.m), this.d, this.c));
        }
        return i2;
    }

    public void T() {
        String P;
        String str;
        if (W()) {
            P = P();
            str = "user_rail";
        } else {
            P = P();
            str = "user_gallery";
        }
        a(ScribeLog.a(this.B, P, str, "more", "search"));
        startActivity(new Intent(getActivity(), SearchTerminalActivity.class).putExtra("query", this.u).putExtra("query_name", this.t).putExtra("search_type", 2).putExtra("terminal", true));
    }

    public void onClick(View view) {
        if (view.getId() == 2131953277) {
            this.ak = (String) view.getTag();
            bbu.a(new TwitterScribeLog(this.Y).b(this.B, P(), r0, "feedback", "click"));
            ((ec) ((ec) ((ec) ((ec) new ec(1).b(2131363583)).d(2131364205)).f(2131363158)).a(2131363585)).i().a((m) this).show(getFragmentManager(), "summary_dialog");
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 1) {
            String P = P();
            if (i2 == -1) {
                bbu.a(new TwitterScribeLog(this.Y).b(this.B, P, this.ak, "feedback", "accept"));
            } else if (i2 == -2) {
                bbu.a(new TwitterScribeLog(this.Y).b(this.B, P, this.ak, "feedback", "deny"));
            }
            Toast.makeText(getActivity(), 2131363584, 0).show();
        }
    }

    protected String P() {
        String str = (String) a.get(this.m);
        return str != null ? str : "universal_top";
    }

    protected String U() {
        if (W()) {
            return this.D;
        }
        return this.u;
    }

    public int q() {
        return this.m;
    }

    private boolean W() {
        return aj.b(this.D);
    }

    protected void a(String str) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.Y).i(this.ah)).b(str)).a(this.au)).a(U(), SearchFragment.c(this.m), this.d, this.c)).a(aD()));
    }

    protected void O_() {
        if (this.m == 2) {
            a(this.B + ":people:users::impression");
            return;
        }
        a(ScribeLog.a(this.B, P(), null, null, "impression"));
    }

    protected void R() {
        if (!this.at.isEmpty()) {
            String a;
            if (this.q == -1 || W()) {
                a = ScribeLog.a(this.B, P(), "stream", null, "results");
            } else {
                a = ScribeLog.a(this.B, "universal_top", TwitterTopic.c(this.q), NotificationCompatApi21.CATEGORY_EVENT, "results");
            }
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.Y).b(a)).a(U(), SearchFragment.c(this.m), this.d, this.c)).b(this.at));
            this.at.clear();
        }
    }
}
