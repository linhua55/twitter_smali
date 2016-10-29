package com.twitter.android.nativecards;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import caw;
import cly;
import cmb;
import cmc;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.card.j;
import com.twitter.android.composer.aw;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.BaseMediaImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import defpackage.bzb;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.caf;
import defpackage.cag;
import defpackage.cai;
import defpackage.cbc;
import defpackage.cbd;

/* compiled from: Twttr */
public class PollCard extends q implements OnClickListener, bzs, cbd {
    private static final int[] c;
    private static final Integer[] d;
    private static final Integer[] e;
    private static final int[] f;
    private static final int[] g;
    private static final int[] h;
    private final View A;
    private final View C;
    private final MediaImageView[] D;
    private final TwitterButton[] E;
    private final MediaImageView[] F;
    private final String[] G;
    private final MediaImageView[] H;
    private final MediaImageView[] I;
    private final TextView[] J;
    private final TextView K;
    private final TextView L;
    private final MediaImageView M;
    private final View N;
    private Long O;
    private int P;
    protected Animation a;
    protected Animation b;
    private final Configuration i;
    private final View j;
    private final MediaImageView k;
    private final TextView l;
    private final View m;
    private final TextView n;
    private final TextView o;
    private final TwitterButton p;
    private final View z;

    /* compiled from: Twttr */
    public enum Configuration {
        TWO_CHOICE_WITH_RESULTS("2427656750:poll_choice2_r", 2, 2130969098, 0, 2, 2, false),
        TWO_CHOICE_WITH_MESSAGE("2427656750:poll_choice2_m", 2, 2130969098, 0, 1, 1, true),
        FOUR_CHOICE_WITH_MESSAGE("2427656750:poll_choice4_m", 4, 2130969099, 0, 1, 1, true),
        FOUR_CHOICE_WITH_RESULTS("2427656750:poll_choice4_r", 4, 2130969099, 0, 2, 2, true);
        
        public final int choiceCount;
        public final int completedState;
        public final int initialState;
        public final boolean isForwardTitleBarVisible;
        public final int layoutId;
        public final String name;
        public final int postVoteState;

        private Configuration(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            this.name = str;
            this.choiceCount = i;
            this.layoutId = i2;
            this.initialState = i3;
            this.postVoteState = i4;
            this.completedState = i5;
            this.isForwardTitleBarVisible = z;
        }
    }

    static {
        c = new int[]{2131952896, 2131952898, 2131952913, 2131952915};
        d = new Integer[]{Integer.valueOf(2131952897), Integer.valueOf(2131952899), null, null};
        e = new Integer[]{Integer.valueOf(2131952911), Integer.valueOf(2131952912), Integer.valueOf(2131952914), Integer.valueOf(2131952916)};
        f = new int[]{2131952905, 2131952908, 2131952918, 2131952921};
        g = new int[]{2131952906, 2131952909, 2131952919, 2131952922};
        h = new int[]{2131952907, 2131952910, 2131952920, 2131952923};
    }

    public PollCard(Activity activity, DisplayMode displayMode, Configuration configuration) {
        this(activity, displayMode, new h(activity), new b(activity), configuration);
    }

