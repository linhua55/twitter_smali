package com.twitter.library.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.SystemClock;
import android.support.annotation.IdRes;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import bcx;
import bup;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.util.ad;
import com.twitter.library.client.bg;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ao;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.util.ak;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;
import cqs;
import cwj;
import defpackage.bct;
import defpackage.bcu;
import defpackage.bdd;
import defpackage.cdx;
import defpackage.cdz;
import defpackage.cea;
import defpackage.ceb;
import defpackage.cef;
import defpackage.ceg;
import defpackage.ceh;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class InlineActionBar extends ViewGroup implements OnClickListener {
    public static final List<TweetActionType> a;
    public static final List<TweetActionType> b;
    private static final boolean c;
    private static final Paint d;
    private Bitmap e;
    private final boolean f;
    private final int g;
    private final float h;
    private final boolean i;
    private final Map<TweetActionType, ceb> j;
    private final List<ceb> k;
    private List<TweetActionType> l;
    private Tweet m;
    private boolean n;
    private boolean o;
    private float p;
    private FriendshipCache q;
    private cea r;
    private cqs s;
    private n t;
    private long u;

    static {
        a = n.a(TweetActionType.d, new TweetActionType[]{TweetActionType.c, TweetActionType.b, TweetActionType.n});
        b = n.a(TweetActionType.d, new TweetActionType[]{TweetActionType.c, TweetActionType.b, TweetActionType.m});
        c = cwj.a();
        d = new Paint(1);
    }

    public InlineActionBar(Context context) {
        this(context, null);
    }

    public InlineActionBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.inlineActionBarStyle);
    }

    public InlineActionBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = ak.f();
        this.j = new EnumMap(TweetActionType.class);
        this.k = new ArrayList();
        this.n = false;
        this.u = 0;
        Resources resources = getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.InlineActionBar, i, 0);
        this.f = obtainStyledAttributes.getBoolean(bdd.InlineActionBar_displayBorder, false);
        this.g = resources.getColor(bcu.light_gray);
        this.h = (float) obtainStyledAttributes.getDimensionPixelSize(bdd.InlineActionBar_inlineActionBorderWidth, 1);
        this.p = ao.a(ao.a);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            setupChildView(getChildAt(i));
        }
        setInlineActionTypes(b);
    }

    public void onClick(View view) {
        if (this.t != null && e()) {
            TweetActionType b = b(view.getId());
            d(b);
            ceb ceb = (ceb) this.j.get(b);
            switch (l.a[b.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.t.a(b);
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    a(ceb, false);
                    this.t.a(b);
                case Util.TYPE_OTHER /*3*/:
                    if (this.m == null) {
                        return;
                    }
                    if (this.m.a) {
                        this.t.a(b);
                    } else {
                        a(ceb, true);
                    }
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    this.t.a(b);
                case EbmlReader.TYPE_FLOAT /*5*/:
                    this.t.a(b);
                default:
            }
        }
    }

    private void d(TweetActionType tweetActionType) {
        if (ao.b) {
            ad.a(getContext()).a(tweetActionType == TweetActionType.d ? 0 : 2);
        }
    }

    private void a(ceb ceb, boolean z) {
        if (!c) {
            InlineActionView c = c(ceb);
            if (ceb.a() == TweetActionType.b && f()) {
                if (this.s == null) {
                    this.s = new cqs(this).a(bup.a().c());
                }
                this.s.a(new m(ceb, z, null)).a();
                return;
            }
            Animation b = b();
            b.setAnimationListener(new k(this, z, ceb));
            View iconView = c.getIconView();
            iconView.clearAnimation();
            iconView.startAnimation(b);
        } else if (z && this.t != null) {
            this.t.a(ceb.a());
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.n) {
            c();
        } else {
            d();
        }
    }

    private void c() {
        int width = getWidth() - getPaddingRight();
        int paddingLeft = getPaddingLeft();
        boolean z = this.i;
        int size = this.k.size();
        int i = 0;
        while (i < size) {
            int i2;
            InlineActionView c = c((ceb) this.k.get(i));
            if (c.getVisibility() == 8) {
                i2 = paddingLeft;
                paddingLeft = width;
            } else if (z) {
                a(width - c.getMeasuredWidth(), 0, c);
                int i3 = paddingLeft;
                paddingLeft = width - c.getMeasuredWidth();
                i2 = i3;
            } else {
                a(paddingLeft, 0, c);
                i2 = c.getMeasuredWidth() + paddingLeft;
                paddingLeft = width;
            }
            i++;
            width = paddingLeft;
            paddingLeft = i2;
        }
    }

    private void d() {
        int width = ((getWidth() - getPaddingRight()) - getPaddingLeft()) / 4;
        int size = this.k.size();
        for (int i = 0; i < size; i++) {
            a(i, c((ceb) this.k.get(i)), width);
        }
    }

    private void a(int i, InlineActionView inlineActionView, int i2) {
        if (inlineActionView.getVisibility() != 8) {
            if (i >= (!this.o ? 4 : 3)) {
                if (this.i) {
                    a(getPaddingLeft(), 0, inlineActionView);
                } else {
                    a((getWidth() - getPaddingRight()) - inlineActionView.getMeasuredWidth(), 0, inlineActionView);
                }
            } else if (this.i) {
                a(((getWidth() - getPaddingRight()) - (i2 * i)) - inlineActionView.getMeasuredWidth(), 0, inlineActionView);
            } else {
                a(getPaddingLeft() + (i2 * i), 0, inlineActionView);
            }
        }
    }

    private static void a(int i, int i2, InlineActionView inlineActionView) {
        inlineActionView.layout(i, i2, inlineActionView.getMeasuredWidth() + i, inlineActionView.getMeasuredHeight() + i2);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.s != null) {
            this.s.f();
        }
    }

    protected void onMeasure(int i, int i2) {
        measureChildren(a(i), i2);
        int resolveSize = resolveSize(getDesiredHeight(), i2);
        if (this.n) {
            int paddingRight = getPaddingRight() + getPaddingLeft();
            int childCount = getChildCount();
            int i3 = paddingRight;
            for (paddingRight = 0; paddingRight < childCount; paddingRight++) {
                View childAt = getChildAt(paddingRight);
                if (childAt.getVisibility() != 8) {
                    i3 += childAt.getMeasuredWidth();
                }
            }
            i = resolveSize(i3, i);
        }
        setMeasuredDimension(i, resolveSize);
    }

    private int a(int i) {
        if (this.n) {
            return i;
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        return MeasureSpec.makeMeasureSpec(paddingLeft + ((MeasureSpec.getSize(i) - paddingLeft) / 4), MeasureSpec.getMode(i));
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f) {
            Paint paint = d;
            paint.setColor(this.g);
            paint.setStrokeWidth(this.h);
            canvas.drawRect(0.0f, 0.0f, (float) getWidth(), this.h, paint);
        }
    }

    public void setFriendshipCache(FriendshipCache friendshipCache) {
        this.q = friendshipCache;
        this.r = null;
    }

    public void setShouldHideDMInlineAction(boolean z) {
        this.o = z;
    }

    public void setShowBadge(boolean z) {
        if (this.n != z) {
            this.n = z;
            for (ceb c : this.j.values()) {
                c(c).setShowBadge(z);
            }
            requestLayout();
        }
    }

    public void setInlineActionTypes(List<TweetActionType> list) {
        if (!list.equals(this.l)) {
            this.l = list;
            this.k.clear();
            for (TweetActionType tweetActionType : list) {
                ceb ceb = (ceb) this.j.get(tweetActionType);
                if (ceb != null) {
                    this.k.add(ceb);
                    ceb.b();
                }
            }
            for (TweetActionType tweetActionType2 : (Set) ar.d().b(this.j.keySet()).c(list).q()) {
                c((ceb) this.j.get(tweetActionType2)).setVisibility(8);
            }
        }
    }

    public void setTweet(Tweet tweet) {
        if (tweet != null) {
            this.m = tweet;
            a();
        }
    }

    public void a() {
        Tweet tweet = this.m;
        if (tweet != null) {
            cea inlineActionConfig = getInlineActionConfig();
            int size = this.k.size();
            for (int i = 0; i < size; i++) {
                ((ceb) this.k.get(i)).c(tweet, inlineActionConfig);
            }
        }
    }

    public void setOnInlineActionClickListener(n nVar) {
        this.t = nVar;
    }

    public static Animation b() {
        Animation scaleAnimation = new ScaleAnimation(1.0f, 1.4f, 1.0f, 1.4f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(85);
        scaleAnimation.setInterpolator(new DecelerateInterpolator());
        Animation scaleAnimation2 = new ScaleAnimation(1.4f, 1.0f, 1.4f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration(165);
        Animation animationSet = new AnimationSet(true);
        animationSet.addAnimation(scaleAnimation);
        animationSet.addAnimation(scaleAnimation2);
        return animationSet;
    }

    public void setBylineSize(float f) {
        if (this.p != f) {
            this.p = f;
            for (ceb c : this.j.values()) {
                c(c).setBylineSize(f);
            }
            requestLayout();
        }
    }

    public boolean a(TweetActionType tweetActionType) {
        ceb ceb = (ceb) this.j.get(tweetActionType);
        return (ceb == null || ceb.c() == 3) ? false : true;
    }

    public String b(TweetActionType tweetActionType) {
        ceb ceb = (ceb) this.j.get(tweetActionType);
        return ceb != null ? ceb.d() : null;
    }

    public View c(TweetActionType tweetActionType) {
        ceb ceb = (ceb) this.j.get(tweetActionType);
        return ceb != null ? ((InlineActionView) ceb.e()).getIconView() : null;
    }

    private cea getInlineActionConfig() {
        if (this.r == null) {
            this.r = new cea(this.q, getResources());
        }
        this.r.c = bg.a().c().f();
        return this.r;
    }

    private void setupChildView(View view) {
        if (view instanceof InlineActionView) {
            InlineActionView inlineActionView = (InlineActionView) view;
            inlineActionView.setOnClickListener(this);
            inlineActionView.setBylineSize(this.p);
            inlineActionView.setSoundEffectsEnabled(false);
            switch (l.a[b(view.getId()).ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    b(new cef(inlineActionView));
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    b(new ceg(inlineActionView));
                case Util.TYPE_OTHER /*3*/:
                    b(new cdz(inlineActionView));
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    b(new cdx(inlineActionView));
                case EbmlReader.TYPE_FLOAT /*5*/:
                    b(new ceh(inlineActionView));
                default:
            }
        }
    }

    private void b(ceb ceb) {
        this.j.put(ceb.a(), ceb);
    }

    private static TweetActionType b(@IdRes int i) {
        if (i == bcx.inline_reply) {
            return TweetActionType.d;
        }
        if (i == bcx.inline_retweet) {
            return TweetActionType.c;
        }
        if (i == bcx.inline_like) {
            return TweetActionType.b;
        }
        if (i == bcx.inline_analytics) {
            return TweetActionType.n;
        }
        if (i == bcx.inline_dm) {
            return TweetActionType.m;
        }
        throw new IllegalArgumentException("unexpected id:" + i);
    }

    private int getDesiredHeight() {
        int i = 0;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                i = Math.max(childAt.getMeasuredHeight(), i);
            }
        }
        return i;
    }

    private boolean e() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.u <= ((long) ViewConfiguration.getJumpTapTimeout())) {
            return false;
        }
        this.u = elapsedRealtime;
        return true;
    }

    private static InlineActionView c(ceb ceb) {
        return (InlineActionView) ceb.e();
    }

    private static boolean f() {
        return bup.a().b();
    }

    public void a(Canvas canvas, ViewGroup viewGroup) {
        if (this.e != null && getVisibility() == 0) {
            View iconView = c((ceb) this.j.get(TweetActionType.b)).getIconView();
            int a = r.a(iconView, viewGroup);
            int b = r.b(iconView, viewGroup);
            Size b2 = this.s.b();
            a += iconView.getWidth() / 2;
            canvas.drawBitmap(this.e, (float) (a - (b2.a() / 2)), (float) (((iconView.getHeight() / 2) + b) - (b2.b() / 2)), null);
        }
    }
}
