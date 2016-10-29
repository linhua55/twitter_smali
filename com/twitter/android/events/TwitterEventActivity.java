package com.twitter.android.events;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.v4.os.EnvironmentCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.SearchFragment;
import com.twitter.android.fl;
import com.twitter.android.io;
import com.twitter.android.km;
import com.twitter.android.mx;
import com.twitter.android.nw;
import com.twitter.android.pl;
import com.twitter.android.widget.TopicView$TopicData;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.config.d;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.Session.LoginStatus;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.client.navigation.ac;
import com.twitter.library.client.navigation.w;
import com.twitter.library.provider.di;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.request.b;
import com.twitter.media.request.c;
import com.twitter.media.request.i;
import com.twitter.media.ui.image.BackgroundImageView;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.model.topic.g;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.serialization.m;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.cun;
import defpackage.cvi;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class TwitterEventActivity extends ScrollingHeaderActivity implements OnClickListener, fl, pl, c {
    public static final Uri a;
    public static final Uri b;
    public static final Uri c;
    public static final Uri d;
    public static final Uri e;
    public static final Uri f;
    private ViewGroup A;
    private BackgroundImageView B;
    private boolean C;
    private km D;
    private HashMap<Integer, Long> E;
    private nw K;
    private String L;
    private int M;
    private String N;
    private ToolBar O;
    private TextView P;
    private String Q;
    private boolean R;
    private File S;
    private String T;
    private long U;
    private long V;
    private ViewGroup W;
    private ViewGroup X;
    private boolean Y;
    private int Z;
    protected boolean g;
    protected Drawable h;
    protected String i;
    protected String j;
    protected TopicView$TopicData k;
    private di l;

    protected abstract List<at> N_();

    protected abstract void b(TopicView$TopicData topicView$TopicData);

    protected abstract String f();

    protected abstract boolean r();

    public TwitterEventActivity() {
        this.Y = false;
        this.Z = 0;
    }

    static {
        a = Uri.parse("twitter://events/default");
        b = Uri.parse("twitter://events/commentary");
        c = Uri.parse("twitter://events/media");
        d = Uri.parse("twitter://events/photos");
        e = Uri.parse("twitter://events/videos");
        f = Uri.parse("twitter://events/matches");
    }

    public void b(Bundle bundle, t tVar) {
        this.l = di.a((Context) this, ab().g());
        if (bundle == null) {
            this.E = new HashMap();
            this.T = null;
            this.Q = f();
            this.U = 0;
        } else {
            this.E = (HashMap) bundle.getSerializable("search_ids");
            this.Q = bundle.getString("scribe_component");
            this.T = bundle.getString("prev_header_image");
            this.U = bundle.getLong("header_image_id", 0);
        }
        Intent intent = getIntent();
        long longExtra = intent.getLongExtra("search_id", -1);
        if (longExtra != -1) {
            this.E.put(Integer.valueOf(0), Long.valueOf(longExtra));
        }
        Intent intent2 = (Intent) intent.getParcelableExtra("EXTRA_PARENT_EVENT");
        if (intent2 != null) {
            c(intent2);
        }
        this.l.a(this.E.values());
        this.k = (TopicView$TopicData) intent.getParcelableExtra("topic_data");
        TopicView$TopicData topicView$TopicData = this.k;
        this.i = intent.getStringExtra("event_page_type");
        this.g = "LEAGUE".equals(this.i);
        if (this.g || topicView$TopicData == null) {
            this.L = intent.getStringExtra("event_id");
            this.M = intent.getIntExtra("event_type", -1);
        } else {
            this.L = topicView$TopicData.a;
            this.M = topicView$TopicData.b;
        }
        this.N = "search";
        super.b(bundle, tVar);
        this.o.setOnClickListener(this);
        if (topicView$TopicData != null) {
            a(topicView$TopicData);
        }
        this.P = (TextView) LayoutInflater.from(this).inflate(2130969378, null);
        this.P.setText(intent.getStringExtra("query"));
        this.P.setOnClickListener(this);
        longExtra = ab().g();
        ScribeItem a = TwitterScribeItem.a(this.L, this.M);
        TwitterScribeLog twitterScribeLog = new TwitterScribeLog(longExtra);
        String[] strArr = new String[5];
        strArr[0] = this.N;
        strArr[1] = this.g ? null : "games";
        strArr[2] = this.Q;
        strArr[3] = null;
        strArr[4] = "takeover";
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) twitterScribeLog.b(strArr)).f("query")).d(intent.getStringExtra("search_src_ref"))).a(a));
        if (this.m != null && !this.m.isEmpty() && this.n.getCurrentItem() == 0) {
            at atVar = (at) this.m.get(0);
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(longExtra).b(this.N, atVar.e, this.Q, null, "impression")).a(a));
        }
    }

    protected void onResume() {
        super.onResume();
        if (VERSION.SDK_INT >= 21) {
            E();
        }
        this.O = X();
    }

    @TargetApi(21)
    private void E() {
        getWindow().setStatusBarColor(ViewCompat.MEASURED_STATE_MASK);
    }

    public t a(Bundle bundle, t tVar) {
        boolean z = true;
        super.a(bundle, tVar);
        tVar.d(true);
        if (io.a()) {
            z = false;
        }
        tVar.c(z);
        return tVar;
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017198);
        return true;
    }

    public int b(w wVar) {
        super.b(wVar);
        ToolBar j = wVar.j();
        j.a(2131953426).b(false);
        j.a(2131953473).b(true);
        this.P.setVisibility(0);
        j.setCustomView(this.P);
        return 2;
    }

    public boolean a(ac acVar) {
        long g = ab().g();
        String stringExtra = getIntent().getStringExtra("query");
        switch (acVar.a()) {
            case 2131953473:
                aq.a((Context) this, stringExtra, stringExtra);
                bbu.a(new TwitterScribeLog(g).b(this.N, null, this.Q, "query", "share"));
                return true;
            default:
                return super.a(acVar);
        }
    }

    public void onClick(View view) {
        if (view.getId() == 2131953068) {
            J();
            N().b(this.P.getText());
        }
    }

    protected boolean y() {
        return d.a("event_timelines_blur_header_enabled");
    }

    protected void a(int i) {
        super.a(i);
        if (i == this.D.a()) {
            SearchFragment searchFragment = (SearchFragment) ((at) this.m.get(i)).a(getSupportFragmentManager());
            if (searchFragment != null) {
                searchFragment.n();
                return;
            }
            return;
        }
        this.n.setCurrentItem(i);
        this.D.a(i);
    }

    protected String n() {
        CharSequence stringExtra = getIntent().getStringExtra("query");
        if (aj.b(stringExtra) && stringExtra.charAt(0) == '#') {
            return " " + stringExtra;
        }
        if (this.k == null || !aj.b(this.k.i)) {
            return super.k();
        }
        return " " + this.k.i;
    }

    protected String k() {
        String n = n();
        if (n.length() <= 1 || (n.charAt(1) != '#' && n.charAt(1) != '$')) {
            return super.k();
        }
        return getResources().getString(2131364012) + n;
    }

    protected int[] d() {
        String n = n();
        if (n.length() <= 1 || (n.charAt(1) != '#' && n.charAt(1) != '$')) {
            return super.d();
        }
        return new int[]{0, 0};
    }

    protected void onRestart() {
        super.onRestart();
        if (this.B != null) {
            this.B.aG_();
        }
    }

    protected void onStop() {
        if (this.A != null) {
            this.B.f();
        }
        super.onStop();
    }

    protected void onDestroy() {
        if (this.K != null) {
            this.K.cancel(true);
            this.K = null;
        }
        if (ab().b() == LoginStatus.LOGGED_IN) {
            this.l.b(this.E.values());
        }
        this.B = null;
        super.onDestroy();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putSerializable("search_ids", this.E);
        if (this.S != null) {
            bundle.putString("prev_header_image", this.S.getAbsolutePath());
        }
        if (this.U != 0) {
            bundle.putLong("header_image_id", this.U);
        }
        bundle.putString("scribe_component", this.Q);
        super.onSaveInstanceState(bundle);
    }

    public void a(boolean z, ListView listView, SearchFragment searchFragment) {
    }

    public boolean a(String str, long j, TwitterTopic twitterTopic, String str2) {
        this.j = str;
        return false;
    }

    protected View l() {
        return null;
    }

    protected View m() {
        return null;
    }

    protected boolean p() {
        if (this.g) {
            if (this.W != null) {
                this.W.setVisibility(8);
            }
            if (this.X == null) {
                return false;
            }
            this.X.setVisibility(8);
            return false;
        } else if (getResources().getConfiguration().orientation != 2 && (this.W == null || this.W.getVisibility() != 8)) {
            return true;
        } else {
            if (this.X == null) {
                return false;
            }
            this.X.setVisibility(8);
            return false;
        }
    }

    protected void s() {
        this.h = getResources().getDrawable(2130840227);
    }

    public void a(TopicView$TopicData topicView$TopicData) {
        if (topicView$TopicData.a != null) {
            long g = ab().g();
            ScribeItem a = TwitterScribeItem.a(this.L, this.M);
            if (this.A != null) {
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).b(this.N, "event_card", this.Q, null, "pull_to_refresh")).f("query")).a(a));
            } else {
                this.A = (ViewGroup) LayoutInflater.from(this).inflate(2130968810, this.o, false);
                setHeaderView(this.A);
                this.B = (BackgroundImageView) this.A.findViewById(2131952452);
                if (r()) {
                    this.B.setAspectRatio(3.0f);
                    File a2 = this.U != 0 ? a((Context) this, this.U) : null;
                    if (a2 != null && a2.exists()) {
                        this.B.setDefaultDrawable(Drawable.createFromPath(a2.getAbsolutePath()));
                    } else if (this.T == null || !new File(this.T).exists()) {
                        s();
                        this.B.setDefaultDrawable(this.h);
                    } else {
                        this.B.setDefaultDrawable(Drawable.createFromPath(this.T));
                    }
                }
                this.W = (ViewGroup) this.A.findViewById(2131952451);
                this.X = (ViewGroup) this.A.findViewById(2131952450);
                View l = l();
                View m = m();
                if (!(this.W == null || l == null)) {
                    this.W.addView(l);
                }
                if (!(this.X == null || m == null)) {
                    this.X.addView(m);
                }
            }
            if (r()) {
                b(topicView$TopicData.e);
            } else {
                s();
                this.B.a(null);
                this.B.setDefaultDrawable(this.h);
                this.B.getLayoutParams().height = this.r;
                this.B.requestLayout();
            }
            b(topicView$TopicData);
            if (p()) {
                bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(g).b(this.N, "event_card", this.Q, null, "impression")).f("query")).a(a));
                this.k = topicView$TopicData;
            }
        }
    }

    private void b(String str) {
        if (aj.a((CharSequence) str)) {
            this.B.a(null);
            return;
        }
        long hashCode = (long) str.hashCode();
        if (this.V != hashCode) {
            this.V = hashCode;
            this.U = hashCode;
            this.S = a(getApplicationContext(), this.U);
            boolean z = this.S != null && this.S.exists();
            this.R = z;
            if (this.R) {
                str = Uri.fromFile(this.S).toString();
            }
            this.B.a((b) a.a(str).a((i) this));
        }
    }

    protected int a(Resources resources) {
        return resources.getDimensionPixelSize(2131689936);
    }

    public static File a(Context context, long j) {
        File b = cvi.b(context);
        if (b == null) {
            return null;
        }
        return new File(b, j + "_" + context.getResources().getConfiguration().orientation + "_event_header.jpg");
    }

    private void a(Bitmap bitmap, File file) {
        Closeable fileOutputStream;
        Throwable e;
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                bitmap.compress(CompressFormat.JPEG, 100, fileOutputStream);
                cun.a(fileOutputStream);
            } catch (Exception e2) {
                e = e2;
                try {
                    bbn.a(e);
                    cun.a(fileOutputStream);
                } catch (Throwable th) {
                    e = th;
                    cun.a(fileOutputStream);
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = null;
            bbn.a(e);
            cun.a(fileOutputStream);
        } catch (Throwable th2) {
            e = th2;
            fileOutputStream = null;
            cun.a(fileOutputStream);
            throw e;
        }
    }

    protected boolean A() {
        return true;
    }

    protected void g(int i) {
        if (!A()) {
            super.g(i);
        } else if (this.w != null) {
            h(i);
        }
    }

    protected boolean B() {
        return false;
    }

    protected int C() {
        return (this.q.getBottom() + ((int) this.q.getTranslationY())) - this.r;
    }

    public float t() {
        int G = G() - F();
        if (G > 0) {
            return Math.min(1.0f, Math.abs(((float) this.Z) / ((float) G)));
        }
        return 0.0f;
    }

    private int F() {
        if (this.O == null || this.O.getVisibility() != 0) {
            return 0;
        }
        return this.O.getMeasuredHeight();
    }

    private int G() {
        if (this.B == null || this.B.getVisibility() != 0) {
            return 0;
        }
        return this.B.getMeasuredHeight();
    }

    protected void a(d dVar) {
        int i = 0;
        if (dVar.f() == this.n.getCurrentItem() && dVar.b() != -1 && this.o != null && this.O != null && this.B != null && this.q != null && dVar.e() != 0) {
            int i2;
            int i3;
            int G = G();
            int F = F();
            int measuredHeight = this.q.getVisibility() != 0 ? 0 : this.q.getMeasuredHeight();
            if (this.W == null || this.W.getVisibility() != 0) {
                i2 = 0;
            } else {
                i2 = this.W.getMeasuredHeight();
            }
            if (this.X == null || this.X.getVisibility() != 0) {
                i3 = 0;
            } else {
                i3 = this.X.getMeasuredHeight();
            }
            if (dVar.b() != 0) {
                measuredHeight = (((-G) - i2) - i3) - measuredHeight;
                this.Z += dVar.a();
                if (this.Z > 0) {
                    this.Z = 0;
                } else if (this.Z < measuredHeight) {
                    this.Z = measuredHeight;
                }
            } else if (dVar.a() > 0) {
                this.Z = Math.max(this.Z, dVar.c());
            } else if (dVar.a() < 0) {
                this.Z = Math.min(this.Z, dVar.c());
            }
            i2 = (F - i3) - G;
            i3 = F - G;
            G = this.Z + (G - F);
            if (this.Z > i2 && (dVar.b() == 0 || !this.Y)) {
                this.o.setTranslationY(this.Z < i3 ? (float) i3 : (float) this.Z);
                this.O.setTranslationY(0.0f);
                this.B.setTranslationY(0.0f);
                if (this.W != null) {
                    this.W.setTranslationY(0.0f);
                }
                if (this.X != null) {
                    this.X.setTranslationY(G > 0 ? 0.0f : (float) G);
                }
                this.q.setTranslationY((float) this.Z);
                this.Y = false;
            } else if (this.Z + 150 <= i2 || (dVar.b() != 0 && this.Y)) {
                this.Y = true;
                if (dVar.a() > 0 && this.Z > i2) {
                    this.Z = i2;
                }
                if (!B()) {
                    if (dVar.b() <= 0 || !((this.O.getTranslationY() == ((float) (-F)) || this.O.getTranslationY() == 0.0f) && dVar.e() == 2)) {
                        measuredHeight = (int) (this.O.getTranslationY() + (((float) dVar.a()) / 2.0f));
                        if (measuredHeight < (-F)) {
                            measuredHeight = -F;
                        }
                        if (measuredHeight <= 0) {
                            i = measuredHeight;
                        }
                        this.o.setTranslationY((float) i3);
                        this.O.setTranslationY((float) i);
                        this.B.setTranslationY((float) i);
                        if (this.W != null) {
                            this.W.setTranslationY((float) i);
                        }
                        if (this.X != null) {
                            this.X.setTranslationY((float) G);
                        }
                        this.q.setTranslationY((float) (i + i2));
                    }
                }
            } else {
                this.Y = true;
                this.o.setTranslationY((float) i3);
                this.O.setTranslationY(0.0f);
                this.B.setTranslationY(0.0f);
                if (this.W != null) {
                    this.W.setTranslationY(0.0f);
                }
                if (this.X != null) {
                    this.X.setTranslationY((float) G);
                }
                this.q.setTranslationY((float) i2);
            }
        }
    }

    protected void b(Bitmap bitmap) {
        try {
            a(bitmap);
            if (!this.C) {
                if (this.K != null) {
                    this.K.cancel(true);
                }
                this.K = new nw(this, false);
                this.K.execute(new Bitmap[]{bitmap});
            }
        } catch (OutOfMemoryError e) {
            this.z.b();
        }
    }

    public void a(g gVar) {
        if (this.k != null) {
            this.k.m = m.a((Object) gVar, com.twitter.model.topic.d.a);
            a(this.k);
        }
    }

    protected void b(int i) {
        super.b(i);
        this.C = true;
        this.K = null;
    }

    protected BaseAdapter a(List<at> list) {
        this.D = new km(list);
        return this.D;
    }

    protected PagerAdapter a(List<at> list, ViewPager viewPager) {
        return new f(this, this, list, viewPager, this.p, this.D);
    }

    protected String a() {
        return null;
    }

    protected String c() {
        return null;
    }

    protected void a(Drawable drawable) {
        if (this.B != null) {
            this.B.setBackgroundDrawable(drawable);
        }
    }

    public List<at> a(String str, String str2) {
        List<String> c = d.c(str);
        String b = d.b(str2);
        n a = n.a(c.size());
        if (c.isEmpty()) {
            a.c(a(a, 0, getString(2131362803), "tweets"));
        } else {
            int i = 0;
            for (String toLowerCase : c) {
                String toLowerCase2 = toLowerCase.toLowerCase();
                int i2 = -1;
                switch (toLowerCase2.hashCode()) {
                    case -989034367:
                        if (toLowerCase2.equals("photos")) {
                            i2 = 1;
                            break;
                        }
                        break;
                    case -860977118:
                        if (toLowerCase2.equals("tweets")) {
                            i2 = 3;
                            break;
                        }
                        break;
                    case -765289749:
                        if (toLowerCase2.equals("official")) {
                            i2 = 2;
                            break;
                        }
                        break;
                    case 840862003:
                        if (toLowerCase2.equals("matches")) {
                            i2 = 0;
                            break;
                        }
                        break;
                }
                switch (i2) {
                    case mx.View_android_theme /*0*/:
                        a.c(a(f, i, b.e(this.L) ? getString(2131363913) : getString(2131363907), "games"));
                        i2 = i + 1;
                        break;
                    case WireMessage.WIRE_CHAT /*1*/:
                        if (a(a, i, b)) {
                            i++;
                        }
                        i2 = i;
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        a.c(a(b, i, getString(2131363550), "commentary"));
                        i2 = i + 1;
                        break;
                    case WireMessage.WIRE_AUTH /*3*/:
                        a.c(a(a, i, getString(2131362803), "tweets"));
                        i2 = i + 1;
                        break;
                    default:
                        i2 = i;
                        break;
                }
                i = i2;
            }
        }
        return (List) a.q();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(com.twitter.util.collection.n<com.twitter.library.client.at> r8, int r9, java.lang.String r10) {
        /*
        r7 = this;
        r6 = 2131363556; // 0x7f0a06e4 float:1.8346924E38 double:1.053033512E-314;
        r1 = 0;
        r0 = 1;
        r3 = r7.getResources();
        r2 = com.twitter.util.aj.b(r10);
        if (r2 == 0) goto L_0x0075;
    L_0x000f:
        r4 = r10.toLowerCase();
        r2 = -1;
        r5 = r4.hashCode();
        switch(r5) {
            case -989034367: goto L_0x0045;
            case -816678056: goto L_0x0030;
            case 103772132: goto L_0x003a;
            default: goto L_0x001b;
        };
    L_0x001b:
        r1 = r2;
    L_0x001c:
        switch(r1) {
            case 0: goto L_0x0050;
            case 1: goto L_0x0064;
            default: goto L_0x001f;
        };
    L_0x001f:
        r1 = d;
        r2 = r3.getString(r6);
        r3 = "highlights";
        r1 = r7.a(r1, r9, r2, r3);
        r8.c(r1);
    L_0x002f:
        return r0;
    L_0x0030:
        r5 = "videos";
        r4 = r4.equals(r5);
        if (r4 == 0) goto L_0x001b;
    L_0x0039:
        goto L_0x001c;
    L_0x003a:
        r1 = "media";
        r1 = r4.equals(r1);
        if (r1 == 0) goto L_0x001b;
    L_0x0043:
        r1 = r0;
        goto L_0x001c;
    L_0x0045:
        r1 = "photos";
        r1 = r4.equals(r1);
        if (r1 == 0) goto L_0x001b;
    L_0x004e:
        r1 = 2;
        goto L_0x001c;
    L_0x0050:
        r1 = e;
        r2 = 2131363914; // 0x7f0a084a float:1.834765E38 double:1.0530336887E-314;
        r2 = r3.getString(r2);
        r3 = "highlights";
        r1 = r7.a(r1, r9, r2, r3);
        r8.c(r1);
        goto L_0x002f;
    L_0x0064:
        r1 = c;
        r2 = r3.getString(r6);
        r3 = "highlights";
        r1 = r7.a(r1, r9, r2, r3);
        r8.c(r1);
        goto L_0x002f;
    L_0x0075:
        r0 = r1;
        goto L_0x002f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.events.TwitterEventActivity.a(com.twitter.util.collection.n, int, java.lang.String):boolean");
    }

    protected at a(Uri uri, int i, String str, String str2) {
        CharSequence charSequence;
        int i2;
        Class cls;
        String str3;
        long longValue;
        boolean z;
        if (uri.equals(a)) {
            CharSequence charSequence2 = null;
            charSequence = null;
            i2 = 0;
            cls = EventLandingFragment.class;
        } else if (uri.equals(b)) {
            r4 = "official";
            charSequence = null;
            i2 = 1;
            cls = EventLandingFragment.class;
        } else if (uri.equals(d)) {
            r4 = "photo";
            charSequence = null;
            i2 = 3;
            cls = ScrollableEventGridFragment.class;
        } else if (uri.equals(c)) {
            r4 = "photo";
            charSequence = null;
            i2 = 7;
            cls = ScrollableEventGridFragment.class;
        } else if (uri.equals(e)) {
            r4 = "video";
            charSequence = null;
            i2 = -1;
            cls = EventLandingFragment.class;
        } else if (uri.equals(f)) {
            r4 = "schedule";
            Object obj = "schedule";
            i2 = 8;
            cls = EventLandingFragment.class;
        } else {
            throw new IllegalArgumentException("Unknown Uri: " + uri);
        }
        switch (this.M) {
            case WireMessage.WIRE_CONTROL /*2*/:
                str3 = "spev";
                break;
            default:
                str3 = EnvironmentCompat.MEDIA_UNKNOWN;
                break;
        }
        if (this.E.get(Integer.valueOf(i2)) != null) {
            longValue = ((Long) this.E.get(Integer.valueOf(i2))).longValue();
        } else {
            longValue = aj.a.nextLong();
        }
        this.l.j(longValue);
        this.E.put(Integer.valueOf(i2), Long.valueOf(longValue));
        j jVar = (j) ((j) ((j) ((j) ((j) ((j) ((j) j.a(getIntent()).b(2131362672)).h(true)).a("search_type", i2)).a("fetch_type", 5)).b("scribe_page", this.N)).b("scribe_section", str2)).b("scribe_component", this.Q);
        String str4 = "event_header_available";
        if (this.g) {
            z = false;
        } else {
            z = true;
        }
        jVar = (j) ((j) ((j) ((j) ((j) ((j) ((j) jVar.a(str4, z)).b("q_source", str3)).b("event_id", this.L)).a("event_type", this.M)).a("fragment_page_number", i)).a("should_shim", false)).a("search_id", longValue);
        if (aj.b(charSequence2)) {
            jVar.b("query_rewrite_id", charSequence2);
        }
        if (aj.b(charSequence)) {
            jVar.b("data_lookup_id", charSequence);
        }
        return new au(uri, cls).a((CharSequence) str).a(str2).a(jVar.b()).a();
    }

    @ColorInt
    protected int b(Resources resources) {
        return 0;
    }

    public void a(ImageResponse imageResponse) {
        Bitmap bitmap = (Bitmap) imageResponse.f();
        if (bitmap != null) {
            b(bitmap);
            if (!this.R && this.S != null) {
                a(bitmap, this.S);
            }
        } else if (!this.R || this.S == null) {
            this.z.b();
        } else {
            this.S.delete();
            b(((a) imageResponse.e()).a());
        }
    }
}
