package com.twitter.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.DrawableRes;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import bct;
import bcw;
import bdc;
import bdd;
import cee;
import com.twitter.library.client.bg;
import com.twitter.library.media.widget.AdaptiveTweetMediaView;
import com.twitter.library.media.widget.z;
import com.twitter.library.provider.aq;
import com.twitter.library.util.ao;
import com.twitter.library.util.q;
import com.twitter.media.ui.image.h;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.as;
import com.twitter.ui.widget.TextLayoutView;
import com.twitter.ui.widget.TweetHeaderView;
import com.twitter.ui.widget.ax;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;
import defpackage.cgl;
import defpackage.cpb;
import java.util.Collection;

/* compiled from: Twttr */
public class QuoteView extends ViewGroup implements h {
    private static final TextPaint b;
    private boolean A;
    private boolean B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private float H;
    private float I;
    private boolean J;
    private int K;
    protected as a;
    private final AdaptiveTweetMediaView c;
    private final ImageView d;
    private final Rect e;
    private final RectF f;
    private final ax g;
    private final TweetHeaderView h;
    private final cee i;
    private final TextLayoutView j;
    private final float k;
    private final int l;
    private final int m;
    private final int n;
    private final int o;
    private final int p;
    private final int q;
    private final int r;
    private final int s;
    private final int t;
    @DrawableRes
    private final int u;
    @DrawableRes
    private final int v;
    private String w;
    private boolean x;
    private StaticLayout y;
    private StaticLayout z;

    static {
        b = new TextPaint(1);
    }

    public QuoteView(Context context) {
        this(context, null);
    }

