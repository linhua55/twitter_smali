package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.ui.i;
import com.twitter.util.ui.r;
import defpackage.cqh;
import defpackage.cqi;

/* compiled from: Twttr */
public class TweetHeaderView extends TouchableView {
    private static final int[] a;
    private int A;
    private float B;
    private float C;
    private float D;
    private String E;
    private String F;
    private String G;
    private String H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private final boolean b;
    private final Rect c;
    private final Rect d;
    private final TextPaint e;
    private OnClickListener f;
    private float g;
    private int h;
    private int i;
    private ColorStateList j;
    private ColorStateList k;
    private ColorStateList l;
    private ColorStateList m;
    private ax n;
    private StaticLayout o;
    private int p;
    private StaticLayout q;
    private int r;
    private StaticLayout s;
    private int t;
    private Drawable u;
    private Drawable v;
    private aj w;
    private int x;
    private int y;
    private int z;

    static {
        a = new int[]{cqh.state_name_username_pressed};
    }

    public TweetHeaderView(Context context) {
        this(context, null);
    }

    public TweetHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cqh.tweetHeaderViewStyle);
    }

    public TweetHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = ak.f();
        this.c = new Rect();
        this.d = new Rect();
        this.e = new TextPaint(1);
        this.I = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cqi.TweetHeaderView, i, 0);
        a(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public TweetHeaderView(Context context, int i) {
        super(context, null);
        this.b = ak.f();
        this.c = new Rect();
        this.d = new Rect();
        this.e = new TextPaint(1);
        this.I = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, cqi.TweetHeaderView);
        a(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    private void a(Context context, TypedArray typedArray) {
        this.n = ax.a(context);
        this.j = typedArray.getColorStateList(cqi.TweetHeaderView_nameColor);
        this.l = typedArray.getColorStateList(cqi.TweetHeaderView_timestampColor);
        this.k = this.l;
        this.m = typedArray.getColorStateList(cqi.TweetHeaderView_usernameColor);
        this.A = typedArray.getColor(cqi.TweetHeaderView_indicatorColor, 0);
        this.g = typedArray.getFloat(cqi.TweetHeaderView_android_lineSpacingMultiplier, 1.0f);
        this.h = typedArray.getDimensionPixelSize(cqi.TweetHeaderView_android_lineSpacingExtra, 0);
        this.i = typedArray.getDimensionPixelSize(cqi.TweetHeaderView_headerIconSpacing, 4);
        drawableStateChanged();
    }

    public void a(String str, String str2, String str3, @DrawableRes int i, @DrawableRes int i2) {
        f();
        this.u = null;
        this.v = null;
        this.d.setEmpty();
        if (aj.a(str)) {
            str = null;
        }
        this.E = str;
        this.F = aj.a(str2) ? null : "@" + str2;
        if (aj.a(str3)) {
            this.G = null;
        } else {
            this.G = str3;
        }
        e();
        b();
        if (i > 0) {
            this.u = getResources().getDrawable(i);
            this.u.setBounds(0, 0, this.u.getIntrinsicWidth(), this.u.getIntrinsicHeight());
            if (this.A != 0) {
                this.u.setColorFilter(new PorterDuffColorFilter(this.A, Mode.SRC_IN));
            }
        }
        if (i2 > 0) {
            this.v = getResources().getDrawable(i2);
            this.v.setBounds(0, 0, this.v.getIntrinsicWidth(), this.v.getIntrinsicHeight());
        }
        invalidate();
        requestLayout();
    }

    private void e() {
        if (!this.L || aj.a(this.G)) {
            this.H = this.G;
        } else if (this.b) {
            this.H = this.G + " " + "\u00b7";
        } else {
            this.H = "\u00b7 " + this.G;
        }
    }

    public void a(boolean z) {
        this.L = z;
        e();
    }

    private void f() {
        this.q = null;
        this.o = null;
        this.s = null;
    }

    public void setShowTimestamp(boolean z) {
        if (z != this.I) {
            this.I = z;
            f();
            requestLayout();
            invalidate();
        }
    }

    public void setTimestampBadgeColor(int i) {
        if (this.v != null) {
            this.v.setColorFilter(i, Mode.SRC_IN);
        }
    }

    public void c() {
        if (this.v != null) {
            this.v.setColorFilter(null);
        }
    }

    public void setTimestampColor(ColorStateList colorStateList) {
        this.k = colorStateList;
        refreshDrawableState();
    }

    public void d() {
        setTimestampColor(this.l);
    }

    public void setUseTimestampColorForUsername(boolean z) {
        this.J = z;
    }

    public void b(boolean z) {
        this.K = z;
    }

    public void a(float f, float f2, float f3) {
        if (f != this.B || f2 != this.C || f3 != this.D) {
            this.B = f;
            this.C = f2;
            this.D = f3;
            f();
            requestLayout();
            invalidate();
        }
    }

    public void setOnAuthorClick(OnClickListener onClickListener) {
        this.f = onClickListener;
        if (this.f == null) {
            b(this.w);
            return;
        }
        if (this.w == null) {
            this.w = new aj(this, 2, 1, new am(this), a);
            this.w.a(this.d);
        }
        a(this.w);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        if (this.j != null) {
            this.x = this.j.getColorForState(drawableState, 0);
        }
        if (this.k != null) {
            this.z = this.k.getColorForState(drawableState, 0);
        }
        if (this.m != null) {
            this.y = this.m.getColorForState(drawableState, 0);
        }
        if (this.u != null && this.u.isStateful()) {
            this.u.setState(drawableState);
        }
        if (this.v != null && this.v.isStateful()) {
            this.v.setState(drawableState);
        }
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int width;
        int a;
        int b;
        int i6;
        int size = MeasureSpec.getSize(i);
        if (this.H == null || !this.I) {
            i3 = 0;
            i4 = 0;
            i5 = size;
        } else {
            this.e.setTextSize(this.D);
            this.e.setTypeface(this.n.a);
            if (this.s == null) {
                this.s = new StaticLayout(this.H, this.e, r.a(this.H, this.e), Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            width = size - (this.s.getWidth() + this.i);
            this.e.getTextBounds(this.H, 0, this.H.length(), this.c);
            this.t = -i.a(this.s, this.c);
            a = i.a(this.c);
            b = i.b(this.s, this.c);
            if (this.u != null) {
                width -= this.u.getIntrinsicWidth() + this.i;
            }
            if (this.v != null) {
                i3 = b;
                i4 = a;
                i5 = width - (this.v.getIntrinsicWidth() + this.i);
            } else {
                i3 = b;
                i4 = a;
                i5 = width;
            }
        }
        if (this.E != null) {
            this.e.setTextSize(this.B);
            this.e.setTypeface(this.n.c);
            if (this.q == null) {
                int a2 = r.a(this.E, this.e);
                this.q = new StaticLayout(this.E, 0, this.E.length(), this.e, a2, Alignment.ALIGN_NORMAL, this.g, (float) this.h, false, TruncateAt.END, Math.min(a2, i5));
            }
            this.e.getTextBounds(this.E, 0, this.E.length(), this.c);
            i5 -= this.q.getEllipsizedWidth() + this.i;
            b = i.a(this.c);
            width = i.b(this.q, this.c);
            this.r = -i.a(this.q, this.c);
            i6 = b;
            int i7 = width;
            width = i5;
            i5 = i7;
        } else {
            this.r = 0;
            i6 = 0;
            width = i5;
            i5 = 0;
        }
        if (this.K) {
            width = size;
        }
        String str = this.F;
        if (str == null || width <= 0) {
            this.p = 0;
            b = 0;
            width = 0;
        } else {
            this.e.setTextSize(this.C);
            this.e.setTypeface(this.n.a);
            if (this.o == null) {
                a2 = r.a(str, this.e);
                this.o = new StaticLayout(str, 0, str.length(), this.e, a2, Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false, TruncateAt.END, Math.min(a2, width));
            }
            this.e.getTextBounds(str, 0, str.length(), this.c);
            b = i.b(this.o, this.c);
            a = i.a(this.o, this.c);
            width = i.a(this.c);
            if (!this.K) {
                int i8 = i6 - width;
                this.p = -a;
                if (this.q != null) {
                    if (i8 > 0) {
                        this.p += i8;
                    } else {
                        this.r -= i8;
                    }
                }
            } else if (this.q != null) {
                this.p = this.r + this.q.getHeight();
            } else {
                this.p = -a;
            }
        }
        if (this.s != null) {
            if (this.q != null && this.o != null && !this.K) {
                width = Math.max(i6, width) - i4;
            } else if (this.q == null && this.o == null) {
                width = 0;
            } else {
                if (this.q != null) {
                    width = i6;
                }
                width -= i4;
            }
            if (width > 0) {
                this.t = width + this.t;
            } else {
                this.r -= width;
                this.p -= width;
            }
        }
        width = (this.q == null || i6 == 0) ? 0 : (this.r + this.q.getHeight()) - i5;
        setMeasuredDimension(size, Math.max(Math.max(Math.max(Math.max(width, this.o == null ? 0 : (this.p + this.o.getHeight()) - b), this.s == null ? 0 : (this.t + this.s.getHeight()) - i3), 0), getSuggestedMinimumHeight()));
    }

    protected void onDraw(Canvas canvas) {
        int ellipsizedWidth;
        int ellipsizedWidth2;
        int i;
        int i2 = -1;
        int width = getWidth();
        int i3 = 0;
        if (this.b) {
            if (this.o != null) {
                ellipsizedWidth = width - this.o.getEllipsizedWidth();
                if (!this.K) {
                    width = ellipsizedWidth - this.i;
                }
            } else {
                ellipsizedWidth = -1;
            }
            if (this.q != null) {
                ellipsizedWidth2 = width - this.q.getEllipsizedWidth();
                width = ellipsizedWidth2 - this.i;
            } else {
                ellipsizedWidth2 = -1;
            }
            if (this.s == null) {
                i = -1;
                i3 = -1;
            } else if (this.L) {
                i3 = width - this.s.getWidth();
                if (this.u != null) {
                    i = -(this.u.getBounds().width() + this.i);
                    if (this.v != null) {
                        i2 = -(this.v.getBounds().width() + this.i);
                    }
                } else {
                    i = -1;
                    i2 = this.v != null ? (i3 - this.v.getBounds().width()) - this.i : -1;
                }
            } else if (this.u != null) {
                i = this.i + this.s.getWidth();
                if (this.v != null) {
                    i2 = this.i + this.v.getBounds().width();
                }
            } else {
                i = -1;
                i2 = this.v != null ? this.s.getWidth() + this.i : -1;
            }
        } else {
            if (this.q == null || this.K) {
                ellipsizedWidth = 0;
            } else {
                ellipsizedWidth = (this.q.getEllipsizedWidth() + this.i) + 0;
            }
            if (this.o != null) {
                ellipsizedWidth2 = (this.o.getEllipsizedWidth() + this.i) + ellipsizedWidth;
            } else {
                ellipsizedWidth2 = ellipsizedWidth;
            }
            if (this.s == null) {
                i = -1;
                ellipsizedWidth2 = 0;
                i3 = -1;
            } else if (this.L) {
                i = this.i + this.s.getEllipsizedWidth();
                if (this.u != null) {
                    width = this.u.getBounds().width() + this.i;
                } else {
                    width = i;
                    i = -1;
                }
                if (this.v != null) {
                    i2 = width;
                    r10 = ellipsizedWidth2;
                    ellipsizedWidth2 = 0;
                    i3 = r10;
                } else {
                    r10 = ellipsizedWidth2;
                    ellipsizedWidth2 = 0;
                    i3 = r10;
                }
            } else {
                ellipsizedWidth2 = width - this.s.getWidth();
                if (this.u != null) {
                    width = -(this.i + this.u.getBounds().width());
                } else {
                    width = -1;
                }
                if (this.v != null) {
                    i2 = -(this.i + this.v.getBounds().width());
                    i = width;
                    r10 = ellipsizedWidth2;
                    ellipsizedWidth2 = 0;
                    i3 = r10;
                } else {
                    i = width;
                    r10 = ellipsizedWidth2;
                    ellipsizedWidth2 = 0;
                    i3 = r10;
                }
            }
        }
        if (this.q != null) {
            canvas.save();
            canvas.translate((float) ellipsizedWidth2, (float) this.r);
            this.e.setTextSize(this.B);
            this.e.setTypeface(this.n.c);
            this.e.setColor(this.x);
            this.q.draw(canvas);
            canvas.restore();
            this.d.set(ellipsizedWidth2, this.r, this.q.getEllipsizedWidth() + ellipsizedWidth2, this.r + this.q.getHeight());
        }
        this.e.setTypeface(this.n.a);
        if (this.o != null) {
            canvas.save();
            canvas.translate((float) ellipsizedWidth, (float) this.p);
            this.e.setTextSize(this.C);
            if (this.J) {
                this.e.setColor(this.z);
            } else {
                this.e.setColor(this.y);
            }
            this.o.draw(canvas);
            canvas.restore();
            this.d.union(ellipsizedWidth, this.p, this.o.getEllipsizedWidth() + ellipsizedWidth, this.p + this.o.getHeight());
        }
        if (this.s != null) {
            canvas.save();
            canvas.translate((float) i3, (float) this.t);
            this.e.setTextSize(this.D);
            this.e.setColor(this.z);
            this.s.draw(canvas);
            if (this.u != null) {
                canvas.translate((float) i, (float) ((this.s.getHeight() - this.u.getIntrinsicHeight()) / 2));
                this.u.draw(canvas);
            }
            if (this.v != null) {
                if (this.u != null) {
                    canvas.translate((float) i2, (float) ((this.u.getBounds().height() - this.v.getBounds().height()) / 2));
                } else {
                    canvas.translate((float) i2, (float) ((this.s.getHeight() - this.v.getBounds().height()) / 2));
                }
                this.v.draw(canvas);
            }
            canvas.restore();
        }
    }
}
