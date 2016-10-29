package com.twitter.android;

import android.net.Uri;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
public abstract class AbsPagesAdapter extends FragmentPagerAdapter implements OnPageChangeListener {
    protected final ViewPager a;
    protected List<at> b;
    protected final FragmentManager c;
    protected final FragmentActivity d;
    protected final km e;
    protected int f;
    private final HorizontalListView g;
    private b h;

    public /* synthetic */ Fragment getItem(int i) {
        return b(i);
    }

    protected AbsPagesAdapter(FragmentActivity fragmentActivity, FragmentManager fragmentManager, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar) {
        super(fragmentActivity.getSupportFragmentManager());
        this.f = -1;
        this.d = fragmentActivity;
        this.c = fragmentManager;
        this.a = viewPager;
        this.a.setOnPageChangeListener(this);
        this.b = list;
        this.g = horizontalListView;
        this.e = kmVar;
    }

    public List<at> aw_() {
        return this.b;
    }

    public at a(int i) {
        return (at) this.b.get(i);
    }

    public void a(b bVar) {
        this.h = bVar;
    }

    public int getCount() {
        return this.b.size();
    }

    public HorizontalListView b() {
        return this.g;
    }

    public long getItemId(int i) {
        return (long) ((at) this.b.get(i)).d;
    }

    public BaseFragment b(int i) {
        at atVar = (at) this.b.get(i);
        BaseFragment baseFragment = (BaseFragment) Fragment.instantiate(this.d, atVar.b.getName());
        baseFragment.a(atVar.a().f().g(false).b(600).c());
        return baseFragment;
    }

    public int getItemPosition(Object obj) {
        for (at atVar : this.b) {
            if (c(atVar) == obj) {
                return this.b.indexOf(atVar);
            }
        }
        return -2;
    }

    public CharSequence getPageTitle(int i) {
        return ((at) this.b.get(i)).c;
    }

    public Uri c() {
        return d(this.a.getCurrentItem());
    }

    private Uri d(int i) {
        at a = a(i);
        return a != null ? a.a : null;
    }

    public int a(Uri uri) {
        for (int i = 0; i < this.b.size(); i++) {
            if (uri.equals(((at) this.b.get(i)).a)) {
                return i;
            }
        }
        return -1;
    }

    public void onPageScrolled(int i, float f, int i2) {
        this.g.a(i, f);
    }

    public void onPageScrollStateChanged(int i) {
        this.g.a(i);
    }

    public void onPageSelected(int i) {
        this.e.a(i);
        b().b(i);
        if (this.h != null) {
            this.h.a(i);
        }
    }

    public void d() {
        this.f = -1;
        notifyDataSetChanged();
    }

    protected void a(at atVar) {
        if (atVar != null) {
            BaseFragment c = c(atVar);
            if (c != null) {
                c.ag();
            }
        }
    }

    protected void b(at atVar) {
        if (atVar != null) {
            Fragment c = c(atVar);
            if (c != null) {
                if (this.d instanceof ScrollingHeaderActivity) {
                    ((ScrollingHeaderActivity) this.d).a(c);
                }
                c.af();
            }
        }
    }

    protected at c(int i) {
        return (i == -1 || i >= this.b.size()) ? null : (at) this.b.get(i);
    }

    protected void a(BaseFragment baseFragment, int i) {
        ((at) this.b.get(i)).a(baseFragment);
        if (i == this.a.getCurrentItem()) {
            baseFragment.af();
        }
    }

    protected BaseFragment c(at atVar) {
        return atVar.a(this.c);
    }
}
