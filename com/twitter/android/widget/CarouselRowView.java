package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.IdRes;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.android.mx;
import com.twitter.android.timeline.aw;
import com.twitter.internal.android.widget.GroupedRowView;
import defpackage.bcx;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class CarouselRowView extends GroupedRowView {
    private String a;
    private boolean b;
    private float c;
    private int d;
    private TextView e;
    private ImageView f;
    private ViewPager g;
    private View h;

    public CarouselRowView(Context context) {
        super(context, null);
        a(context, null, 0);
    }

    public CarouselRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public CarouselRowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.CarouselRowView, i, 0);
        inflate(context, obtainStyledAttributes.getResourceId(2, 2130968854), this);
        this.a = obtainStyledAttributes.getString(0);
        this.b = obtainStyledAttributes.getBoolean(3, false);
        this.c = obtainStyledAttributes.getDimension(1, context.getResources().getDimension(2131689543));
        obtainStyledAttributes.recycle();
        this.d = context.getResources().getDimensionPixelSize(2131690612);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.e = (TextView) findViewById(k.title);
        this.f = (ImageView) findViewById(bcx.dismiss);
        this.g = (ViewPager) findViewById(2131952457);
        this.h = findViewById(2131952526);
        if (this.e != null) {
            b();
            this.e.setTextSize(0, this.c);
        }
        if (this.f != null) {
            this.f.setVisibility(this.b ? 0 : 8);
        }
        if (this.g != null) {
            this.g.setPageMargin(this.d);
        }
    }

    public ViewPager getViewPager() {
        return this.g;
    }

    public void setCarouselBackground(Drawable drawable) {
        if (this.h != null) {
            this.h.setBackgroundDrawable(drawable);
        }
    }

    public void setTitleText(String str) {
        this.a = str;
        b();
    }

    private void b() {
        if (this.e == null) {
            return;
        }
        if (this.a != null) {
            this.e.setText(this.a);
            this.e.setVisibility(0);
            return;
        }
        this.e.setVisibility(8);
    }

    public void setShowDismiss(boolean z) {
        this.b = z;
        if (this.f != null) {
            this.f.setVisibility(z ? 0 : 8);
        }
    }

    public void setDismissClickListener(OnClickListener onClickListener) {
        if (this.f != null) {
            this.f.setOnClickListener(onClickListener);
        }
    }

    public void a(@IdRes int i, aw awVar) {
        if (this.f != null) {
            this.f.setTag(i, awVar);
        }
    }

    public <T> void setCarouselAdapter(j<T> jVar) {
        if (this.g != null) {
            this.g.setAdapter(jVar);
        }
    }

    public <T> j<T> getCarouselAdapter() {
        return (j) (this.g != null ? this.g.getAdapter() : null);
    }

    public int getCurrentItemIndex() {
        return this.g != null ? this.g.getCurrentItem() : -1;
    }

    public void setCurrentItemIndex(int i) {
        if (this.g != null) {
            this.g.setCurrentItem(i);
        }
    }

    public void a(int i, boolean z) {
        if (this.g != null) {
            this.g.setCurrentItem(i, z);
        }
    }

    @Deprecated
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        if (this.g != null) {
            this.g.setOnPageChangeListener(onPageChangeListener);
        }
    }

    public void a(OnPageChangeListener onPageChangeListener) {
        if (this.g != null) {
            this.g.addOnPageChangeListener(onPageChangeListener);
        }
    }
}
