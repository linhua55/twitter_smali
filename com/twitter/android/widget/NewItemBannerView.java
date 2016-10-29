package com.twitter.android.widget;

import android.content.Context;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.util.aj;
import com.twitter.util.al;

/* compiled from: Twttr */
public class NewItemBannerView extends LinearLayout {
    private long a;
    private View b;
    private TextView c;
    private ImageView d;
    private Animation e;
    private Animation f;
    private long g;
    private boolean h;
    private boolean i;
    private boolean j;
    private cw k;

    public NewItemBannerView(Context context) {
        this(context, null);
    }

    public NewItemBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = true;
        this.i = false;
        this.j = true;
    }

    public NewItemBannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = true;
        this.i = false;
        this.j = true;
    }

    private void a(Context context) {
        int i;
        int i2;
        if (this.h) {
            i = 2131034179;
            i2 = 2131034180;
        } else {
            i = 2131034178;
            i2 = 2131034177;
        }
        this.e = AnimationUtils.loadAnimation(context, i);
        this.e.setAnimationListener(new cv(this, true));
        this.e.setInterpolator(new OvershootInterpolator(3.0f));
        this.e.setDuration(350);
        this.f = AnimationUtils.loadAnimation(context, i2);
        this.f.setAnimationListener(new cv(this, false));
        this.f.setDuration(250);
        this.i = true;
    }

    public void a(int i, int i2, int i3, int i4) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) getLayoutParams();
        if (i != marginLayoutParams.leftMargin || i2 != marginLayoutParams.topMargin || i3 != marginLayoutParams.rightMargin || i4 != marginLayoutParams.bottomMargin) {
            marginLayoutParams.setMargins(i, i2, i3, i4);
            requestLayout();
        }
    }

    public void setText(@StringRes int i) {
        setText(getResources().getString(i));
    }

    public void setText(String str) {
        if (!aj.a(str, this.c.getText())) {
            this.c.setText(str);
            requestLayout();
        }
    }

    public String getText() {
        return this.c.getText().toString();
    }

    public void setShouldThrottleShowing(boolean z) {
        this.j = z;
    }

    public void a() {
        setAnchorTo(false);
    }

    private void setAnchorTo(boolean z) {
        this.h = z;
        this.d.setImageResource(this.h ? 2130839012 : 2130839011);
        ((LayoutParams) getLayoutParams()).gravity = this.h ? 48 : 80;
        requestLayout();
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.b.setOnClickListener(onClickListener);
    }

    public boolean b() {
        return a(false);
    }

    public boolean c() {
        return a(true);
    }

    private boolean a(boolean z) {
        if (!this.i) {
            a(getContext());
            this.i = true;
        }
        if ((getVisibility() == 0) == z) {
            return false;
        }
        if (z) {
            long b = al.b();
            if (this.j && this.g + this.a > b) {
                return false;
            }
            this.g = b;
            this.b.setVisibility(0);
            requestLayout();
        }
        clearAnimation();
        startAnimation(z ? this.e : this.f);
        return true;
    }

    public void setMinDelaySinceLastDisplayed(long j) {
        this.a = j;
    }

    public long getMinDelaySinceLastDisplayed() {
        return this.a;
    }

    public void setDisplayListener(cw cwVar) {
        this.k = cwVar;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = findViewById(2131952935);
        this.c = (TextView) this.b.findViewById(2131952937);
        this.d = (ImageView) this.b.findViewById(2131952936);
    }

    private void d() {
        if (this.k != null) {
            this.k.a(this);
        }
    }

    private void e() {
        if (this.k != null) {
            this.k.b(this);
        }
    }
}
