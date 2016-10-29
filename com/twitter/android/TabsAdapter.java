package com.twitter.android;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.ViewGroup;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.internal.android.widget.ViewPagerScrollBar;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public class TabsAdapter extends FragmentPagerAdapter implements OnPageChangeListener {
    protected final TwitterFragmentActivity a;
    protected final TabHost b;
    protected final ViewPager c;
    protected final ArrayList<ra> d;
    protected int e;
    private final ViewPagerScrollBar f;
    private final qz g;

    public ra a(int i) {
        return (ra) this.d.get(i);
    }

    public TabsAdapter(TwitterFragmentActivity twitterFragmentActivity, TabHost tabHost, ViewPager viewPager, ViewPagerScrollBar viewPagerScrollBar) {
        super(twitterFragmentActivity.getSupportFragmentManager());
        this.d = new ArrayList();
        this.e = -1;
        this.a = twitterFragmentActivity;
        this.b = tabHost;
        this.c = viewPager;
        this.c.setAdapter(this);
        this.c.setOnPageChangeListener(this);
        this.f = viewPagerScrollBar;
        this.g = new qz(this.a);
    }

    public void a(TabSpec tabSpec, Class<?> cls, Bundle bundle) {
        ra raVar = new ra(cls, bundle, tabSpec.getTag());
        tabSpec.setContent(this.g);
        this.d.add(raVar);
        this.b.addTab(tabSpec);
        notifyDataSetChanged();
    }

    public int getCount() {
        return this.d.size();
    }

    public int getItemPosition(Object obj) {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            if (((ra) it.next()).a(this.a.getSupportFragmentManager()) == obj) {
                return -1;
            }
        }
        return -2;
    }

    public Parcelable saveState() {
        return new TabSavedState(this.d);
    }

    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        String[] strArr = ((TabSavedState) parcelable).a;
        for (int i = 0; i < strArr.length; i++) {
            Fragment findFragmentByTag = this.a.getSupportFragmentManager().findFragmentByTag(strArr[i]);
            if (findFragmentByTag != null) {
                ((ra) this.d.get(i)).a(findFragmentByTag);
            }
        }
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment = (Fragment) super.instantiateItem(viewGroup, i);
        ((ra) this.d.get(i)).a(fragment);
        return fragment;
    }

    public Fragment getItem(int i) {
        return Fragment.instantiate(this.a, ((ra) this.d.get(i)).a.getName(), ((ra) this.d.get(i)).b);
    }

    public void onPageScrolled(int i, float f, int i2) {
        if (this.c.getCurrentItem() < i) {
            this.f.a(i, -i2);
        } else {
            this.f.a(i, i2);
        }
    }

    public void onPageSelected(int i) {
        TabWidget tabWidget = this.b.getTabWidget();
        int descendantFocusability = tabWidget.getDescendantFocusability();
        tabWidget.setDescendantFocusability(393216);
        if (i != this.b.getCurrentTab()) {
            this.b.setCurrentTab(i);
        }
        tabWidget.setDescendantFocusability(descendantFocusability);
        this.e = i;
    }

    public void onPageScrollStateChanged(int i) {
    }
}
