package com.twitter.android;

import acu;
import acw;
import adg;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bbu;
import bdk;
import bgv;
import bhc;
import big;
import cgl;
import cly;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.dm.aa;
import com.twitter.android.dm.au;
import com.twitter.android.dm.widget.g;
import com.twitter.android.dm.z;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.network.w;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.view.m;
import com.twitter.library.widget.UserView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.ap;
import com.twitter.model.core.cr;
import com.twitter.model.core.q;
import com.twitter.model.dms.ae;
import com.twitter.model.dms.k;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.aj;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.h;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import defpackage.asy;
import defpackage.bdd;
import defpackage.bde;
import defpackage.bie;
import defpackage.bii;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import wy;
import wz;
import xe;
import xf;
import xg;
import xj;
import xm;
import xp;
import xs;
import xt;
import xv;
import xy;
import xz;
import yo;
import ys;
import yv;
import yy;
import zb;
import zc;
import ze;
import zf;
import zi;

/* compiled from: Twttr */
public class cd extends bdk<Cursor> implements dm, aa, au, g, z, m {
    private static final SimpleDateFormat a;
    private static final SimpleDateFormat b;
    private static final SimpleDateFormat c;
    private final boolean A;
    private final boolean B;
    private vx C;
    private adg D;
    private final int E;
    private final int F;
    private k G;
    private final boolean H;
    private final Set<Long> I;
    private final Map<Long, UserView> d;
    private final Map<Long, TwitterUser> e;
    private final Set<String> f;
    private boolean g;
    private final Context h;
    private final w i;
    private final TwitterScribeAssociation j;
    private final bz k;
    private final dl l;
    private final Set<Long> m;
    private final Set<Long> n;
    private final UserSettings o;
    private final long p;
    private boolean q;
    private boolean s;
    private String t;
    private final Set<Long> u;
    private String v;
    private final Set<Long> w;
    private final boolean x;
    private final wy y;
    private Map<Long, cly> z;

    static {
        a = new SimpleDateFormat();
        b = new SimpleDateFormat();
        c = new SimpleDateFormat();
    }

    public cd(Context context, TwitterScribeAssociation twitterScribeAssociation, bz bzVar, dl dlVar, boolean z, boolean z2, wy wyVar, UserSettings userSettings) {
        super(context, 0);
        this.d = MutableMap.a();
        this.e = MutableMap.a();
        this.f = MutableSet.a();
        this.g = false;
        this.m = MutableSet.a();
        this.n = MutableSet.a();
        this.u = MutableSet.a();
        this.w = MutableSet.a();
        this.I = MutableSet.a();
        Session c = bg.a().c();
        this.h = context;
        this.i = new w(c.h());
        this.k = bzVar;
        this.l = dlVar;
        this.l.a((dm) this);
        this.j = twitterScribeAssociation;
        this.x = z;
        this.y = wyVar;
        this.o = userSettings;
        this.p = c.g();
        a.applyPattern(this.h.getString(2131364296));
        b.applyPattern(this.h.getString(2131364294));
        c.applyPattern(this.h.getString(2131364295));
        this.H = z2;
        this.A = big.j();
        this.B = big.m();
        Resources resources = this.h.getResources();
        this.E = resources.getDimensionPixelSize(2131690632);
        this.F = resources.getDimensionPixelSize(2131689578) + this.E;
        if (this.B) {
            this.D = new adg(new asy(new acw(i(), c)), new asy(new acu(di.a(i(), this.p))));
        }
    }

    public void a(boolean z) {
        if (this.q != z) {
            this.q = z;
            notifyDataSetChanged();
        }
    }

    public void b(boolean z) {
        if (this.s != z) {
            this.s = z;
            notifyDataSetChanged();
        }
    }

    public void a(String str) {
        if (!aj.a(this.t, str)) {
            this.t = str;
            notifyDataSetChanged();
        }
    }

    public void a(k kVar) {
        h.b(this.H);
        this.G = kVar;
        notifyDataSetChanged();
    }

    public void a(vx vxVar) {
        this.C = vxVar;
    }

    public boolean a(long j) {
        return this.I.contains(Long.valueOf(j));
    }

    public void b(long j) {
        this.I.remove(Long.valueOf(j));
    }

    public void c(long j) {
        this.I.add(Long.valueOf(j));
    }

    public void F_() {
        notifyDataSetChanged();
    }

    public int getViewTypeCount() {
        return 5;
    }

