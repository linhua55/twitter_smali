package com.twitter.android.news;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.h;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
class q extends FragmentPagerAdapter {
    private final List<p> a;
    private final Activity b;
    private final Map<Integer, Fragment> c;

    q(FragmentManager fragmentManager, Activity activity, List<p> list) {
        super(fragmentManager);
        this.b = activity;
        this.a = list;
        this.c = new HashMap();
    }

    public Fragment a(int i) {
        return (Fragment) this.c.get(Integer.valueOf(i));
    }

    public Fragment getItem(int i) {
        p pVar = (p) this.a.get(i);
        BaseFragment baseFragment = (BaseFragment) Fragment.instantiate(this.b, pVar.b.getName());
        baseFragment.a(new h(pVar.c).c());
        this.c.put(Integer.valueOf(i), baseFragment);
        return baseFragment;
    }

    public int getCount() {
        return this.a.size();
    }

    public CharSequence getPageTitle(int i) {
        return ((p) this.a.get(i)).a;
    }
}