    public PollCard(Activity activity, DisplayMode displayMode, f fVar, a aVar, Configuration configuration) {
        super(activity, displayMode, fVar, aVar);
        if (configuration.choiceCount < 1 || configuration.choiceCount > 4) {
            throw new IllegalArgumentException();
        }
        this.i = configuration;
        this.j = d();
        this.k = (MediaImageView) this.j.findViewById(2131952890);
        this.l = (TextView) this.j.findViewById(2131952891);
        this.m = this.j.findViewById(2131952895);
        this.n = (TextView) this.j.findViewById(2131951868);
        this.o = (TextView) this.j.findViewById(2131952333);
        this.p = (TwitterButton) this.j.findViewById(2131952917);
        this.D = new MediaImageView[this.i.choiceCount];
        this.E = new TwitterButton[this.i.choiceCount];
        this.F = new MediaImageView[this.i.choiceCount];
        this.G = new String[this.i.choiceCount];
        this.H = new MediaImageView[this.i.choiceCount];
        this.I = new MediaImageView[this.i.choiceCount];
        this.J = new TextView[this.i.choiceCount];
        for (int i = 0; i < this.i.choiceCount; i++) {
            this.D[i] = (MediaImageView) this.j.findViewById(c[i]);
            if (d[i] != null) {
                this.E[i] = (TwitterButton) this.j.findViewById(d[i].intValue());
            }
            if (e[i] != null) {
                this.F[i] = (MediaImageView) this.j.findViewById(e[i].intValue());
            }
            this.H[i] = (MediaImageView) this.j.findViewById(f[i]);
            this.I[i] = (MediaImageView) this.j.findViewById(g[i]);
            this.J[i] = (TextView) this.j.findViewById(h[i]);
        }
        this.K = (TextView) this.j.findViewById(2131952902);
        this.L = (TextView) this.j.findViewById(2131952903);
        this.M = (MediaImageView) this.j.findViewById(2131952901);
        this.z = this.j.findViewById(2131952894);
        this.A = this.j.findViewById(2131952900);
        this.C = this.j.findViewById(2131952904);
        g();
        this.N = this.j.findViewById(2131952489);
        if (this.N != null) {
            this.N.setVisibility(8);
        }
        this.P = -1;
        a(null);
    }

    protected View d() {
        return LayoutInflater.from(this.q).inflate(this.i.layoutId, new FrameLayout(this.q), false);
    }

    protected void g() {
        this.a = AnimationUtils.loadAnimation(l(), 2131034158);
        this.b = AnimationUtils.loadAnimation(l(), 2131034160);
    }

    public void a(cai cai) {
        super.a(cai);
        bzr.a().a(this.y, this);
        this.O = cag.a("site", cai.c);
        if (this.O != null) {
            cbc.a().a(this.O.longValue(), this);
        }
    }

    public void a() {
        super.a();
        cbc a = cbc.a();
        if (this.O != null) {
            a.b(this.O.longValue(), this);
        }
        for (int i = 0; i < this.i.choiceCount; i++) {
            if (this.D[i] != null) {
                this.D[i].i();
            }
            if (this.H[i] != null) {
                this.H[i].i();
            }
            if (this.I[i] != null) {
                this.I[i].i();
            }
        }
        if (this.M != null) {
            this.M.i();
        }
        if (this.k != null) {
            this.k.i();
        }
    }

    public void b() {
        for (int i = 0; i < this.i.choiceCount; i++) {
            if (this.D[i] != null) {
                this.D[i].setFromMemoryOnly(false);
            }
            if (this.F[i] != null) {
                this.F[i].setFromMemoryOnly(false);
            }
            if (this.H[i] != null) {
                this.H[i].setFromMemoryOnly(false);
            }
            if (this.I[i] != null) {
                this.I[i].setFromMemoryOnly(false);
            }
        }
        if (this.M != null) {
            this.M.setFromMemoryOnly(false);
        }
        if (this.k != null) {
            this.k.setFromMemoryOnly(false);
        }
    }

    public View e() {
        return this.j;
    }

    public void a(long j, cmb cmb) {
        h();
        a(cmb);
        b(cmb);
        for (int i = 0; i < this.i.choiceCount; i++) {
            this.G[i] = caw.a("choice" + i + "_tweet", cmb);
            a(i, cmb);
            b(i, cmb);
        }
        c(cmb);
        d(cmb);
        e(cmb);
        f(cmb);
        if (bzb.a("completed", cmb) != null) {
            a(this.i.completedState, false);
        }
    }

    public void a(long j, cly cly) {
        super.a(j, cly);
        a(cly);
    }

