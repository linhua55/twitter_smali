package com.twitter.app.users;

import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.DrawableRes;
import android.support.v4.app.Fragment;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v4.os.EnvironmentCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import bge;
import bgl;
import blt;
import bof;
import bou;
import bpf;
import cdk;
import com.twitter.android.FollowFlowController;
import com.twitter.android.ProfileActivity;
import com.twitter.android.RootTabbedFindPeopleActivity;
import com.twitter.android.bu;
import com.twitter.android.client.c;
import com.twitter.android.client.z;
import com.twitter.android.fi;
import com.twitter.android.hm;
import com.twitter.android.io;
import com.twitter.android.kr;
import com.twitter.android.mx;
import com.twitter.android.my;
import com.twitter.android.qk;
import com.twitter.android.ql;
import com.twitter.android.qx;
import com.twitter.android.util.am;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ScrollingHeaderListFragment;
import com.twitter.android.widget.dl;
import com.twitter.android.widget.do;
import com.twitter.android.widget.ec;
import com.twitter.android.widget.er;
import com.twitter.android.xo;
import com.twitter.android.xp;
import com.twitter.android.xs;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.m;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.k;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.n;
import com.twitter.library.client.Session;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dg;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.aq;
import com.twitter.library.util.l;
import com.twitter.library.widget.BaseUserView;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bcx;
import defpackage.bdl;
import defpackage.blu;
import defpackage.bmz;
import defpackage.bna;
import defpackage.bnb;
import defpackage.bnc;
import defpackage.boe;
import defpackage.boh;
import defpackage.boj;
import defpackage.bok;
import defpackage.bow;
import defpackage.bpj;
import defpackage.cbx;
import defpackage.cgu;
import defpackage.cni;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class UsersFragment extends ScrollingHeaderListFragment<Cursor, xs> implements LoaderCallbacks<Cursor>, OnClickListener, fi, kr<BaseUserView, cni>, qx, dl, m, e<UserView> {
    String[] A;
    String B;
    String C;
    String[] D;
    private long[] E;
    private String F;
    private String G;
    private List<TwitterScribeItem> H;
    private Set<Long> I;
    private int J;
    private int K;
    private boolean L;
    private boolean M;
    private final Set<String> a;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private ArrayList<TwitterUser> ae;
    private String af;
    private boolean ag;
    private boolean ah;
    private int ai;
    private int aj;
    private boolean ak;
    private boolean al;
    private boolean am;
    private x an;
    private int ao;
    private TextView ap;
    private boolean aq;
    private boolean ar;
    private boolean as;
    private boolean at;
    protected boolean b;
    protected int c;
    final Map<Long, Long> d;
    long e;
    String f;
    cni g;
    UserView h;
    int i;
    long j;
    boolean k;
    HashSet<Long> l;
    FriendshipCache m;
    HashMap<Long, Integer> n;
    v o;
    t p;
    er q;
    qk r;
    int s;
    int t;
    int u;
    boolean v;
    boolean w;
    int x;
    boolean y;
    Uri z;

    public UsersFragment() {
        this.b = true;
        this.d = new HashMap();
        this.k = true;
        this.l = new HashSet();
        this.p = new w(null);
        this.s = -1;
        this.a = new HashSet();
        this.K = 0;
        this.L = false;
        this.M = false;
        this.ab = false;
        this.ac = false;
        this.ai = 0;
        this.aj = 0;
    }

    public /* synthetic */ h C() {
        return L();
    }

    public /* synthetic */ g o() {
        return L();
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    Session M() {
        return this.Z.a(L().Q());
    }

    private boolean r() {
        return this.Z.d(M());
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        aU();
    }

    public y L() {
        return y.b(getArguments());
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        y L = L();
        this.t = L.n();
        this.ae = L.F();
        ba();
        do doVar = new do(getActivity(), aD());
        this.F = L.E();
        this.j = L.o();
        long[] z = L.z();
        if (z != null && z.length > 0) {
            this.E = z;
        }
        this.G = L.H();
        this.J = L.I();
        this.c = L.G();
        this.ad = L.J();
        this.am = L.K();
        this.ao = L.m();
        this.ar = L.N();
        this.as = L.O();
        this.af = L.P() == null ? super.i() : L.P();
        this.at = cbx.a();
        bc_();
        if (bundle != null) {
            this.u = bundle.getInt("state_load_flags");
            this.e = bundle.getLong("state_dialog_user");
            this.g = cni.a(bundle.getByteArray("state_dialog_pc"));
            this.f = (String) bundle.getSerializable("state_dialog_user_token");
            this.i = bundle.getInt("state_dialog_user_position");
            this.l = (HashSet) ObjectUtils.a(bundle.getSerializable("state_pending_follows"));
            this.K = bundle.getInt("state_lookup_complete_pages");
            this.L = bundle.getBoolean("state_lookup_complete");
            this.M = bundle.getBoolean("state_reverse_lookup_complete");
            this.ab = bundle.getBoolean("state_wtf_complete");
            this.ai = bundle.getInt("state_completed_components");
            this.aj = bundle.getInt("state_total_progress_components");
            this.E = bundle.getLongArray("state_user_ids");
            if (bundle.containsKey("state_friendship_cache")) {
                this.m = (FriendshipCache) bundle.getSerializable("state_friendship_cache");
            } else {
                this.m = new FriendshipCache();
            }
            if (bundle.containsKey("state_incoming_friendship_cache")) {
                this.n = (HashMap) bundle.getSerializable("state_incoming_friendship_cache");
            } else {
                this.n = new HashMap();
            }
            this.x = bundle.getInt("state_total_users");
            if ((this.t == 6 || this.t == 32) && bundle.containsKey("state_fetched_category_users")) {
                this.v = bundle.getBoolean("state_fetched_category_users");
            }
            if (bundle.containsKey("state_loader_initialized")) {
                this.ah = bundle.getBoolean("state_loader_initialized");
            }
            this.al = bundle.getBoolean("state_hide_contacts_import_cta");
            this.y = bundle.getBoolean("is_hidden", false);
            this.aq = bundle.getBoolean("fast_follow_visible", false);
            this.ag = bundle.getBoolean("data_was_fetched", false);
        } else {
            this.u = 0;
            this.m = L.D();
            if (this.m == null) {
                this.m = new FriendshipCache();
            }
            this.l = new HashSet();
            if (this.t == 18) {
                this.n = new HashMap();
            }
            this.al = L.C();
            this.y = L.L();
        }
        if (g(this.t)) {
            this.H = new ArrayList();
            this.I = new HashSet();
        }
        if (this.t == 28) {
            this.an = new x(this, null);
            this.aa.a(this.an);
        }
        if (bundle == null && !this.y) {
            B();
        }
    }

    protected void bc_() {
        if (this.t != 28 || V() != 0) {
            return;
        }
        if (this.at) {
            k(1);
        } else {
            k(3);
        }
    }

    protected String i() {
        return this.af;
    }

    private static boolean g(int i) {
        return i == 10 || i == 19 || i == 21 || i == 6 || i == 28 || i == 36 || i == 32;
    }

    private void aU() {
        this.ak = l.a(getActivity()).b();
    }

    private boolean aV() {
        return this.t == 21;
    }

    int N() {
        return this.x;
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View a = super.a(layoutInflater, bundle);
        k ap = ap();
        int u = L().u();
        if (ap.b != null) {
            TextView textView = (TextView) ap.b.findViewById(2131951652);
            if (textView != null) {
                int i;
                switch (u) {
                    case 2131362642:
                        i = 2131362642;
                        u = 2131364321;
                        break;
                    case 2131362648:
                        i = 2131362648;
                        u = 2131364319;
                        break;
                    default:
                        u = 0;
                        i = 0;
                        break;
                }
                if (i > 0 && u > 0) {
                    textView.setText(aq.a(new Object[]{aq.a(getActivity(), u, 2131886265)}, this.T.getString(i), "{{}}"));
                    textView.setMovementMethod(LinkMovementMethod.getInstance());
                }
            }
        }
        return a;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ListView listView = ap().a;
        listView.setHeaderDividersEnabled(false);
        listView.addHeaderView(v(), "UsersFragmentHeader", true);
    }

    protected ViewGroup v() {
        View view = (ViewGroup) LayoutInflater.from(getActivity()).inflate(2130969513, null);
        View findViewById = view.findViewById(2131952331);
        findViewById.setOnClickListener(this);
        if (this.al) {
            view.findViewById(2131952478).setVisibility(8);
            findViewById.setVisibility(8);
            view.findViewById(bcx.divider).setVisibility(8);
        }
        if (aV()) {
            a(view);
        } else if (L().B()) {
            findViewById.setVisibility(0);
        }
        return view;
    }

    private void a(View view) {
        if (aV()) {
            am a = com.twitter.android.util.aq.a(getActivity());
            View findViewById = view.findViewById(2131952331);
            View findViewById2 = view.findViewById(2131952478);
            TextView textView = (TextView) view.findViewById(2131952479);
            TextView textView2 = (TextView) view.findViewById(2131952480);
            Button button = (Button) view.findViewById(2131952481);
            view.findViewById(bcx.divider).setVisibility(0);
            if (this.ak && a.m()) {
                findViewById.setVisibility(0);
                findViewById2.setVisibility(8);
                return;
            }
            findViewById.setVisibility(8);
            findViewById2.setVisibility(0);
            button.setOnClickListener(this);
            textView.setText(2131362703);
            if (this.at) {
                textView2.setText(2131363535);
            } else {
                textView2.setText(a.m() ? 2131363535 : 2131363536);
            }
            button.setText(2131362312);
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        D();
        this.ap = (TextView) ap().a.findViewById(2131952646);
        if (this.ap != null && aW()) {
            this.ap.setText(getResources().getQuantityString(2131492918, this.ao, new Object[]{Integer.valueOf(this.ao)}));
            this.ap.setVisibility(this.aq ? 0 : 8);
        }
    }

    private boolean aW() {
        return this.ao > 0;
    }

    protected boolean y() {
        return (M().d() || this.U) && L().l();
    }

    @DrawableRes
    protected int O() {
        Session M = M();
        if (!M.d() || this.Y != M.g()) {
            return 0;
        }
        switch (this.t) {
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return 2130839188;
            case mx.TwitterButton_knockout /*18*/:
                return 2130837689;
            default:
                return 0;
        }
    }

    protected void H() {
        this.A = cdk.a;
        this.B = ap().a.getChoiceMode() != 0 ? "LOWER(users_username) ASC" : "_id ASC";
        switch (this.t) {
            case mx.View_android_theme /*0*/:
                this.z = ContentUris.withAppendedId(dg.h, this.Y);
                this.A = cdk.b;
            case WireMessage.WIRE_CHAT /*1*/:
                this.z = ContentUris.withAppendedId(dg.i, this.Y);
                this.A = cdk.b;
            case WireMessage.WIRE_CONTROL /*2*/:
                this.z = ContentUris.withAppendedId(dg.d, this.Y);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (this.j > 0 && this.Y > 0) {
                    this.z = ContentUris.withAppendedId(dg.c, this.Y);
                }
            case mx.UserView_actionButtonPaddingRight /*5*/:
                this.z = ContentUris.withAppendedId(dg.b, this.Y);
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                this.z = ContentUris.withAppendedId(dg.n, this.Y);
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                this.z = ContentUris.withAppendedId(dg.l, this.Y);
                this.B = "(users_friendship & 1) ASC, LOWER(users_name) ASC";
            case ControlMessage.CONTROL_BAN /*8*/:
                this.z = ContentUris.withAppendedId(dg.o, this.Y);
            case mx.TwitterEditText_messageStyle /*10*/:
                this.z = ContentUris.withAppendedId(dg.w, this.Y);
                this.A = cdk.b;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                this.z = ContentUris.withAppendedId(dg.q, this.Y);
            case mx.TwitterEditText_characterCounterColor /*12*/:
                this.z = ContentUris.withAppendedId(dg.r, this.Y);
            case mx.TwitterEditText_characterCounterMode /*13*/:
                this.z = ContentUris.withAppendedId(dg.p, this.Y);
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                this.z = ContentUris.withAppendedId(dg.m, this.Y);
                this.A = cdk.b;
                this.B = "users_friendship_time DESC";
            case mx.TwitterButton_knockout /*18*/:
                this.z = ContentUris.withAppendedId(dg.s, this.Y);
                if (aj.b(L().M())) {
                    this.B = String.format("CASE users_username WHEN \"%s\" THEN -1 ELSE LOWER(users_username) END ASC", new Object[]{L().M()});
                } else {
                    this.B = "LOWER(users_username) ASC";
                }
            case mx.TwitterButton_iconLayout /*19*/:
                this.z = ContentUris.withAppendedId(dg.t, this.Y);
                this.A = cdk.b;
            case mx.TweetView_mediaPlaceholderDrawable /*20*/:
                this.z = ContentUris.withAppendedId(dg.x, this.Y);
                this.A = cdk.b;
            case mx.TweetView_mediaTopMargin /*21*/:
                this.z = ContentUris.withAppendedId(dg.v, this.Y);
                this.A = cdk.b;
            case mx.TweetView_previewFlags /*26*/:
                this.z = ContentUris.withAppendedId(dg.f, this.Y);
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                this.z = ContentUris.withAppendedId(dg.u, this.Y);
                if (this.at) {
                    this.B = "LOWER(TRIM(users_name)) COLLATE UNICODE";
                } else {
                    this.B = "(users_friendship & 1) ASC, LOWER(users_name) ASC";
                }
            case mx.TweetView_tweetViewLayoutId /*29*/:
                this.z = ContentUris.withAppendedId(dg.j, this.Y);
                this.A = cdk.b;
            case mx.AppCompatTheme_actionModeFindDrawable /*37*/:
                this.z = ContentUris.withAppendedId(dg.e, this.Y);
            case mx.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                this.z = ContentUris.withAppendedId(dg.g, this.Y);
            case mx.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                this.z = ContentUris.withAppendedId(dg.z, this.Y).buildUpon().appendQueryParameter("ownerId", String.valueOf(this.Y)).build();
            default:
                this.z = ContentUris.withAppendedId(dg.k, this.Y);
        }
    }

    protected void D() {
        int i;
        H();
        if (this.c != -1) {
            this.z = this.z.buildUpon().appendQueryParameter("limit", Integer.toString(this.c)).build();
        }
        if (y()) {
            i = 2130837689;
        } else {
            i = O();
        }
        f_(i);
    }

    protected void f_(@DrawableRes int i) {
        Session M = M();
        Context activity = getActivity();
        long g = M().g();
        bdl a;
        switch (this.t) {
            case mx.View_android_theme /*0*/:
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                a = a(i, false);
                if (this.Y == g) {
                    a.a(true, aO());
                }
                a.a(this);
                this.q = new er(new BaseAdapter[]{a}, 1);
                ap().a(a, this.q);
            case WireMessage.WIRE_CHAT /*1*/:
            case mx.TweetView_tweetViewLayoutId /*29*/:
                bdl a2 = a(i, false);
                a2.a(this);
                TwitterUser f = M.f();
                if (f != null && f.c == this.Y) {
                    a2.a(true, aO());
                }
                if (f != null && this.t == 1 && f.c == this.Y && f.m) {
                    this.q = new er(new BaseAdapter[]{new qk(new ql(activity.getString(2131362709), new q().a(18).a(activity))), a2}, 1);
                    this.s = 0;
                    this.r = r3;
                } else {
                    this.q = new er(new BaseAdapter[]{a2}, 1);
                }
                ap().a(a2, this.q);
            case WireMessage.WIRE_CONTROL /*2*/:
            case mx.TweetView_previewFlags /*26*/:
            case mx.AppCompatTheme_actionModeFindDrawable /*37*/:
            case mx.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                a = p(i);
                a.b(true);
                a.a(true, aO());
                a.a(this);
                this.q = new er(new BaseAdapter[]{a}, 1);
                ap().a(a, this.q);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a = p(i);
                a.b(true);
                a.a(this);
                this.q = new er(new BaseAdapter[]{a}, 1);
                ap().a(a, this.q);
            case mx.TwitterEditText_messageStyle /*10*/:
            case mx.TwitterButton_iconLayout /*19*/:
            case mx.TweetView_mediaPlaceholderDrawable /*20*/:
            case mx.TweetView_mediaTopMargin /*21*/:
                a = a(i, true);
                a.a(this);
                this.q = new er(new BaseAdapter[]{a}, 1);
                ap().a(a, this.q);
            case mx.TwitterButton_knockout /*18*/:
                this.q = new er(new BaseAdapter[]{new hm(activity, new s(this, null), this.n)}, 1);
                ap().a(a, this.q);
            default:
                a = p(i);
                a.a(this);
                this.q = new er(new BaseAdapter[]{a}, 1);
                ap().a(a, this.q);
        }
    }

    public void a() {
        super.a();
        aU();
        if (this.z != null) {
            if (this.ad) {
                if (this.ah) {
                    c();
                } else {
                    h(3);
                }
            } else if (!ao()) {
                c();
            } else if (((xs) az()).isEmpty()) {
                h(3);
            }
        }
        TwitterUser f = M().f();
        if (f != null && f.c == this.Y && f.m && this.t == 1) {
            getLoaderManager().initLoader(1, null, this);
        }
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.an != null) {
            this.aa.b(this.an);
        }
    }

    public void onStop() {
        Session M = M();
        if (!this.d.isEmpty()) {
            for (Long longValue : this.d.keySet()) {
                c(new bpf(this.T, M, this.Y, this.t, this.j, longValue.longValue(), null), 18, 0);
            }
            this.d.clear();
        }
        if (ay()) {
            ((xs) az()).c();
        }
        if (g(this.t)) {
            aP();
        }
        super.onStop();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putLong("state_dialog_user", this.e);
        bundle.putInt("state_dialog_user_position", this.i);
        if (this.g != null) {
            bundle.putByteArray("state_dialog_pc", cni.a(this.g));
        }
        if (this.f != null) {
            bundle.putString("state_dialog_user_token", this.f);
        }
        if (this.l != null) {
            bundle.putSerializable("state_pending_follows", this.l);
        }
        if (this.E != null) {
            bundle.putLongArray("state_user_ids", this.E);
        }
        if (!this.m.a()) {
            bundle.putSerializable("state_friendship_cache", this.m);
        }
        if (!(this.n == null || this.n.isEmpty())) {
            bundle.putSerializable("state_incoming_friendship_cache", this.n);
        }
        if (this.t == 6 || this.t == 32) {
            bundle.putBoolean("state_fetched_category_users", this.v);
        }
        bundle.putInt("state_load_flags", this.u);
        if (this.ad) {
            bundle.putBoolean("state_loader_initialized", this.ah);
        }
        bundle.putInt("state_lookup_complete_pages", this.K);
        bundle.putBoolean("state_lookup_complete", this.L);
        bundle.putBoolean("state_reverse_lookup_complete", this.M);
        bundle.putBoolean("state_wtf_complete", this.ab);
        bundle.putInt("state_completed_components", this.ai);
        bundle.putInt("state_total_progress_components", this.aj);
        bundle.putInt("state_total_users", this.x);
        bundle.putBoolean("state_hide_contacts_import_cta", this.al);
        bundle.putBoolean("is_hidden", this.y);
        bundle.putBoolean("fast_follow_visible", this.aq);
        bundle.putBoolean("data_was_fetched", this.ag);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (-1 == i2 && intent != null && r()) {
                    long longExtra = intent.getLongExtra("user_id", 0);
                    if (longExtra > 0 && intent.hasExtra("friendship")) {
                        int intExtra = intent.getIntExtra("friendship", 0);
                        xs xsVar = (xs) az();
                        if (18 == this.t) {
                            Integer num = (Integer) this.n.get(Long.valueOf(longExtra));
                            if (num != null) {
                                switch (num.intValue()) {
                                    case WireMessage.WIRE_CHAT /*1*/:
                                        if (p.a(intExtra)) {
                                            this.n.put(Long.valueOf(longExtra), Integer.valueOf(3));
                                            xsVar.notifyDataSetChanged();
                                            return;
                                        }
                                        return;
                                    case WireMessage.WIRE_AUTH /*3*/:
                                        if (!p.a(intExtra)) {
                                            this.n.put(Long.valueOf(longExtra), Integer.valueOf(1));
                                            xsVar.notifyDataSetChanged();
                                            return;
                                        }
                                        return;
                                    default:
                                        return;
                                }
                            } else if (p.b(intExtra)) {
                                if (p.a(intExtra)) {
                                    this.n.put(Long.valueOf(longExtra), Integer.valueOf(3));
                                    xsVar.notifyDataSetChanged();
                                    return;
                                }
                                this.n.put(Long.valueOf(longExtra), Integer.valueOf(1));
                                xsVar.notifyDataSetChanged();
                                return;
                            } else if (!p.i(intExtra)) {
                                this.n.put(Long.valueOf(longExtra), Integer.valueOf(2));
                                xsVar.notifyDataSetChanged();
                                return;
                            } else {
                                return;
                            }
                        }
                        FriendshipCache friendshipCache = this.m;
                        if (!friendshipCache.a(longExtra, intExtra)) {
                            friendshipCache.b(longExtra, intExtra);
                            xsVar.notifyDataSetChanged();
                            this.w = true;
                        }
                    }
                }
            default:
        }
    }

    protected Loader<Cursor> q_() {
        int i = 1;
        if (this.j > 0) {
            this.C = "user_groups_type=? AND user_groups_tag=?";
            this.D = new String[]{Integer.toString(this.t), Long.toString(this.j)};
        } else if (this.E != null) {
            long[] jArr = this.E;
            int length = jArr.length;
            this.D = new String[length];
            StringBuilder append = new StringBuilder("user_id").append(" IN (?");
            this.D[0] = String.valueOf(jArr[0]);
            while (i < length) {
                append.append(", ?");
                this.D[i] = String.valueOf(jArr[i]);
                i++;
            }
            append.append(")");
            this.C = append.toString();
        } else {
            I();
        }
        return new bu(getActivity(), ck.a(this.z, M().g()), this.A, this.C, this.D, this.B).a(false);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return new bu(getActivity(), ck.a(ContentUris.withAppendedId(dg.s, this.Y), this.Y), cdk.a, null, null, null);
            case WireMessage.WIRE_CONTROL /*2*/:
                return new bu(getActivity(), ck.a(this.z, M().g()), this.A, "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?", new String[]{Long.toString(this.Y)}, this.B).a(false);
            default:
                return null;
        }
    }

    protected void I() {
        switch (this.t) {
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                this.C = "user_groups_type=? AND user_groups_tag=?";
                this.D = new String[]{String.valueOf(6), String.valueOf(this.F.hashCode())};
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                this.C = "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?";
                this.D = new String[]{Long.toString(this.Y)};
            case mx.TwitterButton_iconLayout /*19*/:
                if (this.m.a()) {
                    this.C = "(users_friendship IS NULL OR (users_friendship & 1 == 0)) AND user_groups_user_id!=?";
                    this.D = new String[]{Long.toString(this.Y)};
                    return;
                }
                this.C = null;
                this.D = null;
            default:
                this.C = null;
                this.D = null;
        }
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        switch (loader.getId()) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (cursor != null && this.r != null) {
                    this.r.a(this.s, cursor.getCount());
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (cursor != null) {
                    bbu.a(((TwitterScribeLog) new TwitterScribeLog(M().g()).b(i(), "follow_friends:not_followed::followable")).a((long) cursor.getCount()));
                }
            default:
        }
    }

    protected void a(cgu<Cursor> cgu_android_database_Cursor) {
        super.a((cgu) cgu_android_database_Cursor);
        if (!this.ag) {
            if (this.t == 7 || this.t == 28 || ((xs) az()).isEmpty() || ((this.t == 6 || this.t == 32) && !this.v)) {
                h(3);
            }
            this.ag = true;
        }
        E();
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    protected void ac_() {
        super.ac_();
        if (!ao()) {
            c();
        } else if (((xs) az()).isEmpty()) {
            h(3);
        }
    }

    protected Intent a(long j, CharSequence charSequence, cni cni) {
        Intent putExtra = new Intent(getActivity(), ProfileActivity.class).putExtra("user_id", j).putExtra("type", this.t);
        Parcelable aD = aD();
        if (aD != null) {
            putExtra.putExtra("association", aD);
        }
        if (aj.b(charSequence)) {
            int i;
            if (charSequence.charAt(0) == '@') {
                i = 1;
            } else {
                i = 0;
            }
            putExtra.putExtra("screen_name", charSequence.subSequence(i, charSequence.length()));
        }
        if (18 == this.t) {
            Integer num = (Integer) this.n.get(Long.valueOf(j));
            if (num != null) {
                switch (num.intValue()) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        putExtra.putExtra("friendship", 2);
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        putExtra.putExtra("friendship", 0);
                        break;
                    case WireMessage.WIRE_AUTH /*3*/:
                        putExtra.putExtra("friendship", 3);
                        break;
                }
            }
            putExtra.putExtra("friendship", 32);
        } else if (r()) {
            Serializable j2 = this.m.j(j);
            if (j2 != null) {
                putExtra.putExtra("friendship", j2);
            } else if (2 == this.t || 37 == this.t) {
                putExtra.putExtra("friendship", 4);
            } else if (26 == this.t || 38 == this.t) {
                putExtra.putExtra("friendship", AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
            }
        }
        if (cni != null) {
            putExtra.putExtra("pc", cni.a(cni));
        }
        return putExtra;
    }

    private void a(long j, int i, CharSequence charSequence, String str, cni cni, String str2, int i2) {
        c aH = aH();
        Intent a = a(j, charSequence, cni);
        if (cni != null) {
            aH.a(PromotedEvent.SCREEN_NAME_CLICK, cni);
        }
        b(j, i, cni, str, str2, i2);
        startActivityForResult(a, 1);
    }

    protected boolean w() {
        return false;
    }

    public void a(ListView listView, View view, int i, long j) {
        Object obj = 1;
        int headerViewsCount = listView.getHeaderViewsCount();
        int footerViewsCount = listView.getFooterViewsCount();
        Object obj2 = (this.q.c(i - headerViewsCount) == this.s || (headerViewsCount > 0 && i < headerViewsCount)) ? 1 : null;
        if (footerViewsCount <= 0 || i <= (listView.getCount() - footerViewsCount) - 1) {
            obj = null;
        }
        if (obj2 != null) {
            b(listView, view, i, j);
        } else if (obj != null) {
            c(listView, view, i, j);
        } else {
            a(view, i, j);
        }
    }

    protected void a(View view, int i, long j) {
        xp xpVar = (xp) view.getTag();
        a(j, i, xpVar.c.getUserName(), xpVar.g, xpVar.c.getPromotedContent(), xpVar.j, xpVar.i);
    }

    protected void b(ListView listView, View view, int i, long j) {
        Object itemAtPosition = listView.getItemAtPosition(i);
        if (itemAtPosition instanceof Intent) {
            startActivity((Intent) itemAtPosition);
        }
    }

    protected void c(ListView listView, View view, int i, long j) {
        Object itemAtPosition = listView.getItemAtPosition(i);
        if (itemAtPosition instanceof Intent) {
            startActivity((Intent) itemAtPosition);
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131952481 || id == 2131952331) {
            if (id == 2131952481) {
                c("find_friends");
            } else {
                c("find_more_friends");
            }
            FollowFlowController d = new FollowFlowController("who_to_follow").a(true).d(getContext());
            if (L().A()) {
                d.a(new Intent(getContext(), RootTabbedFindPeopleActivity.class));
            }
            d.c(getActivity());
            this.al = true;
        } else if (id == 2131952437) {
            if (ay()) {
                Cursor aA = aA();
                if (aA != null && aA.moveToFirst()) {
                    long[] jArr = new long[aA.getCount()];
                    FriendshipCache friendshipCache = this.m;
                    id = 0;
                    do {
                        Long valueOf = Long.valueOf(aA.getLong(2));
                        friendshipCache.b(valueOf.longValue(), aA.getInt(7) | 1);
                        jArr[id] = valueOf.longValue();
                        id++;
                    } while (aA.moveToNext());
                    a(M(), jArr, true);
                    ((xs) az()).notifyDataSetChanged();
                    aZ();
                }
                view.setEnabled(false);
            }
        } else if (id == 2131952332) {
            new FollowFlowController("discover").e(false).c(getActivity());
        }
    }

    private void c(String str) {
        String str2 = ":click";
        switch (this.t) {
            case mx.TwitterButton_iconLayout /*19*/:
                str2 = "welcome:who_to_follow::" + str + ":click";
                break;
            case mx.TweetView_mediaTopMargin /*21*/:
                str2 = "who_to_follow:contacts::" + str + ":click";
                break;
            default:
                return;
        }
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(M().g()).b(str2)).a(aD()));
    }

    private void a(UserView userView, int i) {
        if (i == bcx.action_button) {
            userView.r.toggle();
            io.a(getActivity(), 4, userView.getBestName().toString());
        }
    }

    public void a(UserView userView, long j, int i, int i2) {
        if (this.U) {
            a(userView, i);
        } else if (i == bcx.action_button) {
            a(userView, j, i2);
        } else if (i == bcx.block_button) {
            b(userView, j, i2);
        } else if (i == bcx.muted_item) {
            c(userView, j, i2);
        }
    }

    public void a(UserView userView, long j, int i) {
        if (this.t == 4) {
            this.e = j;
            this.i = i;
            ((ec) ((ec) ((ec) ((ec) new ec(1).a(2131364118)).b(2131364117)).d(2131364205)).f(2131363158)).i().a((Fragment) this).a(getActivity().getSupportFragmentManager());
            return;
        }
        xp xpVar = (xp) userView.getTag();
        if (userView.r.isChecked()) {
            userView.b(false);
            a(j, userView, i);
            return;
        }
        userView.b(true);
        a(j, userView.getPromotedContent(), xpVar, i);
    }

    public void b(UserView userView, long j, int i) {
        xp xpVar = (xp) userView.getTag();
        if (userView.s.isChecked()) {
            c(j, userView.getPromotedContent(), xpVar, i);
            if (!aN()) {
                userView.s.setVisibility(8);
                userView.r.setVisibility(0);
                return;
            }
            return;
        }
        b(j, userView.getPromotedContent(), xpVar, i);
    }

    public void c(UserView userView, long j, int i) {
        xp xpVar = (xp) userView.getTag();
        boolean b = userView.b();
        if (b) {
            e(j, userView.getPromotedContent(), xpVar, i);
        } else {
            d(j, userView.getPromotedContent(), xpVar, i);
        }
        userView.a(!b, aO());
    }

    private void a(long j, UserView userView, int i) {
        xp xpVar = (xp) userView.getTag();
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) ((ec) ((ec) ((ec) ((ec) new ec(3).a(getResources().getString(2131364091))).a(getResources().getString(2131364093, new Object[]{userView.getBestName()}))).d(2131364205)).f(2131363158)).i();
        this.e = j;
        this.g = userView.getPromotedContent();
        if (xpVar != null) {
            this.f = xpVar.g;
        }
        this.h = userView;
        this.i = i;
        promptDialogFragment.a((Fragment) this).a(getActivity().getSupportFragmentManager());
    }

    void a(long j, String str, cni cni, xp xpVar, int i) {
        Object obj = null;
        if (R()) {
            b(j);
            obj = 1;
        } else if (!this.l.remove(Long.valueOf(j))) {
            obj = 1;
        }
        if (obj != null) {
            c(new bok(getActivity(), M(), j, cni), 11, 0);
        }
        this.m.c(j);
        this.p.s();
        a(j, i, cni, str, "unfollow", xpVar != null ? xpVar.j : null, xpVar != null ? xpVar.i : -1);
        this.w = true;
    }

    private void a(long j, cni cni, xp xpVar, int i) {
        long j2 = xpVar.d;
        String str = xpVar.g;
        int i2 = xpVar.f;
        if (R()) {
            this.d.put(Long.valueOf(j), Long.valueOf(j2));
        }
        c(new boh(getActivity(), M(), j, cni), 9, 0);
        this.m.b(j);
        this.p.s();
        a(j, i, cni, str, "follow", xpVar.j, xpVar.i);
        if (p.b(i2)) {
            a(j, i, cni, str, "follow_back", xpVar.j, xpVar.i);
        }
        this.w = true;
    }

    private void b(long j, cni cni, xp xpVar, int i) {
        String str = xpVar.g;
        c(new bmz(getActivity(), M(), j, cni, 1), 20, 0);
        this.m.h(j);
        a(j, i, cni, str, "block", xpVar.j, xpVar.i);
        this.w = true;
    }

    private void c(long j, cni cni, xp xpVar, int i) {
        String str = xpVar.g;
        c(new bmz(getActivity(), M(), j, cni, 3), 21, 0);
        this.m.i(j);
        a(j, i, cni, str, "unblock", xpVar.j, xpVar.i);
        this.w = true;
    }

    private void d(long j, cni cni, xp xpVar, int i) {
        String str = xpVar.g;
        x bna = new bna(getActivity(), M());
        bna.a(j);
        c(bna, 24, 0);
        this.m.f(j);
        a(j, i, cni, str, "mute", xpVar.j, xpVar.i);
        this.w = true;
    }

    private void e(long j, cni cni, xp xpVar, int i) {
        String str = xpVar.g;
        x bnb = new bnb(getActivity(), M());
        bnb.a(j);
        c(bnb, 25, 0);
        this.m.g(j);
        a(j, i, cni, str, "unmute", xpVar.j, xpVar.i);
        this.w = true;
    }

    public void a(BaseUserView baseUserView, cni cni, Bundle bundle) {
        Long valueOf = Long.valueOf(baseUserView.getUserId());
        xp xpVar = (xp) baseUserView.getTag();
        if (xpVar != null && g(xpVar.i) && this.I.add(valueOf)) {
            TwitterScribeItem a = TwitterScribeItem.a(valueOf.longValue(), baseUserView.getPromotedContent(), xpVar.g, null);
            a.g = bundle.getInt("position") + 1;
            this.H.add(a);
        }
        if (cni != null && this.a.add(cni.c)) {
            aH().a(PromotedEvent.IMPRESSION, cni);
        }
        if (baseUserView instanceof UserView) {
            UserView userView = (UserView) baseUserView;
            if (userView.r != null && userView.getUserId() == this.e) {
                this.h = userView;
            }
        }
    }

    protected void h() {
        Cursor aA = aA();
        if (aA != null && aA.moveToLast()) {
            if (ar() && aA.getInt(1) == 0 && aA.getCount() < 400 && ((this.t != 19 || this.k) && h(1))) {
                b("get_older");
            }
            if (this.ap != null && aW()) {
                if (aA.getInt(1) == 1) {
                    this.ap.setVisibility(0);
                    this.aq = true;
                    return;
                }
                this.ap.setVisibility(8);
                this.aq = false;
            }
        }
    }

    public void g() {
        h(2);
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    c(new blu(getActivity().getApplicationContext(), M(), this.Y, this.e, this.j, 4), 8, 0);
                    bbu.a(new TwitterScribeLog(M().g()).b("me:lists:list:people:remove"));
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 == -1) {
                    getActivity().finish();
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (i2 == -1) {
                    a(this.e, this.f, this.g, this.h != null ? (xp) this.h.getTag() : null, this.i);
                    if (this.h != null && this.h.r != null) {
                        this.h.r.setChecked(false);
                        this.h.b(true);
                    }
                }
            default:
        }
    }

    public FriendshipCache P() {
        return this.m;
    }

    public void G() {
        super.G();
        b("get_newer");
    }

    public void b(boolean z) {
        a(false);
        if (z && !this.L) {
            u();
        }
    }

    protected void u() {
        this.L = true;
        aQ();
    }

    private void d(String str) {
        if (!l(8)) {
            c(new bge(getContext(), M(), str), 27, 8);
        }
    }

    private boolean aX() {
        boolean z = false;
        if ((this.u & 1) == 0) {
            T();
            this.u |= 1;
            z = true;
        } else {
            this.M = true;
            k(V() - 1);
        }
        if (aH().b()) {
            return true;
        }
        b(true);
        return z;
    }

    protected boolean h(int i) {
        return !l(i) && g_(i);
    }

    protected boolean g_(int i) {
        boolean z = false;
        bou bou;
        switch (this.t) {
            case WireMessage.WIRE_CHAT /*1*/:
                c(new boe(getActivity(), M(), 1).a(this.G, this.Y).c(i(i)), 3, i);
                c(new bow(getActivity(), M(), i(i)), 1, i);
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                c(new boe(getActivity(), M(), 2).c(i(i)), 19, i);
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                c(new blt(getActivity(), M(), this.t, this.Y, this.j, i(i)), 7, i);
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                c(new blt(getActivity(), M(), this.t, this.Y, this.j, i(i)), 7, i);
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (this.ae == null) {
                    c(new n(getActivity(), M(), this.Y, this.F, -1), 15, i);
                    break;
                }
                new u(this, getActivity(), this.ae, null).execute(new Void[0]);
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                if (i == 3) {
                    aX();
                    break;
                }
                return false;
            case mx.TwitterEditText_messageStyle /*10*/:
            case mx.TweetView_mediaPlaceholderDrawable /*20*/:
                bou = new bou(getActivity(), M(), this.t);
                bou.c = 0;
                bou.j = 6;
                bou.b = this.Y;
                c(bou, 6, i);
                break;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
            case mx.TwitterEditText_characterCounterColor /*12*/:
                bof bof = new bof(getActivity(), M());
                bof.a.a(this.E).a(this.t).a(this.j);
                c(bof, 14, i);
                break;
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                c(new boe(getActivity(), M(), 16).a(this.G, this.Y).c(i(i)), 5, i);
                break;
            case mx.TwitterButton_knockout /*18*/:
                c(new bow(getActivity(), M(), i(i)), 1, i);
                break;
            case mx.TwitterButton_iconLayout /*19*/:
            case mx.TweetView_mediaTopMargin /*21*/:
                bou = new bou(getActivity(), M(), this.t);
                bou.c = i(i);
                bou.j = this.c;
                if (i == 1) {
                    z = true;
                }
                bou.i = c(z);
                c(bou, 6, i);
                break;
            case mx.TweetView_previewFlags /*26*/:
                c(new boe(getActivity(), M(), 26).c(i(i)), 23, i);
                break;
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                if (aY()) {
                    E();
                    return false;
                }
                boolean z2;
                if (!this.at) {
                    if ((this.u & 2) == 0) {
                        q(i);
                        this.u |= 2;
                        z2 = true;
                        if (this.at) {
                            d(null);
                        }
                        if (i == 3) {
                            if (!aX() || r1) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        }
                        if (!z2) {
                            E();
                            return false;
                        }
                    }
                    this.ab = true;
                    k(V() - 1);
                }
                z2 = false;
                if (this.at) {
                    d(null);
                }
                if (i == 3) {
                    if (aX()) {
                    }
                    z2 = true;
                }
                if (z2) {
                    E();
                    return false;
                }
                break;
            case mx.TweetView_tweetViewLayoutId /*29*/:
                c(new boe(getActivity(), M(), 29).a(this.G, this.Y).c(i(i)), 13, i);
                break;
            case mx.AppCompatTheme_actionModeFindDrawable /*37*/:
                c(new boe(getActivity(), M(), 37).c(i(i)), 22, i);
                break;
            case mx.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                c(new boe(getActivity(), M(), 38).c(i(i)), 26, i);
                break;
            default:
                c(new boe(getActivity(), M(), 0).a(this.G, this.Y).c(i(i)), 4, i);
                break;
        }
        return true;
    }

    protected int i(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                Cursor aA = aA();
                if (aA == null || aA.getCount() <= 0) {
                    return 0;
                }
                return 1;
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                return 0;
            default:
                throw new IllegalArgumentException("Invalid fetch type: " + i);
        }
    }

    protected long[] c(boolean z) {
        Collection hashSet = new HashSet();
        if (z) {
            Cursor aA = aA();
            if (aA != null && aA.moveToFirst()) {
                do {
                    hashSet.add(Long.valueOf(aA.getLong(2)));
                } while (aA.moveToNext());
            }
        }
        hashSet.addAll(this.l);
        return CollectionUtils.e(hashSet);
    }

    Long b(long j) {
        ((xs) az()).b(j);
        return (Long) this.d.remove(Long.valueOf(j));
    }

    boolean R() {
        return this.t == 10 || this.t == 20 || this.t == 19;
    }

    public void T() {
        if (this.at || !ad() || this.ac || l(7)) {
            this.M = true;
            k(V() - 1);
            return;
        }
        c(new bgl(getActivity(), M()), 10, 7);
    }

    void a(v vVar) {
        this.o = vVar;
    }

    public void a(t tVar) {
        this.p = tVar;
    }

    public int U() {
        return this.l.size();
    }

    public void m() {
        this.y = false;
        ((xs) az()).notifyDataSetChanged();
        B();
    }

    public void n() {
        this.y = true;
    }

    protected boolean j(int i) {
        if (this.ah || !this.ad || i != 200) {
            return false;
        }
        this.ah = true;
        c();
        return true;
    }

    protected void E() {
        if (ad()) {
            this.x = F();
            if (this.o != null && ay() && ao()) {
                this.o.e();
            }
        }
    }

    protected int F() {
        return ((xs) az()).getCount();
    }

    private void a(x xVar) {
        j(((aa) xVar.l().b()).d());
        Bundle bundle = xVar.o;
        int i = bundle.getInt("count");
        int i2 = bundle.getInt("num_users");
        if (i > 0) {
            this.ac = true;
        }
        a(false);
        if (!this.M) {
            this.M = true;
            aQ();
        }
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(M().g()).b(i(), "follow_friends::reverse_lookup:count")).a((long) i2));
    }

    private void q(int i) {
        bou bou = new bou(getActivity(), M(), 19);
        bou.c = i(i);
        bou.j = 100;
        bou.i = c(true);
        c(bou, 6, i);
    }

    public void aW_() {
        Cursor aA = aA();
        if (aA != null && aA.moveToFirst()) {
            FriendshipCache friendshipCache = this.m;
            do {
                friendshipCache.b(Long.valueOf(aA.getLong(2)).longValue(), p.a(aA.getInt(7), 1));
            } while (aA.moveToNext());
            ((xs) az()).notifyDataSetChanged();
        }
    }

    public void aX_() {
        j(200);
        a(false);
    }

    public void aY_() {
        Cursor aA = aA();
        if (aA != null && aA.moveToFirst()) {
            FriendshipCache friendshipCache = this.m;
            do {
                friendshipCache.c(Long.valueOf(aA.getLong(2)).longValue());
            } while (aA.moveToNext());
            ((xs) az()).notifyDataSetChanged();
        }
    }

    public void aZ_() {
        j(200);
        a(false);
    }

    public int a_(int i, int i2) {
        return i > 0 ? 1 : 0;
    }

    public void a(View view, int i, int i2, int i3) {
    }

    public int V() {
        return this.aj;
    }

    public void k(int i) {
        this.aj = i;
    }

    public boolean W() {
        return this.aj > 0;
    }

    public int X() {
        return this.ai;
    }

    public boolean Y() {
        return this.L;
    }

    private boolean aY() {
        return this.ai == this.aj;
    }

    private void aZ() {
        if (this.t == 7 || this.t == 28) {
            bbu.a(new TwitterScribeLog(M().g()).b(i(), "follow_friends:::follow_all"));
        }
    }

    String e(int i) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                return "following:following:";
            case WireMessage.WIRE_CHAT /*1*/:
                return "followers:followers:";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "blocked::";
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (this.ae != null) {
                    return "explore_email:category:";
                }
                return "category::";
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                return i() + ":follow_friends:";
            case mx.TwitterEditText_messageStyle /*10*/:
                return "similar_to::";
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                return "favorited_by::";
            case mx.TwitterEditText_characterCounterColor /*12*/:
                return "retweeted_by::";
            case mx.TwitterButton_iconLayout /*19*/:
                return i() + ":who_to_follow:";
            case mx.TweetView_mediaTopMargin /*21*/:
                return "who_to_follow::";
            case mx.TweetView_previewFlags /*26*/:
                return "muted::";
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                if (this.at) {
                    return "people:address_book:all_contacts";
                }
                return i() + ":follow_friends:";
            case mx.AppCompatTheme_actionModeFindDrawable /*37*/:
                return "blocked_imported::";
            case mx.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                return "muted_automated::";
            case mx.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                return "people:address_book:active_contacts";
            default:
                return null;
        }
    }

    void a(long j, int i, cni cni, String str, String str2, String str3, int i2) {
        String str4 = (String) com.twitter.util.object.e.b(str3, e(this.t));
        if (str4 != null) {
            bbw b = b(j, i, cni, str, str4, str2, i2);
            if (this.t == 10) {
                b.j(String.valueOf(this.Y));
            }
            bbu.a(b);
        }
    }

    TwitterScribeLog b(long j, int i, cni cni, String str, String str2, String str3, int i2) {
        return a(j, i, cni, str, ScribeLog.a(str2, "user", str3), i2);
    }

    TwitterScribeLog a(long j, int i, cni cni, String str, String str2, int i2) {
        return (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(M().g()).b(j, cni, str).b(str2)).a(aD());
    }

    void B() {
        switch (this.t) {
            case mx.View_android_theme /*0*/:
                bbu.a(new TwitterScribeLog(M().g()).b("following::::impression"));
            case WireMessage.WIRE_CHAT /*1*/:
                bbu.a(new TwitterScribeLog(M().g()).b("followers::::impression"));
            case WireMessage.WIRE_CONTROL /*2*/:
                bbu.a(new TwitterScribeLog(M().g()).b("blocked::::impression"));
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                f("category");
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                bbu.a(new TwitterScribeLog(M().g()).b(i(), "follow_friends:::impression"));
            case mx.TwitterEditText_messageStyle /*10*/:
                bbu.a(new TwitterScribeLog(M().g()).b("similar_to::::impression"));
            case mx.TwitterButton_knockout /*18*/:
                bbu.a(new TwitterScribeLog(M().g()).b("follower_requests::::impression"));
            case mx.TwitterButton_iconLayout /*19*/:
            case mx.TweetView_mediaTopMargin /*21*/:
                bbu.a(new TwitterScribeLog(M().g()).b(bc(), "impression"));
            case mx.TweetView_previewFlags /*26*/:
                bbu.a(new TwitterScribeLog(M().g()).b("muted::::impression"));
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                bbu.a(new TwitterScribeLog(M().g()).b("people:address_book:::impression"));
            case mx.AppCompatTheme_actionModeFindDrawable /*37*/:
                bbu.a(new TwitterScribeLog(M().g()).b("blocked_imported::::impression"));
            case mx.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                bbu.a(new TwitterScribeLog(M().g()).b("muted_automated::::impression"));
            default:
        }
    }

    private void f(String str) {
        bbw bbw = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(M().g()).b(str, null, null, null, "impression")).a(aD());
        ScribeItem twitterScribeItem = new TwitterScribeItem();
        twitterScribeItem.a = this.Y;
        twitterScribeItem.b = this.F;
        twitterScribeItem.g = this.J + 1;
        bbw.a(twitterScribeItem);
        bbu.a(bbw);
    }

    void b(String str) {
        String str2;
        switch (this.t) {
            case mx.View_android_theme /*0*/:
                str2 = "following:::";
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                str2 = "followers:::";
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                str2 = "category:::user";
                break;
            case mx.TweetView_mediaTopMargin /*21*/:
                str2 = bc();
                break;
            default:
                str2 = null;
                break;
        }
        if (str2 != null) {
            bbu.a(new TwitterScribeLog(M().g()).b(str2, str));
        }
    }

    void b(long j, int i, cni cni, String str, String str2, int i2) {
        String str3 = (String) com.twitter.util.object.e.b(str2, c(this.t));
        if (str3 != null) {
            bbw a = a(j, i, cni, str, str3 + ":user:profile_click", i2);
            if (this.t == 10) {
                a.j(String.valueOf(this.Y));
            }
            bbu.a(a);
        }
    }

    String c(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return "followers::";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "blocked::";
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (this.ae != null) {
                    return "explore_email:category:";
                }
                return "category::";
            case mx.TwitterEditText_messageStyle /*10*/:
                return "similar_to::";
            case mx.TwitterButton_iconLayout /*19*/:
                return "welcome:who_to_follow:";
            case mx.TweetView_mediaTopMargin /*21*/:
                return "who_to_follow::";
            case mx.TweetView_previewFlags /*26*/:
                return "muted::";
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                return "people:address_book:all_contacts";
            case mx.AppCompatTheme_actionModeFindDrawable /*37*/:
                return "blocked_imported::";
            case mx.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                return "muted_automated::";
            case mx.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                return "people:address_book:active_contacts";
            default:
                return null;
        }
    }

    private void ba() {
        String str;
        String str2;
        switch (this.t) {
            case mx.View_android_theme /*0*/:
                str = "following";
                str2 = null;
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                str = "follower";
                str2 = null;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                str = "blocked";
                str2 = null;
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                str = "list";
                str2 = "users";
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                if (this.ae == null) {
                    str = "category";
                    str2 = null;
                    break;
                }
                str = "explore_email";
                str2 = "category";
                break;
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
            case mx.TweetView_inlineActionBarPaddingNormal /*28*/:
                str = "matches";
                str2 = null;
                break;
            case mx.TwitterEditText_messageStyle /*10*/:
                str = "similar_to";
                str2 = null;
                break;
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                str = "favorited_by";
                str2 = null;
                break;
            case mx.TwitterEditText_characterCounterColor /*12*/:
                str = "retweeted_by";
                str2 = null;
                break;
            case mx.TwitterButton_knockout /*18*/:
                str = "friendships";
                str2 = null;
                break;
            case mx.TwitterButton_iconLayout /*19*/:
            case mx.TweetView_mediaTopMargin /*21*/:
                str = "who_to_follow";
                str2 = null;
                break;
            case mx.TweetView_previewFlags /*26*/:
                str = "muted";
                str2 = null;
                break;
            case mx.TweetView_tweetViewLayoutId /*29*/:
                str = "followers";
                str2 = "vit_verified_followers";
                break;
            case mx.AppCompatTheme_actionModeCutDrawable /*32*/:
                str = "categories";
                str2 = null;
                break;
            case mx.AppCompatTheme_actionModeFindDrawable /*37*/:
                str = "blocked_imported";
                str2 = null;
                break;
            case mx.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                str = "muted_automated";
                str2 = null;
                break;
            default:
                return;
        }
        a((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().a(5)).a(this.Y)).b(str)).c(str2));
    }

    private my a(@DrawableRes int i, boolean z) {
        my myVar = new my(getActivity(), i, this, this.m, z, w(), false);
        myVar.c(aM());
        myVar.d(aN());
        myVar.a(bb());
        return myVar;
    }

    xs p(@DrawableRes int i) {
        xs xsVar = new xs(getActivity(), i, this, this.m, w());
        xsVar.c(aM());
        xsVar.d(aN());
        return xsVar;
    }

    protected boolean aM() {
        return (this.am || this.t == 19 || this.t == 7 || this.t == 32) ? false : true;
    }

    protected boolean aN() {
        return this.t == 2 || this.t == 37;
    }

    protected boolean aO() {
        return this.t == 26 || this.t == 38;
    }

    void a(Session session, long[] jArr, boolean z) {
        if (jArr != null) {
            c(new boj(this.T, session, jArr, z), 0, 0);
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(session.g()).b(i(), "follow_friends:::follow_many")).a((long) jArr.length));
        }
    }

    private boolean bb() {
        return this.t != 19;
    }

    protected String J() {
        switch (this.t) {
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                return "category:who_to_follow:::results";
            case mx.TwitterEditText_messageStyle /*10*/:
                return "similar_to::stream::results";
            case mx.TwitterButton_iconLayout /*19*/:
                return i() + ":who_to_follow:stream::results";
            case mx.TweetView_mediaTopMargin /*21*/:
                return "who_to_follow::stream::results";
            default:
                return null;
        }
    }

    protected void aP() {
        List list = this.H;
        if (!list.isEmpty()) {
            if (J() != null) {
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(M().g()).b(r0)).b(list)).j(String.valueOf(this.Y)));
            }
            list.clear();
        }
    }

    private String bc() {
        String i = i();
        if (EnvironmentCompat.MEDIA_UNKNOWN.equals(i) || "error".equals(i)) {
            return "who_to_follow:::";
        }
        return i + ":who_to_follow::";
    }

    private void b(x xVar) {
        aa aaVar = (aa) xVar.l().b();
        j(aaVar.d());
        bou bou = (bou) xVar;
        int i = bou.l;
        if (aaVar.b()) {
            long j = bou.b;
            if (j <= 0 || i <= 0) {
                a(false);
            } else if (this.m.k(j)) {
                ((xs) az()).notifyDataSetChanged();
            } else {
                return;
            }
            if (ap().i() && this.t == 21) {
                b("no_results");
            }
            if (i < 20) {
                this.k = false;
            }
        } else {
            r(2131364102);
        }
        if (!this.ab) {
            this.ab = true;
            aQ();
        }
    }

    protected void aQ() {
        this.ai++;
        E();
        if (aY()) {
            getLoaderManager().initLoader(2, null, this);
        }
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        aa aaVar = (aa) xVar.l().b();
        xs xsVar = (xs) az();
        int d;
        Session a;
        long t;
        Long b;
        long g;
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                j(aaVar.d());
                if (aaVar.b()) {
                    if (18 == this.t) {
                        a(false);
                    }
                } else if (getActivity() != null) {
                    r(2131362820);
                }
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
            case mx.TwitterEditText_characterCounterMode /*13*/:
            case mx.TwitterButton_iconLayout /*19*/:
            case mx.TweetView_mediaBottomMargin /*22*/:
            case mx.TweetView_mediaDivider /*23*/:
            case mx.TweetView_previewFlags /*26*/:
                if ((i == 13 || i == 3) && this.ap != null && aW()) {
                    this.ap.setVisibility(0);
                    this.aq = true;
                }
                int d2 = aaVar.d();
                j(d2);
                if (aaVar.b()) {
                    a(false);
                }
                if (d2 == 401) {
                    r(2131363425);
                } else if (d2 != 200) {
                    r(2131364102);
                } else if (this.m != null) {
                    for (TwitterUser twitterUser : ((boe) xVar).a()) {
                        this.m.b(twitterUser.bf_(), twitterUser.S);
                    }
                }
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                b(xVar);
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                d = aaVar.d();
                j(d);
                if (d == 200) {
                    a(false);
                }
                if (d != 200) {
                    r(2131364102);
                }
            case ControlMessage.CONTROL_BAN /*8*/:
                d = aaVar.d();
                j(d);
                if (d == 200) {
                    a(false);
                } else {
                    r(2131364119);
                }
            case mx.TwitterEditText_messageSize /*9*/:
                a = this.Z.a(xVar);
                if (a != null) {
                    j(aaVar.d());
                    t = ((boh) xVar).t();
                    if (!aaVar.b()) {
                        this.m.c(t);
                        xsVar.notifyDataSetChanged();
                    } else if (R()) {
                        b = b(t);
                        if (b != null) {
                            if (this.b) {
                                xsVar.a(t, b.longValue());
                            }
                            c(new bpf(this.T, a, this.Y, this.t, this.j, t, null), 18, 0);
                        }
                    }
                }
            case mx.TwitterEditText_messageStyle /*10*/:
                a(xVar);
            case mx.TwitterEditText_maxCharacterCount /*11*/:
                if (this.Z.a(xVar) != null) {
                    j(aaVar.d());
                    g = ((bok) xVar).g();
                    this.d.remove(Long.valueOf(g));
                    if (!aaVar.b()) {
                        this.m.b(g);
                        xsVar.notifyDataSetChanged();
                    }
                }
            case mx.TwitterEditText_characterCounterColor /*12*/:
                Context activity = getActivity();
                bpj bpj = (bpj) xVar;
                String str = bpj.N().e;
                boolean d3 = PushRegistration.d(activity, str);
                int d4 = aaVar.d();
                j(d4);
                if (!aaVar.b() || !d3) {
                    if (d4 == 1001 || !d3) {
                        z.a(activity).a(str, !d3, true);
                        return;
                    }
                    g = bpj.b.bf_();
                    if (this.m.k(g)) {
                        if (p.h(bpj.b.S)) {
                            this.m.d(g);
                        } else {
                            this.m.e(g);
                        }
                        xsVar.notifyDataSetChanged();
                        r(2131362396);
                    }
                }
            case mx.TwitterButton_labelMargin /*14*/:
                a(false);
            case mx.TwitterButton_strokeWidth /*15*/:
                d = aaVar.d();
                j(d);
                this.v = true;
                if (d == 200 || this.ae != null) {
                    a(false);
                }
                if (this.as && getActivity() != null) {
                    getActivity().setTitle(((n) xVar).h());
                }
            case mx.TwitterButton_knockout /*18*/:
                j(aaVar.d());
                bpf bpf = (bpf) xVar;
                Object obj = (bpf.g() == null || !bpf.h()) ? null : 1;
                ab N = bpf.N();
                if (N != null && N.a(M())) {
                    if (obj != null) {
                        a(false);
                    }
                    Long a2 = xsVar.a(bpf.s());
                    if (a2 == null) {
                        return;
                    }
                    if (obj == null || !xo.a(ap().a, a2.longValue())) {
                        xsVar.b(bpf.s());
                    }
                }
            case mx.TweetView_mediaPlaceholderDrawable /*20*/:
                a = this.Z.a(xVar);
                if (a != null) {
                    j(aaVar.d());
                    t = ((bmz) xVar).b;
                    if (!aaVar.b()) {
                        this.m.i(t);
                        xsVar.notifyDataSetChanged();
                    } else if (R()) {
                        b = b(t);
                        if (b != null) {
                            if (this.b) {
                                xsVar.a(t, b.longValue());
                            }
                            c(new bpf(this.T, a, this.Y, this.t, this.j, t, null), 18, 0);
                        }
                    }
                }
            case mx.TweetView_mediaTopMargin /*21*/:
                if (this.Z.a(xVar) != null) {
                    j(aaVar.d());
                    g = ((bmz) xVar).b;
                    if (!aaVar.b()) {
                        this.m.h(g);
                        xsVar.notifyDataSetChanged();
                    }
                }
            case mx.TweetView_autoLink /*24*/:
            case mx.TweetView_linkSelectedColor /*25*/:
                if (this.Z.a(xVar) != null) {
                    j(aaVar.d());
                    g = ((bnc) xVar).g();
                    if (!aaVar.b()) {
                        if (i == 24) {
                            this.m.g(g);
                        } else {
                            this.m.f(g);
                        }
                        xsVar.notifyDataSetChanged();
                    }
                }
            case mx.TweetView_mediaTagIcon /*27*/:
                j(aaVar.d());
                a(false);
                String string = xVar.o.getString("next_cursor");
                if (string != null) {
                    d(string);
                }
            default:
        }
    }

    private void r(int i) {
        if (!this.ar) {
            Toast.makeText(getActivity(), i, 1).show();
        }
    }
}
