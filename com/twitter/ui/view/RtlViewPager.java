package com.twitter.ui.view;

import android.content.Context;
import android.database.DataSetObserver;
import android.support.annotation.VisibleForTesting;
import android.support.v4.text.TextUtilsCompat;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import java.util.Map;

/* compiled from: Twttr */
public class RtlViewPager extends ResizeOnRotateViewPager {
    private final Map<OnPageChangeListener, o> a;
    private DataSetObserver b;
    private boolean c;

    public RtlViewPager(Context context) {
        super(context);
        this.a = new ArrayMap(1);
    }

    public RtlViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new ArrayMap(1);
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(super.getAdapter());
    }

    protected void onDetachedFromWindow() {
        a();
        super.onDetachedFromWindow();
    }

    private void a(PagerAdapter pagerAdapter) {
        if ((pagerAdapter instanceof n) && this.b == null) {
            this.b = new m((n) pagerAdapter, null);
            pagerAdapter.registerDataSetObserver(this.b);
            ((n) pagerAdapter).b();
        }
    }

    private void a() {
        PagerAdapter adapter = super.getAdapter();
        if ((adapter instanceof n) && this.b != null) {
            adapter.unregisterDataSetObserver(this.b);
            this.b = null;
        }
    }

    public void setCurrentItem(int i, boolean z) {
        super.setCurrentItem(a(i), z);
    }

    public void setCurrentItem(int i) {
        super.setCurrentItem(a(i));
    }

    public int getCurrentItem() {
        return a(super.getCurrentItem());
    }

    private int a(int i) {
        if (i < 0 || !c()) {
            return i;
        }
        PagerAdapter adapter = getAdapter();
        return adapter == null ? 0 : a(i, adapter.getCount());
    }

    public PagerAdapter getAdapter() {
        PagerAdapter adapter = super.getAdapter();
        return adapter instanceof n ? ((n) adapter).a() : adapter;
    }

    public void fakeDragBy(float f) {
        if (!c()) {
            f = -f;
        }
        super.fakeDragBy(f);
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        a();
        int i = (pagerAdapter == null || !c()) ? 0 : 1;
        if (i != 0) {
            PagerAdapter nVar = new n(this, pagerAdapter);
            a(nVar);
            pagerAdapter = nVar;
        }
        super.setAdapter(pagerAdapter);
        if (i != 0) {
            setCurrentItemWithoutNotification(0);
        }
    }

    private void setCurrentItemWithoutNotification(int i) {
        this.c = true;
        setCurrentItem(i, false);
        this.c = false;
    }

    protected boolean c() {
        return TextUtilsCompat.getLayoutDirectionFromLocale(getContext().getResources().getConfiguration().locale) == 1;
    }

    public void addOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        if (c()) {
            o oVar = new o(onPageChangeListener, null);
            this.a.put(onPageChangeListener, oVar);
            onPageChangeListener = oVar;
        }
        super.addOnPageChangeListener(onPageChangeListener);
    }

    public void removeOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        OnPageChangeListener onPageChangeListener2;
        if (c()) {
            onPageChangeListener2 = (OnPageChangeListener) this.a.remove(onPageChangeListener);
        } else {
            onPageChangeListener2 = onPageChangeListener;
        }
        super.removeOnPageChangeListener(onPageChangeListener2);
    }

    private int getCount() {
        PagerAdapter adapter = getAdapter();
        if (adapter == null) {
            return 0;
        }
        return adapter.getCount();
    }

    @VisibleForTesting
    static int a(int i, int i2) {
        return Math.max(0, (i2 - i) - 1);
    }
}
