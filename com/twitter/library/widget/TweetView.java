package com.twitter.library.widget;

import android.animation.Animator.AnimatorListener;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import bct;
import bcu;
import bdc;
import bdd;
import bqu;
import buf;
import bvd;
import bvu;
import cdy;
import cee;
import cej;
import cet;
import com.twitter.config.d;
import com.twitter.internal.android.widget.p;
import com.twitter.library.av.playback.be;
import com.twitter.library.client.bg;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.provider.aq;
import com.twitter.library.revenue.a;
import com.twitter.library.revenue.b;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ao;
import com.twitter.library.view.ActionPromptView;
import com.twitter.library.view.QuoteView;
import com.twitter.library.view.SocialProofView;
import com.twitter.library.view.TweetPivotView;
import com.twitter.library.view.aa;
import com.twitter.library.view.ab;
import com.twitter.library.view.m;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.library.widget.tweet.content.i;
import com.twitter.library.widget.tweet.content.l;
import com.twitter.media.ui.image.h;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cr;
import com.twitter.model.media.EditableMedia;
import com.twitter.ui.view.s;
import com.twitter.ui.view.u;
import com.twitter.ui.widget.BadgeView;
import com.twitter.ui.widget.CellLayout;
import com.twitter.ui.widget.CellLayout.CellLayoutParams;
import com.twitter.ui.widget.TextLayoutView;
import com.twitter.ui.widget.TweetHeaderView;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import com.twitter.util.al;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.j;
import com.twitter.util.math.Size;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.ui.r;
import defpackage.bcx;
import defpackage.ceq;
import defpackage.ces;
import defpackage.cgl;
import defpackage.cpb;
import java.util.List;

/* compiled from: Twttr */
public class TweetView extends CellLayout implements ces, p, b, au, c, h {
    public static final Size b;
    public static final s c;
    @VisibleForTesting
    static AnimatorListener d;
    private final TweetHeaderView A;
    private final cee B;
    private final TextLayoutView C;
    private final BadgeView D;
    private final TweetPivotView E;
    private final TextLayoutView F;
    private final TextLayoutView G;
    private final OnClickListener H;
    private final View I;
    private final UserForwardView J;
    private final InlineActionBar K;
    private final Rect L;
    private final Resources M;
    private final m N;
    private final ap O;
    private final TextContentView P;
    private final Drawable Q;
    private final int R;
    private Tweet S;
    private aa T;
    private FriendshipCache U;
    private am V;
    private float W;
    private String aA;
    private int aB;
    private Size aC;
    private final a aD;
    private final boolean aE;
    private boolean aF;
    private boolean aG;
    private ActionPromptView aH;
    private boolean aI;
    private s aJ;
    private final l aK;
    private CharSequence aa;
    private float ab;
    private long ac;
    private boolean ad;
    private boolean ae;
    private boolean af;
    private String ag;
    private boolean ah;
    private boolean ai;
    private boolean aj;
    private boolean ak;
    private boolean al;
    private boolean am;
    private int an;
    private int ao;
    private boolean ap;
    private TwitterScribeItem aq;
    private boolean ar;
    private final boolean as;
    private i at;
    private boolean au;
    private boolean av;
    private boolean aw;
    private final int ax;
    private boolean ay;
    private boolean az;
    @VisibleForTesting
    final Rect e;
    private final OnClickListener f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private final int m;
    private final int n;
    private final int o;
    private final int p;
    private final int q;
    private final int r;
    private final int s;
    private final Drawable t;
    private final Drawable u;
    private final boolean v;
    private final QuoteView w;
    private final SocialProofView x;
    private final cej y;
    private final UserImageView z;

    static {
        b = Size.a(100, 100);
        c = new u().a();
    }

    public static void setAnimationTestHooks(AnimatorListener animatorListener) {
        j.d();
        d = animatorListener;
    }

    public TweetView(Context context) {
        this(context, null);
    }

