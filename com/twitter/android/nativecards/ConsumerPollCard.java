package com.twitter.android.nativecards;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.annotation.AttrRes;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewAnimator;
import bbn;
import caw;
import cgl;
import cly;
import cmb;
import cmc;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.mx;
import com.twitter.config.d;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.client.bg;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.util.aj;
import com.twitter.util.al;
import dbg;
import defpackage.bcv;
import defpackage.byw;
import defpackage.bzb;
import defpackage.bze;
import defpackage.bzf;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.caf;
import defpackage.cag;
import defpackage.cai;
import defpackage.cam;
import defpackage.cao;
import defpackage.cas;
import defpackage.cat;
import java.text.DateFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import rx.subjects.e;

/* compiled from: Twttr */
public final class ConsumerPollCard extends q implements OnClickListener, bzs, cao, cat {
    public static final String[] a;
    private static final String[] c;
    private static final String[] d;
    private static final NumberFormat e;
    private static final DateFormat f;
    private final Drawable[][] A;
    private final int C;
    private final ViewAnimator D;
    private final int E;
    private final e<Void> F;
    private final dbg G;
    private final cam H;
    private long I;
    private String J;
    private String K;
    private cas L;
    private PollChoice M;
    private volatile boolean N;
    private Date O;
    private final long[] P;
    private boolean Q;
    private Integer R;
    private boolean S;
    private final o T;
    cmc b;
    private final Configuration g;
    private final View h;
    private final LinearLayout i;
    private final Button[] j;
    private final LinearLayout k;
    private final TextView[] l;
    private final TextView[] m;
    private final PollResultBarView[] n;
    private final TextView o;
    private final MediaImageView p;
    private final RichImageView z;

    /* compiled from: Twttr */
    public enum Configuration {
        TWO_CHOICE_TEXT_ONLY("poll2choice_text_only", 2, false),
        THREE_CHOICE_TEXT_ONLY("poll3choice_text_only", 3, false),
        FOUR_CHOICE_TEXT_ONLY("poll4choice_text_only", 4, false),
        TWO_CHOICE_IMAGE("poll2choice_image", 2, true),
        THREE_CHOICE_IMAGE("poll3choice_image", 3, true),
        FOUR_CHOICE_IMAGE("poll4choice_image", 4, true);
        
        public final int choiceCount;
        public final boolean hasImage;
        public final String modelName;

        private Configuration(String str, int i, boolean z) {
            this.modelName = str;
            this.choiceCount = i;
            this.hasImage = z;
        }
    }

    /* compiled from: Twttr */
    public enum PollChoice {
        NONE(0),
        ONE(1),
        TWO(2),
        THREE(3),
        FOUR(4);
        
        public final int ordinal;

        private PollChoice(int i) {
            this.ordinal = i;
        }

        static PollChoice a(int i) {
            switch (i) {
                case Util.TYPE_DASH /*0*/:
                    return NONE;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    return ONE;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    return TWO;
                case Util.TYPE_OTHER /*3*/:
                    return THREE;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    return FOUR;
                default:
                    throw new IllegalArgumentException(String.format("Could not convert ordinal %d to PollChoice", new Object[]{Integer.valueOf(i)}));
            }
        }

        static int a(PollChoice pollChoice) {
            return pollChoice.ordinal;
        }
    }

    /* compiled from: Twttr */
    enum PollState {
        CHOICES,
        RESULTS
    }