    protected View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        Object zcVar;
        bgv bgv = new bie(cursor).a;
        ViewGroup a = a(2130968772, viewGroup, false);
        switch (a(bgv)) {
            case Util.TYPE_DASH /*0*/:
                zcVar = new zc(a(2130968774, a, true), this.x);
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                zcVar = new zf(a(2130968775, a, true));
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                zcVar = new xv(a(2130968753, a, true));
                break;
            case Util.TYPE_OTHER /*3*/:
                zcVar = new xz(a(2130968763, a, true));
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                zcVar = new xt(a(2130968759, a, true));
                break;
            default:
                return null;
        }
        a.setTag(zcVar);
        return a;
    }

    private ViewGroup a(int i, ViewGroup viewGroup, boolean z) {
        return (ViewGroup) LayoutInflater.from(this.h).inflate(i, viewGroup, z);
    }

    protected void a(View view, Context context, Cursor cursor) {
        bie bie = new bie(cursor);
        bgv bgv = bie.a;
        if (b(bgv) && !this.n.contains(Long.valueOf(bgv.g))) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.p).b(new String[]{"messages:thread:rtf_message::impression"})).a(bgv.g, bgv.i));
            this.n.add(Long.valueOf(bgv.g));
        }
        xf a = a(bgv, (xg) ObjectUtils.a(view.getTag()));
        if (a != null) {
            bie bie2 = cursor.moveToNext() ? new bie(cursor) : null;
            cursor.moveToPosition(bie.g);
            ((xe) a.a(i()).a(this.l).a(bie).b(bie2).q()).a();
        }
        if (this.B && this.C != null) {
            a(view, cursor.isLast());
        }
    }

    private xf a(bgv bgv, xg xgVar) {
        switch (bgv.g()) {
            case Util.TYPE_DASH /*0*/:
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case bdd.TwitterButton_iconLayout /*19*/:
                bhc bhc = (bhc) ObjectUtils.a(bgv);
                if (b(bgv)) {
                    return ((zi) ((zi) new zi().a((xv) ObjectUtils.a(xgVar))).a(bhc)).a(this);
                }
                yo yoVar;
                if (bgv.b(this.p)) {
                    yoVar = (yo) new ze().d(this.H).a(this.G).a(this).a((zf) ObjectUtils.a(xgVar));
                } else {
                    yoVar = (yo) new zb().a((zc) ObjectUtils.a(xgVar));
                }
                return ((yo) yoVar.a(bhc)).a(this).a(this.q).b(this.o.k).a(this).a(this.k).a(this.j).a(this.i).a(a).b(b).c(c).c(this.A);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return ((xp) new xp().a((xv) ObjectUtils.a(xgVar))).a((bgv) ObjectUtils.a(bgv));
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return ((ys) new ys().a((xv) ObjectUtils.a(xgVar))).a((bgv) ObjectUtils.a(bgv));
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return ((yv) new yv().a((xv) ObjectUtils.a(xgVar))).a((bgv) ObjectUtils.a(bgv));
            case bdd.TwitterButton_bounded /*17*/:
                return ((xy) ((xy) new xy().a((xz) ObjectUtils.a(xgVar))).a((bgv) ObjectUtils.a(bgv))).a(this).a(this.o.j);
            case bdd.TwitterButton_knockout /*18*/:
                return ((yy) new yy().a((xv) ObjectUtils.a(xgVar))).a((bgv) ObjectUtils.a(bgv));
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                return ((xs) ((xs) new xs().a((xt) ObjectUtils.a(xgVar))).a((bgv) ObjectUtils.a(bgv))).a(this.t);
            case bdd.TweetView_mediaTopMargin /*21*/:
                return ((xm) new xm().a((xv) ObjectUtils.a(xgVar))).a((bgv) ObjectUtils.a(bgv));
            case bdd.TweetView_mediaBottomMargin /*22*/:
                return ((xj) new xj().a((xv) ObjectUtils.a(xgVar))).a((bgv) ObjectUtils.a(bgv));
            default:
                return null;
        }
    }

    private void a(View view, boolean z) {
        boolean z2 = false;
        if (z && this.C.a() && view.findViewById(2131952368) == null) {
            a(2130968776, (ViewGroup) view, true);
            z2 = true;
        }
        View findViewById = view.findViewById(2131952368);
        if (findViewById != null && this.D != null) {
            if (z) {
                if (this.A && z2) {
                    View findViewById2 = findViewById.findViewById(2131952359);
                    Drawable drawable = ContextCompat.getDrawable(this.h, 2130837808);
                    bde.a(drawable, ContextCompat.getColor(this.h, 2131886207));
                    findViewById2.setBackground(drawable);
                    findViewById2.setPadding(this.F, this.E, this.E, this.E);
                }
                this.C.a(findViewById, z2, i(), this.D);
                return;
            }
            ((ViewGroup) view).removeView(findViewById);
        }
    }

    public void d(long j) {
        ProfileActivity.a(this.h, j, null, null, null, null);
    }

    public void a(q qVar) {
        this.h.startActivity(fk.a(this.h, qVar));
    }

    public void a(com.twitter.model.core.b bVar) {
        this.h.startActivity(fk.a(this.h, bVar));
    }

    public void a(ap apVar) {
        this.h.startActivity(new Intent(this.h, ProfileActivity.class).putExtra("screen_name", apVar.i));
    }

    public void a(TwitterPlace twitterPlace) {
    }

    public void a(cr crVar) {
        OpenUriHelper.a(this.h, null, crVar, this.p, "messages:thread:::open_link", null, this.j, null);
    }

    public boolean b(cr crVar) {
        return true;
    }

    protected int a(Cursor cursor) {
        return a(new bie((Cursor) e.a(cursor)).a);
    }

    int a(bgv bgv) {
        switch (bgv.g()) {
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
            case b.ShimmerFrameLayout_relative_width /*11*/:
            case bdd.TwitterButton_knockout /*18*/:
            case bdd.TweetView_mediaTopMargin /*21*/:
            case bdd.TweetView_mediaBottomMargin /*22*/:
                return 2;
            case bdd.TwitterButton_bounded /*17*/:
                return 3;
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                return 4;
            default:
                if (b(bgv)) {
                    return 2;
                }
                if (bgv.b(this.p)) {
                    return 1;
                }
                return 0;
        }
    }

    private boolean b(bgv bgv) {
        return bgv.f() && ((bhc) ObjectUtils.a(bgv)).p() && !this.m.contains(Long.valueOf(bgv.g));
    }

    public void a(Map<Long, cly> map) {
        this.z = map;
    }

    public void a(cgl cgl) {
    }

    public void a(MediaEntity mediaEntity) {
    }

    public void e(long j) {
    }

    void b() {
        for (Entry entry : this.d.entrySet()) {
            ((UserView) entry.getValue()).getImageView().a((TwitterUser) this.e.get(entry.getKey()));
        }
    }

    public void b(String str) {
        this.v = str;
    }

    public void c(String str) {
        this.f.add(str);
        notifyDataSetChanged();
    }

    public boolean d(String str) {
        return this.f.contains(str);
    }

    public void a(bhc bhc) {
        if (!this.u.contains(Long.valueOf(bhc.g))) {
            ae aeVar = (ae) bhc.n();
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.p).b(new String[]{"messages:thread::shared_tweet_dm:impression"})).a(bhc.h, ((ae) e.a(aeVar)).e.e, aeVar.e.m == null ? null : aeVar.e.m.c));
            this.u.add(Long.valueOf(bhc.g));
        }
    }

    public void b(bhc bhc) {
        if (!this.w.contains(Long.valueOf(bhc.g)) && !(bhc instanceof bii)) {
            String str = bhc.r() == 1 ? "large_emoji_message" : "medium_emoji_message";
            bbu.a(new TwitterScribeLog(this.p).b(new String[]{"messages", "thread", null, str, "impression"}));
            this.w.add(Long.valueOf(bhc.g));
        }
    }

    public View a(bie bie) {
        if (!f()) {
            return null;
        }
        return wz.a(this.h, bie, this.z, !this.o.k, this.y, this.s, this.q);
    }

    private boolean f() {
        return this.x && this.z != null;
    }

    public boolean e(String str) {
        return str != null && str.equals(this.v);
    }

    public void c() {
        this.v = null;
    }

    public void d() {
        this.d.clear();
    }

    public void a(Long l, UserView userView) {
        this.d.put(l, userView);
    }

    public void a(List<Long> list) {
        if (this.e.size() >= this.d.size()) {
            b();
        } else if (!this.g) {
            this.g = true;
            new ce(this, list, this.h, this.p).execute(new Void[0]);
        }
    }

    public void f(long j) {
        bbu.a(new TwitterScribeLog(this.p).b(new String[]{"messages:thread:rtf_message::open"}));
        this.m.add(Long.valueOf(j));
        notifyDataSetChanged();
    }
}