    public void a(long j, TwitterUser twitterUser) {
        int i = 0;
        if (this.l != null) {
            this.l.setText(twitterUser.d);
        }
        if (this.k != null) {
            this.k.a(com.twitter.media.request.a.a(twitterUser.e));
            this.k.setFromMemoryOnly(true);
        }
        if (this.N != null) {
            this.N.setVisibility(0);
            this.N.setOnClickListener(this);
            if (this.x != DisplayMode.FULL) {
                i = 8;
            }
            this.N.setVisibility(i);
        }
    }

    public void ak_() {
        super.ak_();
        a(null);
    }

    private void a(cly cly) {
        boolean z;
        Integer b = j.b().b(this.y);
        int a = a(this.P, this.i, cly, b);
        if (b == null || b.intValue() != -1) {
            z = false;
        } else {
            cly cly2 = new cly();
            cly2.a("vote_state", Integer.valueOf(a));
            b(this.y, cly2);
            z = true;
        }
        a(a, z);
    }

    static int a(int i, Configuration configuration, cly cly, Integer num) {
        if (num != null && num.intValue() == -1) {
            return configuration.postVoteState;
        }
        if (cly != null) {
            Integer a = caf.a("vote_state", cly);
            return a != null ? a.intValue() : configuration.initialState;
        } else {
            if (i == -1) {
                i = configuration.initialState;
            }
            return i;
        }
    }

    private void h() {
        int i = 0;
        if (this.m != null) {
            int i2;
            if (this.x == DisplayMode.FULL || this.i.isForwardTitleBarVisible) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            View view = this.m;
            if (i2 == 0) {
                i = 8;
            }
            view.setVisibility(i);
        }
    }

    private void a(cmb cmb) {
        if (this.n != null) {
            CharSequence a = caw.a("title", cmb);
            if (a != null) {
                this.n.setText(a);
            }
        }
    }

    private void b(cmb cmb) {
        if (this.o != null) {
            CharSequence a = caw.a("subtitle", cmb);
            if (a != null) {
                this.o.setText(a);
            }
        }
    }

    private void c(cmb cmb) {
        if (this.p != null) {
            int i = 8;
            if (this.x == DisplayMode.FORWARD) {
                CharSequence a = caw.a("forward_cta_text", cmb);
                if (aj.b(a)) {
                    this.p.setText(a);
                    this.p.setOnClickListener(this);
                    i = 0;
                }
            }
            this.p.setVisibility(i);
        }
    }

    private void d(cmb cmb) {
        if (this.K != null) {
            CharSequence a = caw.a("title_post", cmb);
            if (aj.b(a)) {
                this.K.setText(a);
            }
        }
    }

    private void e(cmb cmb) {
        if (this.L != null) {
            CharSequence a = caw.a("subtitle_post", cmb);
            if (aj.b(a)) {
                this.L.setText(a);
            }
        }
    }

    private void f(cmb cmb) {
        if (this.M != null) {
            cmc a = cmc.a("image_post", cmb);
            if (a == null || a.a == null) {
                this.M.setVisibility(8);
                return;
            }
            this.M.setScaleType(ScaleType.b);
            this.M.setVisibility(0);
            this.M.a(com.twitter.media.request.a.a(a.a));
            this.M.setFromMemoryOnly(true);
        }
    }

