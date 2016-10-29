package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import bcx;
import ceq;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.core.Tweet;
import com.twitter.ui.widget.BadgeView;
import com.twitter.ui.widget.TextLayoutView;
import com.twitter.ui.widget.ax;
import com.twitter.util.a;
import com.twitter.util.ak;
import defpackage.bdd;

/* compiled from: Twttr */
public class UserForwardView extends ViewGroup {
    private final Drawable a;
    private FriendshipCache b;
    private float c;
    private float d;
    private BadgeView e;
    private TextLayoutView f;
    private ActionButton g;
    private int h;
    private int i;

    public UserForwardView(Context context) {
        this(context, null);
    }

    public UserForwardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserForwardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = 0;
        this.i = 0;
        setWillNotDraw(false);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.UserForwardView, i, 0);
        this.a = obtainStyledAttributes.getDrawable(bdd.UserForwardView_android_divider);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f = (TextLayoutView) findViewById(bcx.name_item);
        this.f.a(ax.a(getContext()).c).a(a.a(ak.f())).b(ak.f()).a(true);
        this.e = (BadgeView) findViewById(bcx.promoted);
        this.g = (ActionButton) findViewById(bcx.action_button);
        this.g.setVisibility(0);
    }

    public void setFriendshipCache(FriendshipCache friendshipCache) {
        this.b = friendshipCache;
    }

    public void setFollowButtonClickListener(OnClickListener onClickListener) {
        this.g.setOnClickListener(onClickListener);
    }

    public void setFollowButtonChecked(boolean z) {
        this.g.setChecked(z);
    }

    public void a(float f, float f2) {
        if (this.c != f || this.d != f2) {
            this.c = f;
            this.d = f2;
            this.f.a(f);
            this.e.setContentSize(f2);
            requestLayout();
            invalidate();
        }
    }

    public void a(int i, String str) {
        this.e.a(i, str);
    }

    public void a(Tweet tweet) {
        if (this.b == null || !ceq.c(tweet)) {
            setVisibility(8);
            this.f.setText(null);
            return;
        }
        setVisibility(0);
        if (tweet.am()) {
            this.e.setVisibility(0);
        } else {
            this.e.setVisibility(8);
        }
        this.f.setText(tweet.d());
        this.g.setChecked(this.b.k(tweet.s));
    }

    protected void onMeasure(int i, int i2) {
        int b;
        int max;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        measureChildWithMargins(this.g, i, paddingLeft, i2, paddingTop);
        paddingLeft += a(this.g);
        int b2 = paddingTop + b(this.g);
        measureChildWithMargins(this.f, i, paddingLeft, i2, paddingTop);
        int b3 = paddingTop + b(this.f);
        int a = a(this.f);
        if (this.e.getVisibility() != 8) {
            measureChildWithMargins(this.e, i, paddingLeft, i2, paddingTop);
            b = b3 + b(this.e);
            max = Math.max(a, a(this.e));
        } else {
            max = a;
            b = b3;
        }
        int i3 = (b2 - b) / 2;
        b = Math.max(b2, b);
        if (i3 >= 0) {
            this.i = 0;
            this.h = i3;
        } else {
            this.i = -i3;
            this.h = 0;
        }
        setMeasuredDimension(resolveSize(max + paddingLeft, i), resolveSize(b, i2));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean f = ak.f();
        int width = getWidth();
        if (f) {
            a(this.g, getPaddingLeft(), getPaddingTop() + this.i);
            a(this.f, (width - getPaddingRight()) - a(this.f), getPaddingTop() + this.h);
            if (this.e.getVisibility() != 8) {
                a(this.e, (width - getPaddingRight()) - a(this.e), (getPaddingTop() + this.h) + b(this.f));
                return;
            }
            return;
        }
        a(this.g, (width - getPaddingRight()) - a(this.g), getPaddingTop() + this.i);
        a(this.f, getPaddingLeft(), getPaddingTop() + this.h);
        if (this.e.getVisibility() != 8) {
            a(this.e, getPaddingLeft(), (getPaddingTop() + this.h) + b(this.f));
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.a != null) {
            this.a.setBounds(0, 0, getWidth(), this.a.getIntrinsicHeight());
            this.a.draw(canvas);
        }
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MarginLayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(-2, -2);
    }

    private void a(View view, int i, int i2) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        int i3 = marginLayoutParams.leftMargin + i;
        int i4 = marginLayoutParams.topMargin + i2;
        view.layout(i3, i4, view.getMeasuredWidth() + i3, view.getMeasuredHeight() + i4);
    }

    private int a(View view) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.rightMargin + (view.getMeasuredWidth() + marginLayoutParams.leftMargin);
    }

    private int b(View view) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.bottomMargin + (view.getMeasuredHeight() + marginLayoutParams.topMargin);
    }
}
