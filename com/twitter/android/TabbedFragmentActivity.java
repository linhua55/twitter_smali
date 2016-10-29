package com.twitter.android;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.internal.android.widget.IconTabHost;
import com.twitter.internal.android.widget.ViewPagerScrollBar;

/* compiled from: Twttr */
public abstract class TabbedFragmentActivity extends TwitterFragmentActivity implements OnTabChangeListener {
    protected int a;
    IconTabHost b;
    ViewPagerScrollBar c;
    ViewPager d;
    TabsAdapter e;
    SharedPreferences f;

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        c();
        j();
        e();
        D_();
        this.d.setPageMargin(getResources().getDimensionPixelSize(2131690051));
        this.d.setPageMarginDrawable(2131886266);
        this.f = getPreferences(0);
        this.b.setOnTabChangedListener(this);
        C_();
    }

    protected void c() {
        this.c = (ViewPagerScrollBar) findViewById(2131951702);
        if (this.c == null) {
            throw new RuntimeException("You must define a ViewPagerScrollBar with id R.id.scrollbar");
        }
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969436);
        tVar.c(true);
        return tVar;
    }

    protected void e() {
        this.d = (ViewPager) findViewById(2131952457);
        if (this.d == null) {
            throw new RuntimeException("You must define a ViewPager with id R.id.pager");
        }
    }

    protected void f() {
        this.b = (IconTabHost) findViewById(16908306);
        if (this.b == null) {
            throw new RuntimeException("You must define a tabhost with id android.R.id.tabhost");
        }
    }

    protected void C_() {
        this.e = new TabsAdapter(this, this.b, this.d, this.c);
    }

    public void onTabChanged(String str) {
        this.d.setCurrentItem(this.b.getCurrentTab());
    }

    void a(String str) {
        TabHost tabHost = this.b;
        if (!str.equals(tabHost.getCurrentTabTag())) {
            tabHost.setCurrentTabByTag(str);
            this.c.setPosition(this.d.getCurrentItem());
        }
    }

    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (this.b.getCurrentTab() == -1) {
            this.b.setCurrentTab(0);
        }
    }

    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        String string = bundle.getString("currentTab");
        if (string != null) {
            a(string);
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        String currentTabTag = this.b.getCurrentTabTag();
        if (currentTabTag != null) {
            bundle.putString("currentTab", currentTabTag);
        }
    }

    protected void onPause() {
        super.onPause();
        Editor edit = this.f.edit();
        edit.putString("tag", this.b.getCurrentTabTag());
        edit.apply();
    }

    public void onContentChanged() {
        super.onContentChanged();
        f();
        this.b.setup();
        e();
    }

    protected Fragment i() {
        return this.e.a(this.d.getCurrentItem()).a(getSupportFragmentManager());
    }

    protected void j() {
        this.c.setRange(this.a);
    }

    protected void D_() {
        this.d.setOffscreenPageLimit((this.a - 1) / 2);
    }
}