    public QuoteView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.quoteViewStyle);
    }

    public QuoteView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new Rect();
        this.f = new RectF();
        this.B = true;
        this.K = 0;
        setWillNotDraw(false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.QuoteView, i, 0);
        this.p = obtainStyledAttributes.getColor(bdd.QuoteView_borderColor, 0);
        this.G = obtainStyledAttributes.getDimensionPixelSize(bdd.QuoteView_borderCornerRadius, 0);
        this.n = obtainStyledAttributes.getColor(bdd.QuoteView_contentColor, 0);
        this.o = obtainStyledAttributes.getColor(bdd.QuoteView_bylineColor, 0);
        this.g = ax.a(context);
        this.h = new TweetHeaderView(context, obtainStyledAttributes.getResourceId(bdd.QuoteView_quoteViewHeaderStyle, 0));
        this.h.setShowTimestamp(false);
        addView(this.h);
        this.c = new AdaptiveTweetMediaView(context);
        this.c.c(true);
        this.c.setShowPlayerOverlay(false);
        this.c.setMediaPlaceholder(obtainStyledAttributes.getResourceId(bdd.QuoteView_mediaPlaceholder, 0));
        this.c.setBackgroundResource(0);
        this.c.setMediaDividerSize(obtainStyledAttributes.getDimensionPixelSize(bdd.QuoteView_mediaDividerSize, 0));
        addView(this.c);
        this.d = new ImageView(context);
        this.d.setScaleType(ScaleType.CENTER);
        this.d.setBackgroundResource(bcw.bg_quoted_media_warning);
        addView(this.d);
        this.u = obtainStyledAttributes.getResourceId(bdd.QuoteView_sensitiveMediaCoverDrawable, 0);
        this.v = obtainStyledAttributes.getResourceId(bdd.QuoteView_sensitiveMediaCoverSmallDrawable, 0);
        this.q = obtainStyledAttributes.getDimensionPixelSize(bdd.QuoteView_borderWidth, 0);
        this.r = obtainStyledAttributes.getDimensionPixelSize(bdd.QuoteView_mediaTextGap, 0);
        this.s = obtainStyledAttributes.getDimensionPixelSize(bdd.QuoteView_contentPaddingTop, 0);
        this.t = obtainStyledAttributes.getDimensionPixelSize(bdd.QuoteView_compactMediaWidth, 0);
        this.k = obtainStyledAttributes.getDimension(bdd.QuoteView_interstitialTextSize, ao.a());
        this.l = obtainStyledAttributes.getColor(bdd.QuoteView_interstitialTextColor, 0);
        this.m = obtainStyledAttributes.getColor(bdd.QuoteView_interstitialBackgroundColor, 0);
        this.j = new TextLayoutView(context, obtainStyledAttributes.getResourceId(bdd.QuoteView_quoteViewReplyContextStyle, 0));
        this.i = new cee(this.j, getResources());
        addView(this.j);
        float dimension = obtainStyledAttributes.getDimension(bdd.QuoteView_contentSize, ao.a);
        a(dimension, obtainStyledAttributes.getDimension(bdd.QuoteView_bylineSize, ao.a(dimension)));
        obtainStyledAttributes.recycle();
        a();
    }

    public void a(boolean z) {
        if (z && this.a != null) {
            this.x = true;
            invalidate();
            requestLayout();
        }
        this.a = null;
        g();
        this.c.d();
        this.c.setVisibility(8);
        this.d.setVisibility(8);
        this.j.setVisibility(8);
    }

    public void setDisplayMode(int i) {
        if (this.K != i) {
            this.K = i;
            a();
        }
    }

    public void a(float f, float f2) {
        if (f != this.H || f2 != this.I) {
            this.H = f;
            this.I = f2;
            this.h.a(this.H, this.I, this.I);
            this.j.a(f2);
            g();
            requestLayout();
            invalidate();
        }
    }

    public void setQuoteData(as asVar) {
        a(asVar, false);
    }

    public void a(as asVar, boolean z) {
        a(false);
        this.a = asVar;
        if (asVar != null) {
            this.h.setVisibility(0);
            this.h.a(asVar.c, asVar.d, null, 0, 0);
            this.i.a(asVar, getOwnerId(), this.K);
            if (this.B) {
                this.w = aq.a(this.a).a(true).b(true).d(false).a().a;
            } else {
                this.w = asVar.g.trim();
            }
            this.c.setFromMemoryOnly(z);
            if (c()) {
                this.d.setVisibility(0);
                this.c.setVisibility(8);
            } else {
                this.d.setVisibility(8);
                cgl cgl = asVar.k;
                Object d = cpb.d(asVar.h.d);
                Object e = cpb.e(asVar.h.d);
                Collection d2 = cpb.d(asVar.h.d, Size.b);
                String str = this.a.p;
                if (d != null && this.B) {
                    this.c.a(n.b(d), str);
                    this.c.setVisibility(0);
                } else if (e != null && this.B) {
                    this.c.a(n.b(e), str);
                    this.c.setVisibility(0);
                } else if (!CollectionUtils.b(d2) && this.B) {
                    if (this.K == 0) {
                        this.c.a(d2, str);
                    } else {
                        this.c.a(n.b(d2.get(0)), str);
                    }
                    this.c.setVisibility(0);
                } else if (cgl == null || cgl.r() == null || !this.B) {
                    this.c.setVisibility(8);
                } else {
                    this.c.setCard(cgl);
                    this.c.setVisibility(0);
                }
            }
        } else {
            this.h.setVisibility(8);
            this.d.setVisibility(8);
            this.c.setVisibility(8);
        }
        this.x = true;
        invalidate();
        requestLayout();
    }

    public void setAlwaysExpandMedia(boolean z) {
        if (this.B != z) {
            this.B = z;
            requestLayout();
        }
    }

    public void aG_() {
        this.c.aG_();
    }

    public void f() {
        this.c.f();
    }

    public void setMediaFromMemoryOnly(boolean z) {
        this.c.setFromMemoryOnly(z);
    }

    public void setOnImageLoadedListener(z zVar) {
        this.c.setOnImageLoadedListener(zVar);
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        Paint paint = b;
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size2 = MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            i3 = size;
        } else {
            i3 = getMeasuredWidth();
        }
        int paddingLeft;
        if (this.a == null) {
            paddingLeft = (i3 - getPaddingLeft()) - getPaddingRight();
            if (this.z == null && paddingLeft > 0) {
                paint.setTextSize(this.k);
                paint.setTypeface(this.g.a);
                this.z = new StaticLayout(getContext().getResources().getString(bdc.quote_tweet_interstitial_text), paint, paddingLeft, Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            }
            size = getPaddingTop() + getPaddingBottom();
            if (this.z != null) {
                size += this.z.getHeight();
            }
        } else {
            boolean d = d();
            CharSequence charSequence = this.w;
            mode = Math.max(0, i3 - (((this.q * 2) + getPaddingLeft()) + getPaddingRight()));
            if (this.K == 1 && d) {
                size = Math.max(0, (mode - this.t) - this.r);
            } else {
                size = mode;
            }
            this.h.measure(MeasureSpec.makeMeasureSpec(size, 1073741824), 0);
            if (this.j.getVisibility() != 8) {
                this.j.measure(MeasureSpec.makeMeasureSpec(size, 1073741824), 0);
            }
            if (d) {
                if (this.K == 1) {
                    paddingLeft = this.t;
                    int makeMeasureSpec = MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
                    mode = paddingLeft;
                    paddingLeft = size;
                    size = makeMeasureSpec;
                } else {
                    mode = Math.max(0, (mode - this.r) / 2);
                    if (c()) {
                        size = MeasureSpec.makeMeasureSpec(Math.round(((float) mode) * 0.75f), 1073741824);
                        paddingLeft = mode;
                    } else {
                        size = 0;
                        paddingLeft = mode;
                    }
                }
                View applicableMediaView = getApplicableMediaView();
                applicableMediaView.measure(MeasureSpec.makeMeasureSpec(mode, 1073741824), size);
                size = applicableMediaView.getMeasuredHeight();
            } else {
                size = 0;
                this.c.d();
                paddingLeft = mode;
            }
            paint.setTextSize(this.H);
            paint.setTypeface(this.g.a);
            if (this.y == null && aj.b(charSequence) && paddingLeft > 0) {
                float fontSpacing = paint.getFontSpacing();
                if (this.K == 0 && fontSpacing >= 1.0f && d) {
                    this.F = Math.max(1, (int) Math.floor((double) (((float) size) / fontSpacing)));
                } else {
                    this.F = this.K == 1 ? 1 : 5;
                }
                this.y = a(charSequence, paddingLeft, paint, this.F);
            }
            if (this.y != null) {
                this.E = -a(this.y, charSequence, paint);
            }
            if (this.y == null) {
                mode = 0;
            } else {
                mode = this.y.getHeight() + this.E;
            }
            int paddingTop = (getPaddingTop() + getPaddingBottom()) + (this.q * 2);
            if (this.K == 0) {
                paddingTop += this.h.getMeasuredHeight();
                if (mode > 0 || size > 0) {
                    size = (Math.max(size, mode) + this.s) + paddingTop;
                } else {
                    size = paddingTop;
                }
                if (this.j.getVisibility() != 8) {
                    size += this.j.getMeasuredHeight();
                }
            } else if (this.K == 1) {
                size = Math.max(size, mode + (this.h.getMeasuredHeight() + this.s)) + paddingTop;
            } else {
                size = paddingTop;
            }
        }
        if (mode2 == RtlSpacingHelper.UNDEFINED) {
            size = Math.min(size, size2);
        } else if (mode2 == 1073741824) {
            size = size2;
        }
        setMeasuredDimension(i3, size);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = 0;
        if (z || this.x) {
            this.x = false;
            if (this.a != null) {
                int measuredWidth;
                int paddingTop = getPaddingTop() + this.q;
                int paddingLeft = this.q + getPaddingLeft();
                View applicableMediaView = getApplicableMediaView();
                if (this.A && this.K == 1 && d()) {
                    measuredWidth = (applicableMediaView.getMeasuredWidth() + paddingLeft) + this.r;
                } else {
                    measuredWidth = paddingLeft;
                }
                this.h.layout(measuredWidth, paddingTop, this.h.getMeasuredWidth() + measuredWidth, this.h.getMeasuredHeight() + paddingTop);
                if (this.j.getVisibility() != 8) {
                    int bottom = this.h.getBottom();
                    this.j.layout(measuredWidth, bottom, this.j.getMeasuredWidth() + measuredWidth, this.j.getMeasuredHeight() + bottom);
                    measuredWidth = this.j.getBottom() + this.s;
                } else {
                    measuredWidth = this.h.getBottom() + this.s;
                }
                boolean z2 = this.A;
                if (this.K == 0) {
                    i5 = 1;
                }
                if ((i5 ^ z2) == 0) {
                    i5 = getWidth() - ((this.q + getPaddingRight()) + applicableMediaView.getMeasuredWidth());
                    this.C = paddingLeft;
                    paddingLeft = i5;
                } else if (this.y != null) {
                    this.C = getWidth() - ((this.q + getPaddingRight()) + this.y.getWidth());
                }
                this.D = this.E + measuredWidth;
                if (applicableMediaView.getVisibility() == 0 && applicableMediaView.getMeasuredWidth() > 0 && applicableMediaView.getMeasuredHeight() > 0) {
                    if (this.K == 1) {
                        measuredWidth = paddingTop;
                    }
                    applicableMediaView.layout(paddingLeft, measuredWidth, applicableMediaView.getMeasuredWidth() + paddingLeft, applicableMediaView.getMeasuredHeight() + measuredWidth);
                }
            }
        }
    }

    protected void onDraw(Canvas canvas) {
        Paint paint = b;
        float width = (float) getWidth();
        float height = (float) getHeight();
        if (this.a == null) {
            paint.setColor(this.m);
            this.f.set(0.0f, 0.0f, width, height);
            canvas.drawRoundRect(this.f, (float) this.G, (float) this.G, paint);
            if (this.z != null) {
                canvas.save();
                canvas.translate((float) getPaddingLeft(), (float) getPaddingTop());
                paint.setTextSize(this.k);
                paint.setTypeface(this.g.a);
                paint.setColor(this.l);
                this.z.draw(canvas);
                canvas.restore();
                return;
            }
            return;
        }
        float f = (float) this.q;
        float f2 = f / 2.0f;
        if (this.q > 0) {
            paint.setColor(this.p);
            paint.setStrokeWidth(f);
            this.f.set(f2, f2, width - f2, height - f2);
            paint.setStyle(Style.STROKE);
            canvas.drawRoundRect(this.f, (float) this.G, (float) this.G, paint);
            paint.setStyle(Style.FILL);
        }
        if (this.y != null) {
            canvas.save();
            canvas.translate((float) this.C, (float) this.D);
            if (this.y.getLineCount() > this.F) {
                canvas.clipRect(0, 0, this.y.getWidth(), this.y.getLineTop(this.F));
            }
            paint.setTextSize(this.H);
            paint.setTypeface(this.g.a);
            paint.setColor(this.n);
            this.y.draw(canvas);
            canvas.restore();
        }
    }

    public void b() {
        this.c.d();
    }

    public void setDisplaySensitiveMedia(boolean z) {
        if (z != this.J) {
            this.J = z;
            invalidate();
            requestLayout();
        }
    }

    private void a() {
        boolean z = this.K == 0;
        this.c.a(z);
        this.c.setShowMediaBadge(z);
        int i = z ? this.u : this.v;
        if (i > 0) {
            this.d.setImageDrawable(getResources().getDrawable(i));
        }
    }

    private boolean c() {
        return this.a.l && !this.J;
    }

    private boolean d() {
        return c() || this.c.g();
    }

    private View getApplicableMediaView() {
        return c() ? this.d : this.c;
    }

    private int a(Layout layout, String str, Paint paint) {
        paint.getTextBounds(str, 0, str.length(), this.e);
        if (this.e.height() == 0) {
            return 0;
        }
        return this.e.top - layout.getLineAscent(0);
    }

    private long getOwnerId() {
        TwitterUser f = bg.a().c().f();
        return f != null ? f.c : 0;
    }

    private StaticLayout a(String str, int i, TextPaint textPaint, int i2) {
        CharSequence a = q.a(getContext()).a(getParent() != null ? (View) getParent() : this, str, textPaint.getFontMetrics());
        StaticLayout a2 = r.a(a, 0, str.length(), textPaint, i, Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false, TruncateAt.END, i, i2);
        if (a2 != null) {
            return a2;
        }
        return new StaticLayout(a, 0, str.length(), textPaint, i, Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
    }

    private void g() {
        this.y = null;
        this.z = null;
    }

    public void setRenderRtl(boolean z) {
        this.A = z;
    }

    public void setBorderCornerRadius(int i) {
        this.G = i;
    }
}