    static {
        a = new String[]{"choice1_label", "choice2_label", "choice3_label", "choice4_label"};
        c = new String[]{"choice1_count", "choice2_count", "choice3_count", "choice4_count"};
        d = new String[]{"consumerpollcard_choice1_count", "consumerpollcard_choice2_count", "consumerpollcard_choice3_count", "consumerpollcard_choice4_count"};
        e = NumberFormat.getInstance();
        f = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        f.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public ConsumerPollCard(Activity activity, DisplayMode displayMode, Configuration configuration) {
        this(activity, displayMode, new h(activity), new b(activity), configuration);
    }

    public ConsumerPollCard(Activity activity, DisplayMode displayMode, f fVar, a aVar, Configuration configuration) {
        super(activity, displayMode, fVar, aVar);
        this.F = e.q();
        this.G = new dbg();
        this.M = PollChoice.NONE;
        this.T = new o();
        this.g = configuration;
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(a((Context) activity, 2130772049), mx.NativeCardsConsumerPollStyleAttrs);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        int resourceId3 = obtainStyledAttributes.getResourceId(2, 0);
        int resourceId4 = obtainStyledAttributes.getResourceId(3, 0);
        int resourceId5 = obtainStyledAttributes.getResourceId(4, 0);
        int resourceId6 = obtainStyledAttributes.getResourceId(5, 0);
        int resourceId7 = obtainStyledAttributes.getResourceId(6, 0);
        int resourceId8 = obtainStyledAttributes.getResourceId(7, 0);
        int resourceId9 = obtainStyledAttributes.getResourceId(8, 0);
        int resourceId10 = obtainStyledAttributes.getResourceId(9, 0);
        obtainStyledAttributes.recycle();
        if (!this.g.hasImage) {
            resourceId2 = resourceId;
        }
        if (this.g.hasImage) {
            resourceId = resourceId4;
        } else {
            resourceId = resourceId3;
        }
        if (this.g.hasImage) {
            resourceId4 = resourceId6;
        } else {
            resourceId4 = resourceId5;
        }
        if (this.g.hasImage) {
            resourceId3 = resourceId8;
        } else {
            resourceId3 = resourceId7;
        }
        if (this.g.hasImage) {
            resourceId6 = resourceId10;
        } else {
            resourceId6 = resourceId9;
        }
        this.h = LayoutInflater.from(activity).inflate(resourceId2, new FrameLayout(activity), false);
        this.i = (LinearLayout) this.h.findViewById(2131952845);
        this.i.removeAllViews();
        this.j = new Button[this.g.choiceCount];
        this.k = (LinearLayout) this.h.findViewById(2131952846);
        this.k.removeAllViews();
        this.l = new TextView[this.g.choiceCount];
        this.m = new TextView[this.g.choiceCount];
        this.n = new PollResultBarView[this.g.choiceCount];
        this.A = new Drawable[this.g.choiceCount][];
        this.P = new long[this.g.choiceCount];
        this.C = activity.getResources().getDimensionPixelSize(bcv.default_corner_radius);
        for (resourceId5 = 0; resourceId5 < this.g.choiceCount; resourceId5++) {
            this.j[resourceId5] = (Button) LayoutInflater.from(activity).inflate(resourceId, null);
            this.j[resourceId5].setTag(PollChoice.values()[resourceId5 + 1]);
            this.j[resourceId5].setOnClickListener(this);
            this.j[resourceId5].setEnabled(true);
            this.j[resourceId5].setClickable(true);
            this.i.addView(this.j[resourceId5]);
            View inflate = LayoutInflater.from(activity).inflate(resourceId4, null);
            this.l[resourceId5] = (TextView) inflate.findViewById(2131952849);
            this.A[resourceId5] = this.l[resourceId5].getCompoundDrawables();
            if (resourceId6 > 0) {
                for (resourceId2 = 0; resourceId2 < this.A[resourceId5].length; resourceId2++) {
                    if (this.A[resourceId5][resourceId2] != null) {
                        this.A[resourceId5][resourceId2].setColorFilter(this.q.getResources().getColor(resourceId6), Mode.SRC_IN);
                    }
                }
            }
            this.m[resourceId5] = (TextView) inflate.findViewById(2131952850);
            this.n[resourceId5] = (PollResultBarView) inflate.findViewById(2131952848);
            this.k.addView(inflate);
        }
        this.o = (TextView) this.h.findViewById(2131952847);
        this.p = (MediaImageView) this.h.findViewById(2131952843);
        this.z = (RichImageView) this.h.findViewById(2131951669);
        if (this.p != null) {
            this.p.setOnClickListener(this);
        }
        this.D = (ViewAnimator) this.h.findViewById(2131952844);
        Animation inAnimation = this.D.getInAnimation();
        if (inAnimation != null) {
            inAnimation.setAnimationListener(new l(this));
        }
        this.E = activity.getResources().getColor(resourceId3);
        if (!(this.z == null || this.D == null)) {
            this.z.setOverlayDrawable(this.T.a(this.g, this.D, this.C));
        }
        if (displayMode == DisplayMode.FORWARD) {
            this.h.setOnClickListener(this);
        }
        this.H = new cam(this);
    }

    private int a(Context context, @AttrRes int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public void a(cai cai) {
        super.a(cai);
        this.I = cai.a;
        cgl aa = this.w != null ? this.w.aa() : null;
        String format = (aa == null || !aj.b(aa.c())) ? String.format(Locale.ROOT, "card://unknown:tweet_id:%d", new Object[]{Long.valueOf(cai.a)}) : aa.c();
        this.J = format;
        if (this.L == null) {
            this.L = new cas(bzf.a(), bzf.a().a(this.q), this.y, this);
        }
        this.L.a();
        bzr.a().a(this.y, this);
        this.H.a();
        this.G.a(this.F.c(500, TimeUnit.MILLISECONDS).c(new m(this)));
    }

    public void a() {
        super.a();
        this.H.b();
        bzr.a().b(this.y, this);
        if (this.L != null) {
            this.L.c();
            this.L.b();
        }
        if (this.p != null) {
            this.p.i();
        }
        this.G.c();
    }

    public void ak_() {
        this.H.c();
    }

    public void am_() {
        this.H.d();
    }

    public void b() {
        if (this.p != null && this.b != null) {
            this.p.a(com.twitter.media.request.a.a(this.b.a), true);
        }
    }

    public View e() {
        return this.h;
    }

    public void onClick(View view) {
        if (view == this.h && this.w != null && this.s != null) {
            this.s.a(this.w, this.t);
        } else if (view == this.p) {
            this.F.b_(null);
        } else if (!this.N && this.M == PollChoice.NONE) {
            this.M = (PollChoice) view.getTag();
            long[] jArr = this.P;
            int i = this.M.ordinal - 1;
            jArr[i] = jArr[i] + 1;
            if (this.M != PollChoice.NONE) {
                i();
                a(this.M);
                c(true);
            }
            this.r.a("vote", m());
            if (d.a("ad_formats_billable_poll_enabled")) {
                this.r.a(PromotedEvent.aD);
            }
        }
    }

    private void i() {
        cly cly = new cly();
        cly.a("consumerpollcard_choice", Integer.valueOf(PollChoice.a(this.M)));
        for (int i = 0; i < this.g.choiceCount; i++) {
            cly.a(d[i], Long.valueOf(this.P[i]));
        }
        cly.a("consumerpollcard_counts_are_final", Boolean.valueOf(this.N));
        b(this.y, cly);
    }

    private void a(PollChoice pollChoice) {
        if (pollChoice != PollChoice.NONE && this.L != null && this.K != null && this.J != null && this.R == null) {
            byw byw = new byw();
            byw.a("twitter:string:card_uri", this.J);
            byw.a("twitter:long:original_tweet_id", Long.toString(this.I));
            byw.a("twitter:string:response_card_name", this.g.modelName);
            byw.a("twitter:string:cards_platform", "Android-12");
            byw.a("twitter:string:selected_choice", Integer.toString(PollChoice.a(pollChoice)));
            this.R = Integer.valueOf(this.L.b(this.K, byw));
        }
    }

    private void k() {
        int i = this.M.ordinal - 1;
        int childCount = this.k.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            this.l[i2].setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
            if (this.M != PollChoice.NONE && i == i2) {
                this.l[i2].setCompoundDrawablesWithIntrinsicBounds(this.A[i][0], this.A[i][1], this.A[i][2], this.A[i][3]);
            }
            i2++;
        }
    }

    private void a(long j, boolean z, long j2) {
        if (this.q != null && e != null && this.o != null) {
            String a = a(j, e, this.q);
            String a2 = a(z, j2, this.q);
            this.o.setText(String.format(this.q.getString(2131362308), new Object[]{a, a2}));
        }
    }

    public void a(long j, cmb cmb) {
        for (int i = 0; i < this.g.choiceCount; i++) {
            CharSequence a = caw.a(a[i], cmb);
            if (a != null) {
                this.j[i].setText(a);
                this.l[i].setText(a);
            }
        }
        this.b = cmc.a("image", cmb);
        if (this.K == null) {
            this.K = caw.a("api", cmb);
        }
        a(cmb, "counts_are_final", c);
        a(cmb, "selected_choice");
        if (this.O == null) {
            String a2 = caw.a("end_datetime_utc", cmb);
            if (a2 != null) {
                try {
                    this.O = f.parse(a2);
                } catch (Throwable e) {
                    bbn.a(e);
                }
            }
            c(false);
        }
        this.Q = true;
    }

    public void a(long j, cly cly) {
        super.a(j, cly);
        Integer a = caf.a("consumerpollcard_choice", cly);
        this.M = a != null ? PollChoice.a(a.intValue()) : PollChoice.NONE;
        a((cmb) cly, "consumerpollcard_counts_are_final", d);
        c(false);
    }

    public int d() {
        return bze.c();
    }

    public boolean g() {
        return !this.N;
    }

    public void aQ_() {
        if (this.L != null && this.K != null && this.J != null) {
            byw byw = new byw();
            byw.a("twitter:string:card_uri", this.J);
            byw.a("twitter:string:cards_platform", "Android-12");
            byw.a("twitter:string:response_card_name", this.g.modelName);
            this.L.a(this.K, byw);
        }
    }

    private void a(cmb cmb, String str, String[] strArr) {
        int i = 0;
        if (!this.N) {
            this.N = bzb.a(str, cmb, false);
            while (i < this.g.choiceCount) {
                Long a = cag.a(strArr[i], cmb);
                if (a != null && (a.longValue() > this.P[i] || this.N)) {
                    this.P[i] = a.longValue();
                }
                i++;
            }
        }
    }

    private void a(cmb cmb, String str) {
        Object a = caw.a(str, cmb);
        if (aj.b(a)) {
            try {
                this.M = PollChoice.a(Integer.parseInt(a));
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
    }

    private void c(boolean z) {
        int i;
        int i2 = 0;
        k();
        long j = 0;
        for (i = 0; i < this.g.choiceCount; i++) {
            j += this.P[i];
        }
        a(j, this.N, this.O != null ? this.O.getTime() - al.b() : 0);
        if (this.N || this.M != PollChoice.NONE || (this.w.s == bg.a().c().g() && this.q != null)) {
            for (i = 0; i < this.g.choiceCount; i++) {
                int i3;
                if (j == 0) {
                    i3 = 0;
                } else {
                    i3 = a(this.P[i], j);
                }
                this.m[i].setText(a(i3, this.q));
                this.n[i].setGoalPercentage(i3);
                if (this.N) {
                    this.n[i].setRoundAllCorners(true);
                }
            }
            a(PollState.RESULTS, z);
        } else {
            a(PollState.CHOICES, z);
        }
        if (this.N) {
            long j2 = 0;
            for (i = 0; i < this.g.choiceCount; i++) {
                this.l[i].setTypeface(this.l[i].getTypeface(), 0);
                this.m[i].setTypeface(this.m[i].getTypeface(), 0);
                if (this.P[i] > j2) {
                    j2 = this.P[i];
                }
            }
            if (j2 > 0) {
                while (i2 < this.g.choiceCount) {
                    if (j2 == this.P[i2]) {
                        this.l[i2].setTypeface(this.l[i2].getTypeface(), 1);
                        this.m[i2].setTypeface(this.m[i2].getTypeface(), 1);
                        this.n[i2].setBarColor(this.E);
                    }
                    i2++;
                }
            }
        }
    }

    private void a(PollState pollState, boolean z) {
        int i;
        Animation outAnimation = this.D.getOutAnimation();
        Animation inAnimation = this.D.getInAnimation();
        boolean z2 = this.S;
        if (!(z || z2)) {
            this.D.setOutAnimation(null);
            this.D.setInAnimation(null);
        }
        int ordinal = pollState.ordinal();
        if (z && this.D.getDisplayedChild() != ordinal) {
            this.S = true;
        }
        this.D.setDisplayedChild(ordinal);
        if (!(z || z2)) {
            this.D.setOutAnimation(outAnimation);
            this.D.setInAnimation(inAnimation);
        }
        if (!(pollState != PollState.RESULTS || z2 || z)) {
            for (i = 0; i < this.g.choiceCount; i++) {
                this.n[i].b();
            }
        }
        for (i = 0; i < this.g.choiceCount; i++) {
            boolean z3;
            Button button = this.j[i];
            if (pollState == PollState.CHOICES) {
                z3 = true;
            } else {
                z3 = false;
            }
            button.setClickable(z3);
        }
    }

    public void a(int i, cmb cmb) {
        if (this.Q) {
            if (Integer.valueOf(i).equals(this.R)) {
                this.R = null;
            }
            boolean z = this.N;
            a(cmb, "counts_are_final", c);
            a(cmb, "selected_choice");
            i();
            c(z != this.N);
        }
    }

    public void a(int i) {
        if (this.Q && Integer.valueOf(i).equals(this.R)) {
            this.R = null;
            long[] jArr = this.P;
            int i2 = this.M.ordinal - 1;
            jArr[i2] = jArr[i2] - 1;
            this.M = PollChoice.NONE;
            i();
            c(true);
        }
    }

    static String a(boolean z, long j, Context context) {
        if (z) {
            return context.getString(2131362305);
        }
        int toDays = (int) TimeUnit.MILLISECONDS.toDays(j);
        int toHours = (int) (TimeUnit.MILLISECONDS.toHours(j) - ((long) (toDays * 24)));
        int toMinutes = (int) (TimeUnit.MILLISECONDS.toMinutes(j) - (TimeUnit.MILLISECONDS.toHours(j) * 60));
        StringBuilder stringBuilder = new StringBuilder();
        switch (toDays) {
            case Util.TYPE_DASH /*0*/:
                toDays = 0;
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                stringBuilder.append(context.getString(2131362582));
                toDays = 1;
                break;
            default:
                stringBuilder.append(context.getString(2131362579, new Object[]{Integer.valueOf(toDays)}));
                toDays = 1;
                break;
        }
        switch (toHours) {
            case Util.TYPE_DASH /*0*/:
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (stringBuilder.length() != 0) {
                    stringBuilder.append(" ");
                }
                stringBuilder.append(context.getString(2131362583));
                break;
            default:
                if (stringBuilder.length() != 0) {
                    stringBuilder.append(" ");
                }
                stringBuilder.append(context.getString(2131362580, new Object[]{Integer.valueOf(toHours)}));
                break;
        }
        switch (toMinutes) {
            case Util.TYPE_DASH /*0*/:
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (toDays == 0) {
                    if (stringBuilder.length() != 0) {
                        stringBuilder.append(" ");
                    }
                    stringBuilder.append(context.getString(2131362584));
                    break;
                }
                break;
            default:
                if (toDays == 0) {
                    if (stringBuilder.length() != 0) {
                        stringBuilder.append(" ");
                    }
                    stringBuilder.append(context.getString(2131362581, new Object[]{Integer.valueOf(toMinutes)}));
                    break;
                }
                break;
        }
        if (stringBuilder.length() > 0) {
            return stringBuilder.append(context.getString(2131362307)).toString();
        }
        return context.getString(2131362306);
    }

    static String a(int i, Context context) {
        return String.format(context.getString(2131362309), new Object[]{Integer.valueOf(i)});
    }

    static int a(long j, long j2) {
        if (j2 == 0) {
            j2 = 1;
        }
        return (int) Math.round((((double) j) / ((double) j2)) * 100.0d);
    }

    static String a(long j, NumberFormat numberFormat, Context context) {
        String format = numberFormat.format(j);
        return String.format(context.getString(j == 1 ? 2131362311 : 2131362310), new Object[]{format});
    }
}
