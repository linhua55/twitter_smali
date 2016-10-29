package com.twitter.library.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.twitter.model.core.EscherbirdAnnotation.DomainType;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.bp;
import com.twitter.ui.widget.ax;
import com.twitter.util.aj;
import com.twitter.util.ak;
import com.twitter.util.ui.r;
import defpackage.bct;
import defpackage.bcu;
import defpackage.bdc;
import defpackage.bdd;
import defpackage.bud;

/* compiled from: Twttr */
public class TweetPivotView extends View {
    private final boolean a;
    private final TextPaint b;
    private int c;
    private float d;
    private int e;
    private Drawable f;
    private int g;
    private StaticLayout h;
    private String i;
    private ColorStateList j;

    public TweetPivotView(Context context) {
        this(context, null);
    }

    public TweetPivotView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.tweetPivotViewStyle);
    }

    public TweetPivotView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = ak.f();
        this.b = new TextPaint(1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.TweetPivotView, i, 0);
        a(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public TweetPivotView(Context context, int i) {
        super(context, null);
        this.a = ak.f();
        this.b = new TextPaint(1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, bdd.TweetPivotView);
        a(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public void setContentSize(float f) {
        this.b.setTextSize(f);
        c();
        requestLayout();
        invalidate();
    }

    private void a(Context context, TypedArray typedArray) {
        this.e = typedArray.getDimensionPixelOffset(bdd.TweetPivotView_tweetPivotHeightMargin, 0);
        this.d = typedArray.getFloat(bdd.TweetPivotView_android_lineSpacingMultiplier, 1.0f);
        this.c = typedArray.getDimensionPixelSize(bdd.TweetPivotView_android_lineSpacingExtra, 0);
        this.f = typedArray.getDrawable(bdd.TweetPivotView_android_divider);
        if (this.f != null) {
            this.g = this.f.getIntrinsicHeight();
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(bdd.TweetPivotView_android_textSize, 0);
        if (dimensionPixelSize != 0) {
            this.b.setTextSize((float) dimensionPixelSize);
        }
        ColorStateList colorStateList = typedArray.getColorStateList(bdd.TweetPivotView_tweetPivotTextColor);
        int color = getResources().getColor(bcu.twitter_blue);
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(color);
        }
        this.j = colorStateList;
        b();
        this.b.setTypeface(ax.a(context).a);
    }

    private void b() {
        int colorForState = this.j.getColorForState(getDrawableState(), 0);
        if (colorForState != this.b.getColor()) {
            this.b.setColor(colorForState);
            invalidate();
        }
    }

    public boolean a() {
        return aj.b(this.i);
    }

    public void a(Tweet tweet, aa aaVar) {
        c();
        this.i = null;
        if (tweet == null || tweet.af == null) {
            setVisibility(8);
            return;
        }
        this.i = a(tweet.af);
        if (aaVar != null) {
            setOnClickListener(new z(this, aaVar, tweet));
        }
        setVisibility(0);
        invalidate();
        requestLayout();
    }

    private String a(bp bpVar) {
        if (bpVar.c.c == DomainType.c) {
            return bud.a(getContext(), bpVar);
        }
        return getResources().getString(bdc.see_more, new Object[]{bpVar.c()});
    }

    protected void onMeasure(int i, int i2) {
        if (a()) {
            int size = MeasureSpec.getSize(i);
            if (size > 0 && this.h == null) {
                this.h = new StaticLayout(this.i, 0, this.i.length(), this.b, r.a(this.i, this.b), Alignment.ALIGN_NORMAL, this.d, (float) this.c, false, TruncateAt.END, size);
            }
            if (this.h != null) {
                setMeasuredDimension(i, ((this.e + this.h.getHeight()) + this.e) + this.g);
                return;
            }
            return;
        }
        super.onMeasure(i, i2);
    }

    protected void onDraw(Canvas canvas) {
        if (this.h != null && this.h.getLineCount() > 0) {
            a(canvas);
            canvas.save();
            canvas.translate((float) (this.a ? getWidth() - this.h.getWidth() : 0), (float) (((getHeight() - this.h.getHeight()) + this.g) / 2));
            this.h.draw(canvas);
            canvas.restore();
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.j.isStateful()) {
            b();
        }
    }

    private void a(Canvas canvas) {
        if (this.f != null) {
            this.f.setBounds(0, 0, getWidth(), this.g);
            this.f.draw(canvas);
        }
    }

    private void c() {
        this.h = null;
    }
}
