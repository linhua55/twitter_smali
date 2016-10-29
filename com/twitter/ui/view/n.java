package com.twitter.ui.view;

import android.support.v4.view.PagerAdapter;
import android.view.ViewGroup;

/* compiled from: Twttr */
class n extends l {
    final /* synthetic */ RtlViewPager b;
    private int c;

    n(RtlViewPager rtlViewPager, PagerAdapter pagerAdapter) {
        this.b = rtlViewPager;
        super(rtlViewPager, pagerAdapter);
        this.c = pagerAdapter.getCount();
    }

    public CharSequence getPageTitle(int i) {
        return super.getPageTitle(a(i));
    }

    public float getPageWidth(int i) {
        return super.getPageWidth(a(i));
    }

    public int getItemPosition(Object obj) {
        int itemPosition = super.getItemPosition(obj);
        return itemPosition < 0 ? itemPosition : a(itemPosition);
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        return super.instantiateItem(viewGroup, a(i));
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        super.destroyItem(viewGroup, a(i), obj);
    }

    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        super.setPrimaryItem(viewGroup, (this.c - i) - 1, obj);
    }

    private int a(int i) {
        return RtlViewPager.a(i, getCount());
    }

    private void b() {
        int count = getCount();
        if (count != this.c) {
            this.b.setCurrentItemWithoutNotification(Math.max(0, this.b.getCurrentItem()));
            this.c = count;
        }
    }
}
