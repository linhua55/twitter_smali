package com.twitter.android;

import android.accounts.Account;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.composer.aw;
import com.twitter.android.composer.bi;
import com.twitter.android.composer.bw;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.android.util.bf;
import com.twitter.android.util.bv;
import com.twitter.android.widget.ec;
import com.twitter.app.common.app.l;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.m;
import com.twitter.app.common.inject.b;
import com.twitter.app.common.inject.t;
import com.twitter.app.common.inject.v;
import com.twitter.app.main.MainActivity;
import com.twitter.app.tweetdetails.internal.c;
import com.twitter.config.d;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.timeline.ae;
import com.twitter.library.client.Session;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.media.util.a;
import com.twitter.library.metrics.f;
import com.twitter.library.network.an;
import com.twitter.library.provider.ck;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.library.util.aq;
import com.twitter.media.model.MediaType;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cx;
import com.twitter.model.core.p;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.timeline.aj;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.ab;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import defpackage.aqe;
import defpackage.aqf;
import defpackage.aqi;
import defpackage.aqy;
import defpackage.aqz;
import defpackage.arb;
import defpackage.arc;
import defpackage.ark;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bca;
import defpackage.bmz;
import defpackage.bna;
import defpackage.bnb;
import defpackage.buj;
import defpackage.bus;
import defpackage.buz;
import defpackage.ccb;
import defpackage.ccc;
import defpackage.cdg;
import defpackage.ceq;
import defpackage.cpb;
import defpackage.cpf;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import tv.periscope.android.library.k;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TweetActivity extends ActivityWithProgress implements LoaderCallbacks<Cursor>, aqy, m, a {
    private boolean A;
    private aj B;
    private aqi C;
    private aqz D;
    Session c;
    Tweet d;
    aqe e;
    z f;
    private long g;
    private Uri h;
    private String i;
    private String[] j;
    private boolean k;
    private TwitterScribeAssociation l;
    private String m;
    private int n;
    private MediaAttachmentController o;
    private int p;
    private int q;
    private String r;
    private boolean s;
    private boolean t;
    private boolean u;
    private long v;
    private Uri w;
    private Tweet x;
    private RelativeLayout y;
    private boolean z;

    public TweetActivity() {
        this.t = false;
        this.u = false;
        this.v = -1;
        this.A = true;
    }

    protected /* synthetic */ b b(t tVar) {
        return a(tVar);
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public com.twitter.app.common.base.t a(Bundle bundle, com.twitter.app.common.base.t tVar) {
        com.twitter.app.common.base.t a = super.a(bundle, tVar);
        a.d(0);
        if (io.a()) {
            a.c(false);
            a.a(4);
        }
        return a;
    }

    public void b(Bundle bundle, com.twitter.app.common.base.t tVar) {
        super.b(bundle, tVar);
        Intent intent = getIntent();
        this.s = true;
        f.b("tweet:focal:complete", L(), ark.n).i();
        f.b("tweet:complete", L(), ark.n).i();
        N().a("tweet");
        findViewById(2131952424).getViewTreeObserver().addOnGlobalLayoutListener(new tm(this));
        this.m = intent.getStringExtra("reason");
        this.n = intent.getIntExtra("reason_icon_id", 0);
        this.B = (aj) ab.a(intent, "tw_scribe_content", aj.a);
        TwitterScribeItem twitterScribeItem = (TwitterScribeItem) intent.getParcelableExtra("scribe_item");
        this.p = intent.getIntExtra("social_context_type", -1);
        this.q = intent.getIntExtra("social_context_user_count", -1);
        this.r = intent.getStringExtra("social_context_user_name");
        this.l = (TwitterScribeAssociation) intent.getParcelableExtra("association");
        int intExtra = intent.getIntExtra("type", -1);
        long longExtra = intent.getLongExtra("tag", -1);
        if (intExtra != -1) {
            if (longExtra != -1) {
                this.i = "status_groups_type=? AND status_groups_tag=?";
                this.j = new String[]{String.valueOf(intExtra), String.valueOf(longExtra)};
            } else {
                this.i = "status_groups_type=?";
                this.j = new String[]{String.valueOf(intExtra)};
            }
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        Object obj = (BaseFragment) supportFragmentManager.findFragmentByTag("tweet_fragment");
        if (obj == null) {
            obj = y();
            beginTransaction.add(2131951923, obj, "tweet_fragment");
            h a = new h(obj.o()).a("source_association", this.l);
            Serializable byteArrayExtra = intent.getByteArrayExtra("timeline_moment");
            if (byteArrayExtra != null) {
                a.a("timeline_moment", byteArrayExtra);
            }
            obj.a(a.c());
        }
        beginTransaction.commit();
        this.e = (aqe) ObjectUtils.a(obj);
        if (bundle != null) {
            this.A = bundle.getBoolean("tw_is_available", true);
        }
        if (!this.A) {
            supportFragmentManager.beginTransaction().hide(x()).commit();
        }
        e();
        setTitle(2131364012);
        this.f = new tt();
        this.J.a(this.f);
        if (bundle != null) {
            this.d = (Tweet) bundle.getParcelable("t");
            this.x = (Tweet) bundle.getParcelable("c");
            if (this.x != null) {
                f();
            }
        } else {
            io.b(this, "tweet");
            this.d = (Tweet) intent.getParcelableExtra("tw");
            String a2 = ScribeLog.a("tweet:", Tweet.b(this.d), ":impression");
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(ab().g()).a(getApplicationContext(), this.d, this.l, null).b(a2)).a(intent.getStringExtra("ref_event"))).a(this.l)).a((ScribeItem) twitterScribeItem));
        }
        this.e.a(this);
        if (this.d != null && com.twitter.library.client.aj.d((Context) this)) {
            com.twitter.library.client.aj.a((Context) this).a(this.d);
        }
        if (!io.a()) {
            i();
        }
        if (intent.getBooleanExtra("focus_compose", false)) {
            this.C.d();
        }
        this.D = ((arb) W()).d();
        this.D.a(new tn(this));
    }

    public v a(LayoutInflater layoutInflater, Bundle bundle) {
        this.o = MediaAttachmentController.a(this, this, "reply_composition", MediaType.h, 1, ab());
        v arc = new arc(this, layoutInflater, bundle, T(), this.o);
        this.C = arc.d();
        this.C.a(new to(this));
        return arc;
    }

    private void e() {
        if (d.a("vit_show_push_notif_context_enabled")) {
            Uri data = getIntent().getData();
            String b = bv.b(data);
            if (bv.a(b)) {
                this.y = (RelativeLayout) findViewById(2131953325);
                boolean z = true;
                switch (b.hashCode()) {
                    case mx.AppCompatTheme_buttonStyleSmall /*101*/:
                        if (b.equals("e")) {
                            z = true;
                            break;
                        }
                        break;
                    case mx.AppCompatTheme_checkboxStyle /*102*/:
                        if (b.equals("f")) {
                            z = true;
                            break;
                        }
                        break;
                    case 114:
                        if (b.equals("r")) {
                            z = false;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case mx.View_android_theme /*0*/:
                        a("vit_retweet_spike", 2131364187, 2130838982, 12);
                        return;
                    case WireMessage.WIRE_CHAT /*1*/:
                        a("vit_favorite_spike", 2131364174, 2130838975, 11);
                        return;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        this.v = bv.a(data);
                        if (this.v != -1) {
                            this.t = true;
                        }
                        this.y.setVisibility(8);
                        return;
                    default:
                        this.t = false;
                        this.y.setVisibility(8);
                        return;
                }
            }
            this.t = false;
            return;
        }
        this.t = false;
    }

    private void a(String str, int i, int i2, int i3) {
        a(str, getString(i), i2);
        this.y.setOnClickListener(new tp(this, str, i3));
    }

    private void f() {
        if (this.x == null) {
            this.t = false;
            return;
        }
        a("vit_tweet_embedded", getString(2131364188, new Object[]{this.x.A}), 2130839897);
        this.y.setOnClickListener(new tq(this));
    }

    private void a(String str, String str2, int i) {
        bbu.a(new TwitterScribeLog(ab().g()).b("tweet:notification_landing", str, ":impression"));
        this.t = true;
        this.y.setVisibility(0);
        ((TypefacesTextView) this.y.findViewById(2131953384)).setText(str2);
        ((ImageView) findViewById(2131953383)).setImageResource(i);
    }

    public void a(Tweet tweet) {
        if (!io.a()) {
            b(tweet);
        }
    }

    protected arb a(t tVar) {
        return aqf.a().a(l.p()).a(new c(this, tVar)).a(new com.twitter.app.tweetdetails.internal.a()).a();
    }

    private void b(Tweet tweet) {
        Intent a = aw.a().a(c(tweet)).a(this.C.aB_()).a(tweet).b(this.c.e()).a(this.C.l()).a((Context) this);
        this.C.j();
        startActivityForResult(a, mx.AppCompatTheme_checkboxStyle);
    }

    private void i() {
        if (t()) {
            getWindow().setSoftInputMode(32);
            this.C.f();
        }
    }

    public void onStart() {
        super.onStart();
        if (this.c == null) {
            this.c = ab();
            m();
        }
    }

    public boolean a(w wVar) {
        super.a(wVar);
        int i = this.d != null ? this.d.R : 0;
        if (ab().d()) {
            wVar.a(2132017187);
            wVar.a(2132017162);
            wVar.a(2132017184);
            if (cx.a(i)) {
                wVar.a(2132017179);
            }
            if (cx.b(i)) {
                wVar.a(2132017153);
            }
            if (cx.c(i)) {
                wVar.a(2132017188);
            }
        }
        wVar.a(2132017159);
        if (com.twitter.library.util.b.a() > 1 && !bus.a().f()) {
            wVar.a(2132017193);
        }
        return true;
    }

    public int b(w wVar) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        ToolBar j = wVar.j();
        Session ab = ab();
        TwitterUser f = ab.f();
        long g = ab.g();
        boolean z4 = (this.d == null || this.d.s == g) ? false : true;
        if (this.d == null || !p.d(this.d.m)) {
            z = false;
        } else {
            z = true;
        }
        bca a = j.a(2131953427);
        if (a != null) {
            if (this.A && !this.z && ceq.a(this.d, g)) {
                a.b(true);
            } else {
                a.b(false);
            }
        }
        bca a2 = j.a(2131953471);
        if (a2 != null) {
            if (f == null || this.d == null || !this.d.a(f)) {
                z2 = false;
            } else {
                z2 = true;
            }
            a2.f(1);
            a2.d(z2 ? 2131364059 : 2131363334);
            if (!this.A || z4) {
                z2 = false;
            } else {
                z2 = true;
            }
            a2.b(z2);
        }
        a2 = j.a(2131953464);
        if (a2 != null) {
            a2.f(10);
            z2 = bf.a(this.d);
            if (!this.A || !z4 || z2 || z) {
                a2.b(false);
            } else {
                if (this.d == null || !p.c(this.d.m)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2) {
                    a2.a(getString(2131364051));
                } else {
                    a2.a(getString(2131363120));
                }
                a2.b(true);
            }
        }
        bca a3 = j.a(2131953414);
        if (a3 != null) {
            a3.f(11);
            a3.d(z ? 2131364129 : 2131361962);
            if (z4 && this.A) {
                z = true;
            } else {
                z = false;
            }
            a3.b(z);
        }
        a3 = j.a(2131953481);
        if (a3 != null) {
            a3.f(12);
            if (this.d == null || !this.d.q()) {
                z = false;
            } else {
                z = true;
            }
            a3.d(z ? 2131363473 : 2131363472);
            if (!(!io.a() && z4 && this.A)) {
                z3 = false;
            }
            a3.b(z3);
        }
        a(j);
        bca a4 = j.a(2131953489);
        if (a4 != null) {
            a4.f(13);
        }
        a4 = j.a(2131953423);
        if (a4 != null) {
            a4.b(this.A);
        }
        return super.b(wVar);
    }

    public boolean a(ac acVar) {
        int a = acVar.a();
        if (a == k.home) {
            if (this.C.aB_()) {
                c();
                return true;
            }
        } else if (a == 2131953483) {
            ((ec) ((ec) ((ec) new ec(2).b(2131363470)).d(2131363218)).f(2131362041)).i().a((m) this).a(getSupportFragmentManager());
        } else if (a == 2131953427) {
            this.e.B();
        } else if (a == 2131953464) {
            r0 = p.c(this.d.m);
            String ap = this.d.ap();
            r1 = this.d.v;
            if (r0) {
                bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, ap, "unmute_dialog", "open"));
                bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, ap, "unmute_dialog", "unmute_user"));
                v();
                return true;
            }
            bbu.a(new TwitterScribeLog(this.c.g()).b("tweet::tweet:mute_dialog:open"));
            if (bf.a(this, r1, this.d.m, 3, getSupportFragmentManager(), null)) {
                return true;
            }
            bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, ap, "mute_dialog", "mute_user"));
            u();
            return true;
        } else if (a == 2131953414) {
            r0 = p.d(this.d.m);
            r1 = this.d.ap();
            if (r0) {
                bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, r1, "unblock_dialog", "impression"));
                bf.b(this, this.d.v, 5, getSupportFragmentManager());
            } else {
                bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, r1, "block_dialog", "impression"));
                bf.a((Context) this, com.twitter.library.view.ab.b(this.d), 4, getSupportFragmentManager());
            }
        } else if (a == 2131953481) {
            this.D.a(this.d);
            return true;
        } else if (a == 2131953423) {
            bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, this.d.ap(), "link", "copy"));
            aq.a((Context) this, this.d.aq());
            Toast.makeText(this, 2131362329, 0).show();
            return true;
        } else if (a == 2131953471) {
            boolean z;
            mb mbVar = new mb(x(), this, this.J, new tr(this));
            if (this.d.a(ab().f())) {
                z = false;
            } else {
                z = true;
            }
            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.c.g());
            String[] strArr = new String[5];
            strArr[0] = "tweet";
            strArr[1] = null;
            strArr[2] = this.d.ap();
            strArr[3] = BuildConfig.VERSION_NAME;
            strArr[4] = z ? "pin" : "unpin";
            mbVar.a(this.d, z, this.c, (TwitterScribeLog) twitterScribeLog.b(strArr));
        } else if (a == 2131953491) {
            startActivityForResult(new Intent(this, AccountsDialogActivity.class).putExtra("page", "tweet").putExtra("AccountsDialogActivity_account_name", ab().e()), mx.AppCompatTheme_checkedTextViewStyle);
            bbu.a(new TwitterScribeLog(this.c.g()).b("tweet::switch_account::click"));
        }
        return super.a(acVar);
    }

    private void a(long j, List<Long> list, Set<Long> set) {
        b(new com.twitter.library.api.timeline.f(this, this.c, j, this.c.g(), list, set), 1);
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (SupportMenu.USER_MASK & i) {
            case mx.AppCompatTheme_checkedTextViewStyle /*103*/:
                if (i2 == 1) {
                    Account account = ((UserAccount) intent.getParcelableExtra("account")).a;
                    String e = ab().e();
                    if (!(e == null || e.equals(account.name))) {
                        long j;
                        Builder authority = new Builder().scheme("twitter").authority("tweet");
                        String str = "status_id";
                        if (this.d != null) {
                            j = this.d.H;
                        } else {
                            j = ContentUris.parseId(this.h);
                        }
                        Intent data = new Intent(this, TweetActivity.class).setData(authority.appendQueryParameter(str, Long.toString(j)).build());
                        bbu.a(new TwitterScribeLog(this.c.g()).b("tweet::switch_account::success"));
                        MainActivity.a(aa(), data, this, account.name);
                        break;
                    }
                }
                break;
            case mx.AppCompatTheme_editTextStyle /*104*/:
                if (i2 == -1 && intent != null) {
                    this.o.a(new MediaAttachment((DraftAttachment) e.a(com.twitter.android.util.v.a(intent))), this.C);
                }
                com.twitter.android.util.v.a(ComposerType.INLINE_REPLY, intent);
                break;
            case 9151:
                if (intent != null && intent.hasExtra("deleted") && this.d != null && this.d.H == intent.getLongExtra("deleted", 0)) {
                    finish();
                    break;
                }
            case 9153:
                if (10 != i2) {
                    if (1 == i2 && intent.hasExtra("status_id")) {
                        this.e.f(intent.getLongExtra("status_id", 0));
                        break;
                    }
                }
                setResult(10);
                finish();
                break;
        }
        super.onActivityResult(i, i2, intent);
        if (this.o != null) {
            this.o.a(i, i2, intent, this.C);
        }
    }

    public void onBackPressed() {
        if (!this.C.aC_()) {
            if (this.C.aB_()) {
                c();
            } else {
                super.onBackPressed();
            }
        }
    }

    public void c() {
        ((ec) ((ec) ((ec) new ec(1).b(2131363373)).d(2131363522)).f(2131362398)).i().a((m) this).a(getSupportFragmentManager());
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        String b = Tweet.b(this.d);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (i2 == -1) {
                    AsyncOperation bwVar = new bw(getApplicationContext(), this.c, c(this.d), false);
                    bwVar.a(ExecutionClass.SERIAL_BACKGROUND);
                    this.J.a(bwVar);
                    setResult(0);
                    bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", "composition", "cancel_reply_sheet", "save_draft", "click"));
                    finish();
                } else if (i2 == -2) {
                    setResult(0);
                    bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", "composition", "cancel_reply_sheet", "dont_save", "click"));
                    finish();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (i2 == -1) {
                    X().a(2131953483).b(false);
                    a(this.d.H, cpb.j(this.d.w.d), Collections.singleton(Long.valueOf(this.c.g())));
                    bbu.a(new TwitterScribeLog(this.c.g()).b("tweet::tweet:remove_my_media_tag:click"));
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (i2 == -1) {
                    bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, b, "mute_dialog", "mute_user"));
                    u();
                    return;
                }
                bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, b, "mute_dialog", "cancel"));
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (i2 == -1) {
                    j();
                    return;
                }
                bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, b, "block_dialog", "cancel"));
            case mx.UserView_actionButtonPaddingRight /*5*/:
                if (i2 == -1) {
                    bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, b, "unblock_dialog", "unblock"));
                    b(new bmz(this, ab(), this.d.s, this.d.f, 3), 5);
                    return;
                }
                bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, b, "unblock_dialog", "cancel"));
            default:
        }
    }

    private void j() {
        bbu.a(new TwitterScribeLog(this.c.g()).b("tweet", null, Tweet.b(this.d), "block_dialog", "block"));
        l();
    }

    private void l() {
        b(new bmz(this, ab(), this.d.s, this.d.f, 1), 4);
    }

    private void m() {
        if (this.d != null) {
            this.h = ck.a(this.d.u, this.c.g());
            this.z = true;
            getSupportLoaderManager().initLoader(0, null, this);
            return;
        }
        Uri data = getIntent().getData();
        if (data != null) {
            String type = getContentResolver().getType(data);
            if ("twitter".equals(data.getScheme())) {
                try {
                    type = data.getQueryParameter("status_id");
                    if (type == null) {
                        type = data.getQueryParameter("id");
                    }
                    long parseLong = Long.parseLong(type);
                    if (parseLong < 0) {
                        throw new NumberFormatException();
                    }
                    this.h = ck.a(parseLong, this.c.g());
                    getSupportLoaderManager().initLoader(0, null, this);
                    if (this.v != -1) {
                        this.w = ck.a(this.v, this.c.g());
                        getSupportLoaderManager().initLoader(4, null, this);
                        return;
                    }
                    return;
                } catch (NumberFormatException e) {
                    r();
                    return;
                }
            } else if ("vnd.android.cursor.item/vnd.twitter.android.statuses".equals(type)) {
                this.h = data;
                getSupportLoaderManager().initLoader(0, null, this);
                return;
            } else {
                r();
                return;
            }
        }
        r();
    }

    private void r() {
        Toast.makeText(this, 2131364026, 1).show();
        finish();
    }

    private void a(ToolBar toolBar) {
        Session ab = ab();
        if (ab.d()) {
            bca a = toolBar.a(2131953483);
            if (a != null) {
                boolean a2;
                if (this.d != null) {
                    a2 = cpf.a(cpb.a(this.d, Size.b), ab.g());
                } else {
                    a2 = false;
                }
                a.b(a2);
            }
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("t", this.d);
        bundle.putBoolean("tw_is_available", this.A);
        if (this.x != null) {
            bundle.putParcelable("c", this.x);
        }
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        if (i == 0) {
            if (b_(this.h)) {
                return new bu(this, this.h, b(this.h), this.i, this.j, null);
            }
            r();
            return null;
        } else if (i != 4) {
            r();
            return null;
        } else if (b_(this.w)) {
            return new bu(this, this.w, b(this.w), null, null, null);
        } else {
            r();
            return null;
        }
    }

    boolean b_(Uri uri) {
        try {
            ContentUris.parseId(uri);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    private static String[] b(Uri uri) {
        List pathSegments = uri.getPathSegments();
        if (pathSegments != null && !pathSegments.isEmpty() && "status_groups_retweets_view".equals(pathSegments.get(0))) {
            return cdg.b;
        }
        bbn.a(new bbl().a("activity.uri", uri.toString()).a(new IllegalStateException("Partial content requested")));
        return cdg.a;
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        com.twitter.model.core.bf bfVar = null;
        if (loader.getId() == 0) {
            if (this.d == null || this.z) {
                if (cursor != null && cursor.moveToFirst()) {
                    com.twitter.model.core.bf a = ccb.a.a(cursor);
                    if (a.n == 0 && com.twitter.util.aj.a(a.p)) {
                        bbn.a(new bbl().a("tweet.statusId", Long.valueOf(a.o)).a("tweet.groupType", Integer.valueOf(a.I)).a("tweet.content", a.a).a("activity.uri", this.h.toString()).a(new IllegalStateException("UserId of tweet is 0 and UserName is empty")));
                    } else {
                        bfVar = a;
                    }
                }
                if (bfVar != null) {
                    bfVar.a(this.B);
                    d(bfVar.a());
                } else if (!this.k) {
                    b(new ae(this, this.c, ContentUris.parseId(this.h)), 0);
                    this.k = true;
                } else if (this.d == null) {
                    Toast.makeText(this, 2131364026, 1).show();
                    finish();
                } else {
                    d(this.d);
                }
            } else if (cursor != null && cursor.moveToFirst()) {
                this.d = ccb.a.a(cursor).a(this.B).a();
                if (this.e != null) {
                    this.e.b(this.d);
                }
            }
        } else if (loader.getId() != 4) {
        } else {
            if (cursor != null && cursor.moveToFirst()) {
                this.x = ccc.a.a(cursor);
                f();
            } else if (this.u) {
                bbu.a(new TwitterScribeLog(ab().g()).b("tweet:notification_landing:vit_tweet_embedded::error"));
                Toast.makeText(this, 2131364026, 1).show();
                finish();
            } else {
                this.u = true;
                b(new ae(this, this.c, ContentUris.parseId(this.w)), 6);
                bbu.a(new TwitterScribeLog(ab().g()).b("tweet:notification_landing:vit_tweet_embedded::loading"));
            }
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    public void a(x xVar, int i) {
        super.a(xVar, i);
        if (this.s) {
            aa aaVar = (aa) xVar.l().b();
            switch (i) {
                case mx.View_android_theme /*0*/:
                    if (aaVar.b()) {
                        if (!this.A) {
                            FragmentManager supportFragmentManager = getSupportFragmentManager();
                            supportFragmentManager.beginTransaction().show(x()).commit();
                            TweetBlockedByAuthorFragment tweetBlockedByAuthorFragment = (TweetBlockedByAuthorFragment) getSupportFragmentManager().findFragmentByTag("tweet_blocked_by_author_fragment");
                            if (tweetBlockedByAuthorFragment != null) {
                                supportFragmentManager.beginTransaction().remove(tweetBlockedByAuthorFragment).commit();
                            }
                            this.A = true;
                        }
                        getSupportLoaderManager().restartLoader(0, null, this);
                    } else if (an.a(aaVar, 136)) {
                        w();
                    } else {
                        Toast.makeText(this, 2131364026, 1).show();
                        finish();
                    }
                case WireMessage.WIRE_CHAT /*1*/:
                    if (this.d.H == ((com.twitter.library.api.timeline.f) xVar).b()) {
                        int i2;
                        if (aaVar.b()) {
                            i2 = 2131363051;
                        } else {
                            i2 = 2131363050;
                            X().a(2131953483).b(true);
                        }
                        Toast.makeText(this, i2, 0).show();
                    }
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (aaVar.b()) {
                        finish();
                    }
                case WireMessage.WIRE_AUTH /*3*/:
                    if (aaVar.b()) {
                        this.d.m = p.b(this.d.m, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
                        Y().h();
                    }
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    if (aaVar.b()) {
                        finish();
                    }
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    if (aaVar.b()) {
                        this.d.m = p.b(this.d.m, 4);
                        Y().h();
                    }
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    if (aaVar.b()) {
                        getSupportLoaderManager().restartLoader(4, null, this);
                        return;
                    }
                    bbu.a(new TwitterScribeLog(ab().g()).b("tweet:notification_landing:vit_tweet_embedded::error"));
                    Toast.makeText(this, 2131364026, 1).show();
                    finish();
                default:
            }
        }
    }

    public void onResume() {
        super.onResume();
        this.g = com.twitter.util.m.b();
    }

    protected void onPause() {
        super.onPause();
        bbu.a((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.c.g()).b("tweet::::navigate")).a(com.twitter.util.m.b() - this.g));
    }

    public void onDestroy() {
        this.s = false;
        super.onDestroy();
        this.J.b(this.f);
    }

    private void s() {
        if (this.d == null) {
            Toast.makeText(this, 2131364026, 1).show();
            return;
        }
        s_();
        com.twitter.model.drafts.d c = c(this.d);
        com.twitter.android.client.bv.a(getApplicationContext(), this.c, c);
        this.e.r();
        long g = this.c.g();
        bbu.a(new TwitterScribeLog(g).i().b("tweet:composition:::send_reply"));
        bi.a(g, ComposerType.INLINE_REPLY, c.d);
        this.C.j();
    }

    private com.twitter.model.drafts.d c(Tweet tweet) {
        return (com.twitter.model.drafts.d) new com.twitter.model.drafts.e().a(this.C.g()).a(this.C.i()).a(tweet.f).b(tweet.H).a(buj.a().c()).q();
    }

    private boolean t() {
        return this.d != null && this.d.ac();
    }

    private void u() {
        b(new bna(this, this.c).a(this.d.s), 2);
    }

    private void v() {
        b(new bnb(this, this.c).a(this.d.s), 3);
    }

    public void a(Intent intent, int i, Bundle bundle) {
        ActivityCompat.startActivityForResult(this, intent, i, bundle);
    }

    private void d(Tweet tweet) {
        this.e.a(tweet, this.c, this.m, this.n, this.p, this.q, this.r, this.t);
        this.z = false;
        this.d = tweet;
        Y().h();
        this.C.a(this.d);
        i();
    }

    private void w() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.beginTransaction().remove(x()).commit();
        this.A = false;
        if (((TweetBlockedByAuthorFragment) supportFragmentManager.findFragmentByTag("tweet_blocked_by_author_fragment")) == null) {
            Fragment tweetBlockedByAuthorFragment = new TweetBlockedByAuthorFragment();
            FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
            beginTransaction.add(2131951923, tweetBlockedByAuthorFragment, "tweet_blocked_by_author_fragment");
            beginTransaction.commit();
        }
        supportFragmentManager.beginTransaction().hide(x()).commit();
        Y().h();
    }

    private BaseFragment x() {
        return (BaseFragment) ObjectUtils.a(this.e);
    }

    private <F extends BaseFragment & aqe> F y() {
        if (buz.a().e()) {
            return (BaseFragment) ObjectUtils.a(new TweetFragment2());
        }
        return (BaseFragment) ObjectUtils.a(new TweetFragment());
    }
}
