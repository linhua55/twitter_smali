package com.twitter.android;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.i;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import com.twitter.library.client.l;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import java.util.List;

/* compiled from: Twttr */
public abstract class AbsTabbedPageFragmentActivity extends TwitterFragmentActivity implements OnItemClickListener, ky {
    protected ViewPager a;
    km b;
    private int c;
    private DockLayout d;
    private HorizontalListView e;
    private ej f;

    protected abstract l o_();

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.a = (ViewPager) findViewById(2131952457);
        this.d = (DockLayout) findViewById(2131952323);
        this.e = (HorizontalListView) findViewById(2131952459);
        n_();
        this.d.a(new kz(this, X(), this.c));
    }

    protected void a(List<at> list) {
        this.b = new km(list);
        this.e.setAdapter(this.b);
        this.e.setOnItemClickListener(this);
        this.b.notifyDataSetChanged();
        this.f = a(list, this.e, this.d);
        this.a.setAdapter(this.f);
    }

    ej a(List<at> list, HorizontalListView horizontalListView, DockLayout dockLayout) {
        return new ej(this, list, this.a, horizontalListView, this.b, dockLayout);
    }

    void n_() {
        this.c = b() ? getResources().getDimensionPixelSize(2131690233) : 0;
    }

    boolean b() {
        return this.d.c();
    }

    String c() {
        CharSequence string = o_().getString("tag", null);
        return aj.b(string) ? string : this.f.a(0).a.toString();
    }

    protected void onPause() {
        super.onPause();
        if (this.f != null) {
            a(o_(), this.f.c());
        }
    }

    void a(l lVar, Uri uri) {
        lVar.a().a("tag", uri != null ? uri.toString() : null).apply();
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        a(i, this.a.getCurrentItem());
    }

    void a(int i, int i2) {
        if (i == i2) {
            e();
        } else {
            b(i);
        }
    }

    void a_(Uri uri) {
        int a = this.f.a(uri);
        if (a != -1 && a != this.a.getCurrentItem()) {
            b(a);
        }
    }

    void b(int i) {
        if (i != -1 && i != this.a.getCurrentItem()) {
            this.a.setCurrentItem(i);
            this.b.a(i);
        }
    }

    void e() {
        Fragment f = f();
        if (f instanceof TwitterListFragment) {
            ((TwitterListFragment) f).aJ();
        }
    }

    Fragment f() {
        if (this.a == null || this.f == null) {
            return null;
        }
        at a = this.f.a(this.a.getCurrentItem());
        if (a != null) {
            return a(a);
        }
        return null;
    }

    public AbsPagesAdapter g() {
        return this.f;
    }

    public Fragment a(at atVar) {
        return this.f != null ? this.f.c(atVar) : null;
    }

    protected <T extends i> T a(T t) {
        return (i) ObjectUtils.a(t.e(this.c).i(false));
    }
}