    private void a(int i, cmb cmb) {
        int i2 = 8;
        cmc a = cmc.a("choice" + i + "_image", cmb);
        cmc a2 = cmc.a("choice_button", cmb);
        MediaImageView mediaImageView = this.D[i];
        if (mediaImageView != null) {
            if (a == null || a.a == null) {
                mediaImageView.setVisibility(8);
            } else {
                mediaImageView.a(com.twitter.media.request.a.a(a.a));
                mediaImageView.setFromMemoryOnly(true);
                mediaImageView.setScaleType(ScaleType.b);
                mediaImageView.setVisibility(0);
                mediaImageView.setOnClickListener(this);
            }
        }
        TwitterButton twitterButton = this.E[i];
        if (twitterButton != null) {
            int i3;
            if (aj.b(this.G[i])) {
                twitterButton.setOnClickListener(this);
                CharSequence a3 = caw.a("choice" + i + "_text", cmb);
                if (aj.b(a3)) {
                    twitterButton.setText(a3);
                    i3 = 0;
                    twitterButton.setVisibility(i3);
                }
            }
            i3 = 8;
            twitterButton.setVisibility(i3);
        }
        MediaImageView mediaImageView2 = this.F[i];
        if (mediaImageView2 != null) {
            if (a2 != null && aj.b(a2.a) && aj.b(this.G[i])) {
                mediaImageView2.a(com.twitter.media.request.a.a(a2.a));
                mediaImageView2.setFromMemoryOnly(true);
                mediaImageView2.setScaleType(ScaleType.a);
                mediaImageView2.setOnClickListener(this);
                i2 = 0;
            }
            mediaImageView2.setVisibility(i2);
        }
    }

    private void b(int i, cmb cmb) {
        cmc a = cmc.a("choice_fade", cmb);
        MediaImageView mediaImageView = this.H[i];
        cmc a2 = cmc.a("choice" + i + "_image", cmb);
        if (mediaImageView != null) {
            if (a2 == null || a2.a == null) {
                mediaImageView.setVisibility(8);
            } else {
                mediaImageView.a(com.twitter.media.request.a.a(a2.a));
                mediaImageView.setFromMemoryOnly(true);
                mediaImageView.setScaleType(ScaleType.b);
                mediaImageView.setVisibility(0);
                if (this.x == DisplayMode.FORWARD) {
                    mediaImageView.setClickable(true);
                    mediaImageView.setOnClickListener(this);
                }
            }
        }
        mediaImageView = this.I[i];
        if (mediaImageView != null) {
            if (a == null || !aj.b(a.a)) {
                mediaImageView.setVisibility(8);
            } else {
                mediaImageView.a(com.twitter.media.request.a.a(a.a));
                mediaImageView.setFromMemoryOnly(true);
                mediaImageView.setScaleType(ScaleType.b);
                mediaImageView.setVisibility(0);
            }
        }
        TextView textView = this.J[i];
        if (textView != null) {
            CharSequence a3 = caw.a("result" + i + "_percent", cmb);
            if (aj.b(a3)) {
                textView.setText(a3);
            } else {
                textView.setVisibility(8);
            }
        }
    }

    public void onClick(View view) {
        if (view == this.N) {
            a(this.O.longValue());
        } else if (view == this.p) {
            this.s.a(this.w, this.t);
        } else {
            int i = 0;
            while (i < this.i.choiceCount) {
                if (view == this.E[i] || view == this.D[i] || view == this.F[i]) {
                    a(i);
                    return;
                } else if (view == this.H[i]) {
                    this.s.a(this.w, this.t);
                    return;
                } else {
                    i++;
                }
            }
        }
    }

    private void a(int i) {
        if (this.G != null && this.G.length > i && aj.b(this.G[i])) {
            Context l = l();
            if (l != null) {
                Session c = bg.a().c();
                j.b().a(this.y);
                l.startActivity(aw.a().a(this.G[i], null).b(c.e()).c(this.y).a(l));
            }
        }
    }

    private void a(int i, boolean z) {
        if (i != this.P) {
            this.P = i;
            switch (i) {
                case Util.TYPE_DASH /*0*/:
                    this.z.setVisibility(0);
                    this.A.setVisibility(4);
                    this.C.setVisibility(4);
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.z.setVisibility(4);
                    this.A.setVisibility(0);
                    this.C.setVisibility(4);
                    if (z) {
                        this.z.startAnimation(this.b);
                        this.A.startAnimation(this.a);
                    }
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.z.setVisibility(4);
                    this.A.setVisibility(4);
                    this.C.setVisibility(0);
                    if (z) {
                        this.z.startAnimation(this.b);
                        this.C.startAnimation(this.a);
                    }
                default:
            }
        }
    }
}