    public TweetView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.tweetViewStyle);
    }

    public TweetView(Context context, AttributeSet attributeSet, int i) {
        boolean z = true;
        super(context, attributeSet, i);
        this.e = new Rect();
        this.L = new Rect();
        this.aj = true;
        this.aJ = c;
        this.aK = new av(this);
        setWillNotDraw(false);
        setClipToPadding(false);
        setClipChildren(false);
        this.as = d.a("legacy_deciders_amplify_player_enabled");
        this.M = getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.TweetView, i, 0);
        LayoutInflater.from(context).inflate(obtainStyledAttributes.getResourceId(bdd.TweetView_tweetViewLayoutId, 0), this);
        this.x = (SocialProofView) findViewById(bcx.tweet_social_proof);
        this.y = new cej(this.x, this.M);
        this.A = (TweetHeaderView) findViewById(bcx.tweet_header);
        this.C = (TextLayoutView) findViewById(bcx.tweet_reply_context);
        this.B = new cee(this.C, this.M);
        this.w = (QuoteView) findViewById(bcx.tweet_quote);
        this.w.setOnClickListener(new az(this));
        this.w.setOnLongClickListener(new ba(this));
        this.w.setRenderRtl(this.f_);
        this.D = (BadgeView) findViewById(bcx.tweet_promoted_badge);
        this.E = (TweetPivotView) findViewById(bcx.tweet_pivot);
        this.g = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetView_iconSpacing, 4);
        this.P = (TextContentView) findViewById(bcx.tweet_content_text);
        this.W = obtainStyledAttributes.getDimension(bdd.TweetView_bylineSize, ao.b());
        this.F = (TextLayoutView) findViewById(bcx.tweet_attribution);
        this.F.setOnClickListener(new bb(this));
        this.G = (TextLayoutView) findViewById(bcx.tweet_media_tags);
        this.H = new bc(this);
        setContentSize(obtainStyledAttributes.getDimension(bdd.TweetView_contentSize, ao.a()));
        this.I = findViewById(bcx.tweet_curation_action);
        this.I.setOnClickListener(new bd(this));
        Drawable background = this.I.getBackground();
        CellLayoutParams a = CellLayoutParams.a(this.I);
        if (this.f_) {
            a.rightMargin += this.g;
        } else {
            a.leftMargin += this.g;
        }
        if (VERSION.SDK_INT < 22) {
            a.width = (background.getIntrinsicWidth() + this.I.getPaddingLeft()) + this.I.getPaddingRight();
            a.height = (background.getIntrinsicHeight() + this.I.getPaddingTop()) + this.I.getPaddingBottom();
        } else {
            a.width = background.getIntrinsicWidth();
            a.height = background.getIntrinsicHeight();
        }
        this.J = (UserForwardView) findViewById(bcx.tweet_user_forward);
        this.J.setFriendshipCache(this.U);
        this.J.a(this.ab, this.W);
        this.J.setFollowButtonClickListener(new be(this));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetView_inlineActionBarPaddingNormal, 0);
        this.K = (InlineActionBar) findViewById(bcx.tweet_inline_actions);
        a(this.K);
        CellLayoutParams a2 = CellLayoutParams.a(this.K);
        a2.leftMargin = -dimensionPixelSize;
        a2.rightMargin = -dimensionPixelSize;
        this.l = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetView_verticalConnectorWidth, 0);
        this.m = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetView_verticalConnectorMargin, 2);
        this.t = obtainStyledAttributes.getDrawable(bdd.TweetView_verticalConnector);
        this.u = obtainStyledAttributes.getDrawable(bdd.TweetView_verticalConnector);
        this.h = obtainStyledAttributes.getResourceId(bdd.TweetView_mediaIcon, 0);
        this.i = obtainStyledAttributes.getResourceId(bdd.TweetView_playerIcon, 0);
        this.j = obtainStyledAttributes.getResourceId(bdd.TweetView_summaryIcon, 0);
        this.k = obtainStyledAttributes.getResourceId(bdd.TweetView_translationIcon, 0);
        this.n = obtainStyledAttributes.getDimensionPixelOffset(bdd.TweetView_badgeSpacing, 0);
        this.s = obtainStyledAttributes.getInt(bdd.TweetView_previewFlags, 5);
        this.v = this.s != 0;
        this.o = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetView_mediaTopMargin, 0);
        this.p = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetView_mediaBottomMargin, 0);
        this.q = obtainStyledAttributes.getResourceId(bdd.TweetView_mediaTagIcon, 0);
        this.r = obtainStyledAttributes.getResourceId(bdd.TweetView_mediaPlaceholderDrawable, 0);
        this.ay = obtainStyledAttributes.getBoolean(bdd.TweetView_autoLink, false);
        UserImageView userImageView = (UserImageView) findViewById(bcx.tweet_profile_image);
        userImageView.setImageType("profile");
        this.f = new bf(this);
        CellLayoutParams.a(userImageView).a(false);
        com.twitter.util.ui.a.a(userImageView, 2);
        this.z = userImageView;
        this.ax = obtainStyledAttributes.getDimensionPixelSize(bdd.TweetView_mediaDivider, 0);
        this.aD = new a(this, obtainStyledAttributes.getResourceId(bdd.TweetView_politicalDrawable, 0), obtainStyledAttributes.getResourceId(bdd.TweetView_promotedDrawable, 0), obtainStyledAttributes.getResourceId(bdd.TweetView_alertDrawable, 0));
        this.Q = getBackground();
        this.R = obtainStyledAttributes.getResourceId(bdd.TweetView_noPressStateBackgroundDrawable, 0);
        obtainStyledAttributes.recycle();
        boolean z2 = d.a("android_media_playback_unload_on_temporary_detach") && !bqu.a();
        this.aE = z2;
        this.N = new bg(this);
        this.O = new aw(this);
        am a3 = new am(getContext(), this.P, this.P.getContentFontMetrics()).a(this.N).a(this.M.getColor(bcu.link_selected));
        if (this.aJ.j) {
            z2 = false;
        } else {
            z2 = true;
        }
        a3 = a3.a(z2);
        if (this.aJ.k) {
            z2 = false;
        } else {
            z2 = true;
        }
        a3 = a3.b(z2);
        if (this.aJ.l) {
            z2 = false;
        } else {
            z2 = true;
        }
        am d = a3.c(z2).d(this.ay);
        if (this.aJ.i) {
            z = false;
        }
        this.V = d.e(z).b(this.M.getColor(bcu.subtext)).a(this.O).a(this.M.getString(bdc.tagline_separator));
    }

    public a getAutoPlayableItem() {
        return d.a(getContentContainer());
    }

    public void setShowSocialBadge(boolean z) {
        this.y.a(z);
    }

    public void setScribeItem(TwitterScribeItem twitterScribeItem) {
        this.aq = twitterScribeItem;
    }

    public TwitterScribeItem getScribeItem() {
        return this.aq;
    }

    public void setSocialContextCount(int i) {
        this.y.b(i);
    }

    public void setSocialContextName(String str) {
        this.y.b(str);
    }

    public int getSocialContextCount() {
        return this.y.d();
    }

    public String getSocialContextName() {
        return this.y.c();
    }

    public void setReason(String str) {
        this.y.a(str);
    }

    public void setReasonIconResId(int i) {
        this.y.a(i);
    }

    public String getReason() {
        return this.y.a();
    }

    public int getReasonIconResId() {
        return this.y.b();
    }

    public void setDisplayTranslationBadge(boolean z) {
        this.am = z;
    }

    public boolean a() {
        return this.am;
    }

    public void setDisplaySensitiveMedia(boolean z) {
        this.ap = z;
    }

    public boolean getPreviewEnabled() {
        return this.v;
    }

    public void setMaxLines(int i) {
        this.P.setMaxLines(i);
    }

    public void setMinLines(int i) {
        this.P.setMinLines(i);
    }

    public void setTruncateText(CharSequence charSequence) {
        this.P.setTruncateText(charSequence);
    }

    public void aG_() {
        this.z.aG_();
        this.w.aG_();
    }

    public void f() {
        this.z.f();
        this.w.f();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        t();
        this.w.b();
        f();
        this.aG = true;
    }

    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        this.z.f();
        if (this.aF && this.aE) {
            this.aG = true;
            t();
        }
    }

    public boolean a(TweetActionType tweetActionType) {
        return this.S != null && this.S.a(getOwnerId());
    }

    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(a.length + i);
        if (this.ad) {
            mergeDrawableStates(onCreateDrawableState, a);
        }
        return onCreateDrawableState;
    }

    public Tweet getTweet() {
        return this.S;
    }

    public i getTweetContentHost() {
        j.d();
        return this.at;
    }

    public void setAutoLink(boolean z) {
        this.ay = z;
    }

    public void setTweet(Tweet tweet) {
        a(tweet, false, new com.twitter.library.widget.tweet.content.j((Activity) getContext(), tweet), true);
    }

    public void a(Tweet tweet, s sVar) {
        a(tweet, sVar, false, new com.twitter.library.widget.tweet.content.j((Activity) getContext(), tweet), true);
    }

    public void setTweetNoLayout(Tweet tweet) {
        a(tweet, false, new com.twitter.library.widget.tweet.content.j((Activity) getContext(), tweet), false);
    }

    public void a(Tweet tweet, boolean z, com.twitter.library.widget.tweet.content.j jVar) {
        a(tweet, z, jVar, true);
    }

    public void a(Tweet tweet, s sVar, boolean z, com.twitter.library.widget.tweet.content.j jVar) {
        a(tweet, sVar, z, jVar, true);
    }

    public void a(Tweet tweet, boolean z, com.twitter.library.widget.tweet.content.j jVar, boolean z2) {
        a(tweet, c, z, jVar, z2);
    }

    public void a(Tweet tweet, s sVar, boolean z, com.twitter.library.widget.tweet.content.j jVar, boolean z2) {
        boolean z3;
        Context context = getContext();
        jVar.a(0, Integer.valueOf(this.ax));
        jVar.a(1, Integer.valueOf(this.r));
        jVar.a(2, this);
        jVar.a(4, this.aK);
        this.aF = com.twitter.android.av.p.a(tweet);
        boolean z4 = tweet.z != null;
        this.ar = z;
        this.aJ = sVar;
        boolean z5 = sVar.e || b(tweet);
        this.aw = z5;
        if (ObjectUtils.a(this.aA, buf.a().f())) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (!(this.aG || z3)) {
            if (tweet.a(this.S)) {
                this.z.a(tweet.r, tweet.s, false);
                aG_();
                d(tweet);
                this.z.a(tweet.c());
            }
        }
        long j = this.ac;
        Tweet tweet2 = this.S;
        g(sVar.f);
        this.aa = null;
        this.S = tweet;
        this.ac = 0;
        this.ao = 0;
        this.ag = null;
        this.e.setEmpty();
        this.ah = false;
        this.ai = false;
        if (this.aH != null) {
            this.aH.c();
        }
        this.F.setTextWithVisibility(null);
        this.G.setTextWithVisibility(null);
        long ownerId = getOwnerId();
        boolean p = p();
        boolean z6 = this.v && ((p || this.ak || tweet.r()) && a(tweet) && !ceq.d(tweet));
        cgl aa = tweet.aa();
        boolean z7 = (aa == null || !jVar.b() || tweet.L() || tweet.i() || tweet.M()) ? false : true;
        i a = jVar.a();
        if (a != null) {
            a(tweet, z4, p, z6, z7);
        }
        this.z.setFromMemoryOnly(z);
        this.z.a(tweet.r, tweet.s, false);
        if (z2) {
            r.a((View) this, z4 ? 0.4f : 1.0f);
        }
        if (tweet.U()) {
            this.w.setDisplaySensitiveMedia(this.ap);
            this.w.setAlwaysExpandMedia(this.ak);
            this.w.a(tweet.x, z);
            this.w.setVisibility(0);
        } else {
            this.w.a(true);
            this.w.setVisibility(8);
        }
        com.twitter.model.core.i a2 = a(tweet, p);
        String b = e.b(a2.a);
        Iterable a3 = n.a(tweet.V);
        CharSequence a4 = bvu.a(tweet);
        if (aj.a(a4) || a4.length() > bvu.a) {
            this.V.a(null);
        } else {
            this.V.a(this.M.getString(bdc.tagline_location_poi, new Object[]{a4}));
        }
        this.aa = this.V.a(a2.a, a2.b, a3);
        if (this.J != null) {
            if (this.aJ.m) {
                this.J.setVisibility(8);
            } else {
                this.J.a(tweet);
            }
        }
        this.aD.a(tweet, this.M);
        this.B.a(tweet, sVar, ownerId);
        this.y.a(tweet, sVar, ownerId, this.C.getVisibility() == 0);
        int i = 0;
        if (cdy.c(this.S)) {
            Object obj = this.ao == 0 ? 1 : null;
            if (obj != null && tweet.h()) {
                i = this.h;
            } else if (obj != null && tweet.i()) {
                i = this.i;
            } else if (obj != null && tweet.k()) {
                i = this.j;
            } else if (obj != null && tweet.ac()) {
                i = this.j;
            }
        }
        int a5 = ab.a(this, this.k);
        String a6 = al.a(this.M, tweet.q);
        TweetHeaderView tweetHeaderView = this.A;
        z5 = !sVar.g && m();
        tweetHeaderView.setShowTimestamp(z5);
        this.A.a(tweet.d(), ab.a(tweet), a6, i, a5);
        ab.a(tweet, this, this.A);
        this.A.setOnAuthorClick(null);
        if (this.ad) {
            this.ac |= 4;
        } else {
            this.ac &= -5;
        }
        if (!(j == 0 && this.ac == 0)) {
            refreshDrawableState();
        }
        if (a(tweet2, z6, z3)) {
            t();
        }
        if (a(z4, tweet2, z6, z3)) {
            this.av = true;
            this.at = a;
            s();
        }
        this.aG = false;
        List<MediaEntity> a7 = cpb.a(tweet, this.aC);
        CharSequence a8 = com.twitter.library.media.util.ab.a(context, a7, this.q);
        if (!(this.af || TextUtils.isEmpty(a8))) {
            this.G.a(com.twitter.util.a.a(tweet.n()));
            this.G.setTextWithVisibility(a8);
        }
        this.P.a(this.aa, tweet.n());
        setContentDescription(this.M.getString(bdc.timeline_tweet_format, new Object[]{this.S.B + " @" + this.S.v, b, BuildConfig.VERSION_NAME, ((String) e.b(al.b(this.M, tweet.q), BuildConfig.VERSION_NAME)).toLowerCase(), this.x.getSocialProofAccessibilityString()}));
        if (this.ao != 5 || aa == null) {
            StringBuilder stringBuilder = new StringBuilder();
            if (this.ao == 1 && !a7.isEmpty()) {
                for (MediaEntity mediaEntity : a7) {
                    if (!TextUtils.isEmpty(mediaEntity.x)) {
                        stringBuilder.append(this.M.getString(bdc.timeline_tweet_media_format, new Object[]{((MediaEntity) r3.next()).x})).append(". ");
                    }
                }
            }
            setContentDescription(this.M.getString(bdc.timeline_tweet_format, new Object[]{r4, b, stringBuilder.toString(), r6, r7}));
        } else {
            ab.a(this, this.S, r4, b, r6, r7);
        }
        if (this.E != null) {
            this.E.a(tweet, this.T);
        }
        if (tweet.c()) {
            setBackgroundResource(this.R);
        } else {
            setBackground(this.Q);
        }
        if (z2) {
            requestLayout();
            invalidate();
        }
        d(tweet);
        if (tweet.c()) {
        }
        this.z.a(tweet.c());
    }

    private boolean a(Tweet tweet) {
        boolean z;
        if (getOwnerId() == tweet.s) {
            z = true;
        } else {
            z = false;
        }
        if (!tweet.D() || (this.ap && !r0)) {
            return true;
        }
        return false;
    }

    private static boolean b(cr crVar, cgl cgl) {
        return (crVar instanceof MediaEntity) || (cgl != null && cgl.D() && crVar.B.equals(cgl.c()));
    }

    private boolean a(boolean z, Tweet tweet, boolean z2, boolean z3) {
        boolean z4;
        boolean z5;
        boolean z6 = this.ao == 5;
        boolean b = ceq.b(tweet, this.S);
        if ((z || o()) && z2) {
            z4 = true;
        } else {
            z4 = false;
        }
        boolean a = ceq.a(tweet, this.S);
        if (z4 && z3) {
            z5 = true;
        } else {
            z5 = false;
        }
        return b(z6, b) || b(z4, a) || z5 || b(this.S) || c(this.S);
    }

    private boolean b(boolean z, boolean z2) {
        return z && (!z2 || this.aG);
    }

    private void a(Tweet tweet, boolean z, boolean z2, boolean z3, boolean z4) {
        int i = 3;
        int i2 = 1;
        cgl aa = tweet.aa();
        if (z) {
            Iterable iterable = tweet.W;
            if (iterable != null && !iterable.isEmpty()) {
                if (cpb.k(iterable) == null) {
                    i = 1;
                }
                this.ao = i;
            }
        } else if (z4 && !ceq.d(tweet)) {
            this.ao = 5;
        } else if ((z3 || z2) && aa == null && tweet.M()) {
            this.ao = 3;
        } else if (z3 && aa != null) {
            int i3 = (this.ak && (tweet.L() || (be.c(tweet) && this.as))) ? 1 : 0;
            if ((!z2 || i3 == 0) && ((!(aa.t() || aa.v()) || (this.s & 4) == 0 || (!z2 && i3 == 0)) && !tweet.M())) {
                i2 = 0;
            }
            if (i2 != 0) {
                this.ao = 3;
                TwitterUser h = aa.h();
                if (z2 && h != null) {
                    this.ag = h.d;
                }
            }
        } else if (z3 && (this.s & 1) != 0) {
            if ((z2 || this.ak) && cpb.c(tweet, this.aC)) {
                this.ao = 1;
            }
        }
    }

    private boolean a(Tweet tweet, boolean z, boolean z2) {
        if (this.ao == 5 && !ceq.b(tweet, this.S)) {
            return true;
        }
        if (o() && z && (z2 || !ceq.a(tweet, this.S))) {
            return true;
        }
        if (this.ao == 5 || b()) {
            return false;
        }
        return true;
    }

    private static boolean b(Tweet tweet) {
        return tweet != null && tweet.p();
    }

    private boolean c(Tweet tweet) {
        return ceq.c(tweet) && this.aJ.m;
    }

    private TwitterUser getOwner() {
        return bg.a().c().f();
    }

    private long getOwnerId() {
        TwitterUser owner = getOwner();
        return owner != null ? owner.c : 0;
    }

    private boolean m() {
        return (this.an == 1 || this.S.y()) ? false : true;
    }

    public CharSequence getContent() {
        return this.aa;
    }

    private com.twitter.model.core.i a(Tweet tweet, boolean z) {
        boolean z2 = false;
        aq a = aq.a(tweet);
        a.e(cdy.a(tweet));
        if (b()) {
            a = a.a(true);
            if (tweet.ac() || z || b(this.S)) {
                z2 = true;
            }
            return a.b(z2).a();
        } else if (this.ao == 5) {
            if (tweet.Q() && bvd.a()) {
                return a.a(true).a();
            }
            return a.a();
        } else if (this.w.getVisibility() == 0) {
            return a.c(true).a();
        } else {
            if (this.az) {
                a = a.a(true);
                if (tweet.ac() || z || b(this.S)) {
                    z2 = true;
                }
                return a.b(z2).a();
            } else if (b(this.S)) {
                return a.b(true).a();
            } else {
                return new com.twitter.model.core.i(tweet.f(), tweet.w);
            }
        }
    }

    public void setCurationAction(int i) {
        int i2;
        boolean z = false;
        this.an = i;
        View view = this.I;
        if (i == 0) {
            i2 = 8;
        } else {
            i2 = 0;
        }
        view.setVisibility(i2);
        this.A.setShowTimestamp(m());
        TweetHeaderView tweetHeaderView = this.A;
        if (i == 2) {
            z = true;
        }
        tweetHeaderView.a(z);
    }

    public void setQuoteDisplayMode(int i) {
        this.w.setDisplayMode(i);
    }

    protected void onMeasure(int i, int i2) {
        if (this.S == null) {
            super.onMeasure(i, i2);
            return;
        }
        int a = com.twitter.util.ui.j.a(getContext(), i);
        int size = MeasureSpec.getSize(a);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        CellLayoutParams a2 = CellLayoutParams.a(this.z);
        if (paddingLeft <= a2.width) {
            setMeasuredDimension(ViewCompat.MEASURED_STATE_TOO_SMALL, ViewCompat.MEASURED_STATE_TOO_SMALL);
            return;
        }
        Object obj;
        Object obj2;
        int i3;
        a(this.L, getPaddingTop(), size);
        if (this.x.getVisibility() != 8) {
            a(this.I, this.L, paddingLeft, a, i2);
            obj = 1;
            a(this.x, this.L, paddingLeft, a, i2);
            a(this.L, this.L.bottom, size);
        } else {
            obj = null;
        }
        a(this.z, this.L, paddingLeft, a, i2);
        if (obj == null) {
            a(this.I, this.L, paddingLeft, a, i2);
        }
        boolean z = this.z.getVisibility() != 8;
        a(this.A, this.L, paddingLeft, a, i2);
        a(this.L, this.L.bottom, size, z, a2);
        int i4 = a2.b().bottom;
        if (this.C.getVisibility() != 8) {
            a(this.C, this.L, paddingLeft, a, i2);
            a(this.L, this.L.bottom, size, z, a2);
        }
        if (this.P.getVisibility() != 8) {
            a(this.P, this.L, paddingLeft, a, i2);
            a(this.L, this.L.bottom, size, z, a2);
        }
        if (this.aw) {
            this.L.set(0, this.L.top, size, this.L.top);
        }
        Rect rect = this.L;
        rect.bottom += a(this.L.width(), a(this.L), this.L.bottom);
        a(this.L, this.L.bottom, size, z, a2);
        if (this.w.getVisibility() != 8) {
            a(this.w, this.L, paddingLeft, a, i2);
            a(this.L, this.L.bottom, size, z, a2);
        }
        if (this.G.getVisibility() != 8) {
            a(this.G, this.L, paddingLeft, a, i2);
            View forwardMediaView = getForwardMediaView();
            if (forwardMediaView != null && forwardMediaView.isClickable() && this.ao == 1) {
                this.G.setOnClickListener(this.H);
            } else {
                this.G.setOnClickListener(null);
            }
            a(this.L, this.L.bottom, size, z, a2);
        }
        if (this.D.getVisibility() != 8) {
            obj2 = 1;
        } else {
            obj2 = null;
        }
        if (this.J.getVisibility() != 8) {
            a(this.J, this.L, paddingLeft, a, i2);
            a(this.L, this.L.bottom, size, z, a2);
        }
        if (z && i4 > this.L.bottom) {
            this.L.offset(0, i4 - this.L.bottom);
        }
        if (this.K.getVisibility() != 8) {
            a(this.K, this.L, paddingLeft, a, i2);
            a(this.L, this.L.bottom, size, z, a2);
            Object obj3 = null;
        } else {
            i3 = 1;
        }
        if (obj2 != null) {
            if (this.K.getVisibility() == 8) {
                this.L.offset(0, this.n);
            }
            a(this.D, this.L, paddingLeft, a, i2);
            a(this.L, this.L.bottom, size, z, a2);
            obj3 = 1;
        }
        if (this.E.getVisibility() != 8) {
            a(this.E, this.L, paddingLeft, a, i2);
            a(this.L, this.L.bottom, size, z, a2);
            obj3 = null;
        }
        if (n()) {
            if (this.aH != null && this.aH.getVisibility() == 0) {
                if (this.K.a(this.aH.getActionPrompt().j())) {
                    this.L.set(0, this.L.top, size, this.L.top);
                    a(this.aH, this.L, paddingLeft, a, i2);
                    obj3 = null;
                } else {
                    this.aH.setVisibility(8);
                }
            }
        } else if (this.aH != null) {
            this.aH.setVisibility(8);
        }
        int resolveSize = resolveSize(size, i);
        if (obj3 != null) {
            i3 = this.L.bottom + getPaddingBottom();
        } else {
            i3 = this.L.bottom;
        }
        setMeasuredDimension(resolveSize, resolveSize(i3, i2));
    }

    private int a(int i, int i2, int i3) {
        this.e.setEmpty();
        if (i <= 0 || this.at == null) {
            return 0;
        }
        if (this.ao != 1 && this.ao != 5 && this.ao != 3 && !b(this.S) && !c(this.S)) {
            return 0;
        }
        int i4;
        int i5;
        int i6;
        Rect a = this.at.a(getContext(), 0, 0, i, i3);
        int width = a.width();
        int height = a.height();
        int i7 = i3 + this.o;
        if (TextUtils.isEmpty(this.ag) || !b()) {
            i4 = i3;
            i5 = 0;
            i6 = 0;
        } else {
            int i8 = (i7 + height) + this.p;
            this.F.setTextWithVisibility(this.ag);
            this.F.measure(MeasureSpec.makeMeasureSpec(i, RtlSpacingHelper.UNDEFINED), 0);
            i6 = this.F.getMeasuredWidth();
            i5 = this.F.getMeasuredHeight();
            i4 = i8;
        }
        if (height <= 0 && i5 <= 0) {
            return 0;
        }
        int i9;
        if (this.f_) {
            i8 = this.aw ? width : getPaddingLeft() + i;
            i2 = i8 - i6;
            i9 = i8 - width;
            width = i8;
        } else {
            width += i2;
            i8 = i2 + i6;
            i9 = i2;
        }
        this.e.set(i9, i7, width, height + i7);
        View forwardMediaView = getForwardMediaView();
        if (forwardMediaView != null) {
            CellLayoutParams.b(forwardMediaView).set(this.e);
        }
        Rect b = CellLayoutParams.b(this.F);
        b.set(i2, i4, i8, i4 + i5);
        return Math.max(this.e.bottom, b.bottom) - i3;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int width = this.f_ ? (getWidth() - (getPaddingRight() + this.z.getMeasuredWidth())) + this.z.getPaddingRight() : getPaddingLeft();
        if (this.ah || this.ai) {
            View imageView = this.z.getImageView();
            width = ((width + imageView.getLeft()) + (imageView.getWidth() / 2)) - (this.l / 2);
            if (this.ah && this.t != null) {
                this.t.setBounds(width, 0, this.l + width, this.z.getTop() - this.m);
            }
            if (this.ai && this.u != null) {
                this.u.setBounds(width, this.z.getBottom() + this.m, this.l + width, getHeight());
            }
        }
        if (this.aH != null && this.aH.getVisibility() == 0) {
            View c = this.K.c(this.aH.getActionPrompt().j());
            this.aH.a((c.getWidth() / 2) + r.a(c, (View) this));
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.S != null) {
            if (this.t != null && this.ah) {
                this.t.draw(canvas);
            }
            if (this.u != null && this.ai) {
                this.u.draw(canvas);
            }
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.K.a(canvas, this);
    }

    public void setFriendshipCache(FriendshipCache friendshipCache) {
        this.U = friendshipCache;
        if (this.J != null) {
            this.J.setFriendshipCache(friendshipCache);
        }
        if (this.K != null) {
            this.K.setFriendshipCache(friendshipCache);
        }
    }

    public FriendshipCache getFriendshipCache() {
        return this.U;
    }

    public void setHighlighted(boolean z) {
        if (this.ad != z) {
            this.ad = z;
            refreshDrawableState();
        }
    }

    public void setContentSize(float f) {
        if (f != this.ab) {
            this.ab = f;
            this.W = ao.a(this.ab);
            this.w.a(this.ab, this.W);
            this.x.setContentSize(this.W);
            this.A.a(this.ab, this.W, this.W);
            this.C.a(this.W);
            this.D.setContentSize(this.W);
            this.E.setContentSize(this.ab);
            this.P.setContentSize(this.ab);
            if (this.J != null) {
                this.J.a(this.ab, this.W);
            }
            if (this.K != null) {
                this.K.setBylineSize(this.W);
            }
            requestLayout();
            invalidate();
        }
    }

    public void setOnTweetViewClickListener(aa aaVar) {
        this.T = aaVar;
        if (aaVar != null) {
            this.z.setOnClickListener(this.f);
        } else {
            this.z.setOnClickListener(null);
        }
    }

    public void setHideInlineActions(boolean z) {
        this.ae = z;
    }

    public void setHideMediaTagSummary(boolean z) {
        this.af = z;
    }

    public void setHideProfileImage(boolean z) {
        if (this.z != null) {
            this.z.setVisibility(z ? 8 : 0);
        }
    }

    public void setActionPrompt(com.twitter.model.timeline.s sVar) {
        if (this.aH == null) {
            this.aH = (ActionPromptView) ((ViewStub) findViewById(bcx.tweet_action_prompt_stub)).inflate();
            this.aH.setOnPromptClickListener(new ax(this));
        }
        this.aH.setActionPrompt(sVar);
    }

    public com.twitter.model.timeline.s getActionPrompt() {
        return this.aH != null ? this.aH.getActionPrompt() : null;
    }

    public TwitterButton getActionPromptButton() {
        return this.aH != null ? this.aH.getActionPromptButton() : null;
    }

    public boolean getActionPromptVisibility() {
        return n();
    }

    public void setShowActionPrompt(boolean z) {
        this.aI = z;
        requestLayout();
    }

    private boolean n() {
        return this.aI && !e(this.S) && this.D.getVisibility() != 0 && (this.E == null || !this.E.a());
    }

    public boolean b() {
        return this.ao == 1 || this.ao == 3;
    }

    private boolean o() {
        return (this.ao == 0 || this.ao == 5) ? false : true;
    }

    void f(boolean z) {
        if (this.S != null && this.T != null) {
            this.T.a(cet.a(this, this.S, z));
        }
    }

    void a(MediaEntity mediaEntity) {
        if (this.S != null && this.T != null) {
            if (cpb.c(mediaEntity)) {
                this.T.b(this.S, this);
            } else {
                this.T.a(this.S, mediaEntity, this);
            }
        }
    }

    void c() {
        if (this.S != null && this.T != null) {
            cgl aa = this.S.aa();
            if (aa != null) {
                this.T.a(this.S, aa, this);
            }
        }
    }

    void a(EditableMedia editableMedia) {
        if (this.S != null && this.T != null) {
            this.T.a(this.S, editableMedia, this);
        }
    }

    void d() {
        if (this.S != null && this.T != null) {
            Tweet tweet = this.S;
            MediaEntity W = tweet.W();
            if (W != null) {
                this.T.a(tweet, W.c, this);
            }
        }
    }

    void g() {
        if (this.S != null && this.T != null) {
            cr crVar = (cr) CollectionUtils.c(this.S.w.b());
            if (crVar != null) {
                this.T.b(this.S, crVar);
            }
        }
    }

    void h() {
        if (this.S != null && this.T != null) {
            if (this.an == 1) {
                this.T.a(this.S, this);
            } else if (this.an == 2) {
                this.T.d(this.S, this);
            }
        }
    }

    void i() {
        if (this.S != null && this.T != null) {
            this.T.c(this.S, this);
        }
    }

    boolean j() {
        if (this.S == null || this.T == null) {
            return false;
        }
        return this.T.a(this.S);
    }

    void a(int i) {
        if (this.S != null && this.T != null) {
            this.T.a(this.S, this, i);
        }
    }

    void b(TweetActionType tweetActionType) {
        if (this.S != null && this.T != null) {
            this.T.a(tweetActionType, this);
        }
    }

    void k() {
        if (this.T != null && this.S != null && this.S.N != null) {
            this.T.a(this.S, this.S.N, this);
        }
    }

    public void b(int i) {
        if (this.aH != null) {
            com.twitter.model.timeline.s actionPrompt = this.aH.getActionPrompt();
            if (actionPrompt != null) {
                actionPrompt.k();
                this.aH.c();
                a(i);
            }
        }
        requestLayout();
    }

    public void e(boolean z) {
        BadgeView badgeView = this.D;
        int i = (!z || r()) ? 8 : 0;
        badgeView.setVisibility(i);
    }

    public void a(int i, String str) {
        if (r()) {
            this.J.a(i, str);
        } else {
            this.D.a(i, str);
        }
    }

    public f getContentContainer() {
        if (this.at == null || this.at.f() == null) {
            return f.B;
        }
        return this.at.f();
    }

    public void a(boolean z) {
        if (this.aj) {
            if (z) {
                this.S.a = true;
                Tweet tweet = this.S;
                tweet.o++;
            } else {
                this.S.a = false;
                this.S.o = Math.max(this.S.o - 1, 0);
            }
            d(this.S);
        }
    }

    public void c(boolean z) {
        if (!this.aj) {
            return;
        }
        if (r()) {
            this.J.setFollowButtonChecked(z);
        } else {
            d(this.S);
        }
    }

    public void d(boolean z) {
    }

    public void b(boolean z) {
        boolean z2 = true;
        if (this.aj) {
            boolean z3;
            int i;
            Tweet tweet = this.S;
            if (z) {
                z3 = false;
            } else {
                z3 = true;
            }
            tweet.d = z3;
            tweet = this.S;
            int i2 = this.S.l;
            if (z) {
                i = -1;
            } else {
                i = 1;
            }
            tweet.l = Math.max(i + i2, 0);
            d(this.S);
            if (this.aJ.h) {
                cej cej = this.y;
                Tweet tweet2 = this.S;
                s sVar = this.aJ;
                long ownerId = getOwnerId();
                if (this.C.getVisibility() != 0) {
                    z2 = false;
                }
                cej.a(tweet2, sVar, ownerId, z2);
            }
        }
    }

    public void l() {
        if (this.ar) {
            this.ar = false;
            this.z.setFromMemoryOnly(false);
            if (this.w.getVisibility() == 0) {
                this.w.setMediaFromMemoryOnly(false);
            }
            s();
        }
    }

    public void setShouldSimulateInlineActions(boolean z) {
        if (this.aj != z) {
            this.aj = z;
            requestLayout();
        }
    }

    public void setAlwaysExpandMedia(boolean z) {
        if (this.ak != z) {
            this.ak = z;
            this.w.setAlwaysExpandMedia(z);
            requestLayout();
        }
    }

    public void setExpandCardMedia(boolean z) {
        if (this.al != z) {
            this.al = z;
            requestLayout();
        }
    }

    private boolean p() {
        return this.al && this.S != null && !ceq.d(this.S) && (this.S.h() || this.S.i());
    }

    public void setAlwaysStripMediaUrls(boolean z) {
        if (this.az != z) {
            this.az = z;
            requestLayout();
        }
    }

    public void setPromotedBadgeEnabled(boolean z) {
        this.aD.a(z);
    }

    public void a(boolean z, boolean z2) {
        this.ah = z;
        this.ai = z2;
    }

    private void q() {
        if (this.at != null) {
            View d = this.at.d();
            if (d != null) {
                com.twitter.util.ui.a.a(d, 4);
                addView(d);
                this.au = true;
            }
        }
    }

    private View getForwardMediaView() {
        return this.at != null ? this.at.d() : null;
    }

    String getFavoriteLabel() {
        return this.K.b(TweetActionType.b);
    }

    String getRetweetLabel() {
        return this.K.b(TweetActionType.c);
    }

    private boolean r() {
        return ceq.c(this.S) && !this.aJ.m;
    }

    private void s() {
        if (this.at != null) {
            if (this.av) {
                this.at.ba_();
                q();
                this.av = false;
            }
            if (!this.ar) {
                this.at.c();
            }
        }
    }

    private void t() {
        if (this.at != null) {
            i iVar = this.at;
            this.at = null;
            this.au = false;
            iVar.bb_();
            View d = iVar.d();
            if (d != null) {
                removeView(d);
            }
        }
    }

    private void g(boolean z) {
        buf a = buf.a();
        this.aB = a.b();
        this.aC = a.e();
        this.aA = a.f();
        setupInlineActionBar(z);
        u();
    }

    private void u() {
        this.z.setSize(this.aB);
        this.x.setTextOffset(this.z.getLayoutParams().width);
    }

    private void a(InlineActionBar inlineActionBar) {
        inlineActionBar.setFriendshipCache(this.U);
        inlineActionBar.setOnInlineActionClickListener(new ay(this));
        com.twitter.util.ui.a.a(inlineActionBar, 4);
    }

    private void d(Tweet tweet) {
        if (this.K == null) {
            return;
        }
        if (e(tweet)) {
            this.K.setVisibility(8);
            return;
        }
        this.K.setVisibility(0);
        this.K.setTweet(tweet);
    }

    private boolean e(Tweet tweet) {
        return this.ae || tweet == null || tweet.c() || ceq.c(tweet) || tweet.z != null;
    }

    private void setupInlineActionBar(boolean z) {
        if (this.K != null) {
            this.K.setShouldHideDMInlineAction(z);
            this.K.setShowBadge(false);
            this.K.setInlineActionTypes(!z ? InlineActionBar.b : InlineActionBar.a);
        }
    }

    private int a(Rect rect) {
        return this.f_ ? rect.right : rect.left;
    }

    private void a(Rect rect, int i, int i2) {
        rect.set(getPaddingLeft(), i, i2 - getPaddingRight(), i);
    }

    private void a(Rect rect, int i, int i2, boolean z, CellLayoutParams cellLayoutParams) {
        a(rect, i, i2);
        if (z) {
            a(rect, cellLayoutParams);
        }
    }

    private boolean a(View view, Rect rect, int i, int i2, int i3) {
        boolean z = true;
        if (view.getVisibility() == 8) {
            return false;
        }
        int i4;
        measureChildWithMargins(view, i2, i - rect.width(), i3, rect.top);
        CellLayoutParams a = CellLayoutParams.a(view);
        Rect b = a.b();
        boolean z2 = a.a() ? this.f_ : !this.f_;
        int i5 = a.topMargin + rect.top;
        if (z2) {
            i4 = rect.left + a.leftMargin;
        } else {
            i4 = (rect.right - a.rightMargin) - view.getMeasuredWidth();
        }
        b.set(i4, i5, view.getMeasuredWidth() + i4, view.getMeasuredHeight() + i5);
        if (z2) {
            rect.left = b.right + a.rightMargin;
        } else {
            rect.right = b.left - a.leftMargin;
        }
        if (a.c()) {
            rect.bottom = Math.max(rect.bottom, b.bottom + a.bottomMargin);
        }
        if (rect.width() < 0) {
            z = false;
        }
        return z;
    }
}
