package com.twitter.ui.widget.slidingtab;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.HorizontalScrollView;
import android.widget.TextView;
import com.twitter.ui.widget.TypefacesTextView;
import defpackage.cse;
import java.util.ArrayList;

/* compiled from: Twttr */
public class SlidingTabLayout extends HorizontalScrollView {
    private ArrayList<d> a;
    private final int b;
    private int c;
    private int d;
    private ViewPager e;
    private final f f;

    public SlidingTabLayout(Context context) {
        this(context, null);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cse.SlidingTabLayout, i, 0);
        try {
            this.b = obtainStyledAttributes.getDimensionPixelSize(cse.SlidingTabLayout_titleOffset, 25);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(cse.SlidingTabLayout_bottomBorderThickness, 0);
            int color = obtainStyledAttributes.getColor(cse.SlidingTabLayout_bottomBorderColor, 0);
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(cse.SlidingTabLayout_selectedIndicatorThickness, 0);
            int color2 = obtainStyledAttributes.getColor(cse.SlidingTabLayout_selectedIndicatorColor, 0);
            int color3 = obtainStyledAttributes.getColor(cse.SlidingTabLayout_tabDividerColor, 0);
            this.f = new f(context);
            this.f.b(dimensionPixelSize);
            this.f.d(dimensionPixelSize2);
            this.f.a(color2);
            this.f.b(color3);
            this.f.c(color);
            addView(this.f, -1, -2);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void setCustomTabColorizer(e eVar) {
        this.f.a(eVar);
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.f.a(iArr);
    }

    public void setDividerColors(int... iArr) {
        this.f.b(iArr);
    }

    public void a(int i, int i2) {
        this.c = i;
        this.d = i2;
    }

    public void setViewPager(ViewPager viewPager) {
        this.f.removeAllViews();
        this.e = viewPager;
        if (viewPager != null) {
            viewPager.addOnPageChangeListener(new c());
            a();
            this.f.a(viewPager.getCurrentItem());
        }
    }

    protected TextView a(Context context) {
        TypefacesTextView typefacesTextView = new TypefacesTextView(context);
        typefacesTextView.setGravity(17);
        typefacesTextView.setTextSize(2, 12.0f);
        typefacesTextView.setTypeface(Typeface.DEFAULT_BOLD);
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(16843534, typedValue, true);
        typefacesTextView.setBackgroundResource(typedValue.resourceId);
        typefacesTextView.setAllCaps(true);
        int i = (int) (16.0f * getResources().getDisplayMetrics().density);
        typefacesTextView.setPadding(i, i, i, i);
        return typefacesTextView;
    }

    private void a() {
        PagerAdapter adapter = this.e.getAdapter();
        OnClickListener bVar = new b();
        for (int i = 0; i < adapter.getCount(); i++) {
            View inflate;
            TextView textView;
            if (this.c != 0) {
                inflate = LayoutInflater.from(getContext()).inflate(this.c, this.f, false);
                textView = (TextView) inflate.findViewById(this.d);
            } else {
                textView = null;
                inflate = null;
            }
            if (inflate == null) {
                inflate = a(getContext());
            }
            if (textView == null && TextView.class.isInstance(inflate)) {
                textView = (TextView) inflate;
            }
            if (textView != null) {
                textView.setText(adapter.getPageTitle(i));
            }
            inflate.setOnClickListener(bVar);
            this.f.addView(inflate);
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.e != null) {
            b(this.e.getCurrentItem(), 0);
        }
    }

    public void b(int i, int i2) {
        int childCount = this.f.getChildCount();
        if (childCount != 0 && i >= 0 && i < childCount) {
            View childAt = this.f.getChildAt(i);
            if (childAt != null) {
                childCount = childAt.getLeft() + i2;
                if (i > 0 || i2 > 0) {
                    childCount -= this.b;
                }
                scrollTo(childCount, 0);
            }
        }
    }

    public void a(d dVar) {
        if (this.a == null) {
            this.a = new ArrayList();
        }
        this.a.add(dVar);
    }
}
