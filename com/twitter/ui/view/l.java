package com.twitter.ui.view;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: Twttr */
class l extends PagerAdapter {
    final /* synthetic */ RtlViewPager a;
    private final PagerAdapter b;

    protected l(RtlViewPager rtlViewPager, PagerAdapter pagerAdapter) {
        this.a = rtlViewPager;
        this.b = pagerAdapter;
    }

    public PagerAdapter a() {
        return this.b;
    }

    public int getCount() {
        return this.b.getCount();
    }

    public boolean isViewFromObject(View view, Object obj) {
        return this.b.isViewFromObject(view, obj);
    }

    public CharSequence getPageTitle(int i) {
        return this.b.getPageTitle(i);
    }

    public float getPageWidth(int i) {
        return this.b.getPageWidth(i);
    }

    public int getItemPosition(Object obj) {
        return this.b.getItemPosition(obj);
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        return this.b.instantiateItem(viewGroup, i);
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        this.b.destroyItem(viewGroup, i, obj);
    }

    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        this.b.setPrimaryItem(viewGroup, i, obj);
    }

    public void notifyDataSetChanged() {
        this.a.c = true;
        super.notifyDataSetChanged();
        this.a.c = false;
    }

    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.b.registerDataSetObserver(dataSetObserver);
    }

    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.b.unregisterDataSetObserver(dataSetObserver);
    }

    public Parcelable saveState() {
        return this.b.saveState();
    }

    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        this.b.restoreState(parcelable, classLoader);
    }

    public void startUpdate(ViewGroup viewGroup) {
        this.b.startUpdate(viewGroup);
    }

    public void finishUpdate(ViewGroup viewGroup) {
        this.b.finishUpdate(viewGroup);
    }
}
