package com.twitter.android.alerts.landing;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.Toast;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.eventtimelines.k;
import com.twitter.android.km;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.client.az;
import com.twitter.library.provider.di;
import com.twitter.platform.PlatformContext;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import defpackage.bwj;
import defpackage.sb;
import defpackage.se;
import java.util.List;

/* compiled from: Twttr */
public class AlertLandingActivity extends ScrollingHeaderActivity implements d, k {
    private static final String a;
    private static final Uri b;
    private static final String c;
    private final OnClickListener d;
    private final k e;
    private e f;
    private final OnClickListener g;
    private long h;
    private AlertLandingHeaderView i;
    private km j;

    public AlertLandingActivity() {
        this.d = new a(this);
        this.e = new b(this);
        this.g = new c(this);
    }

    static {
        a = AlertLandingActivity.class.getSimpleName();
        b = Uri.parse("twitter://alert/tweets");
        c = a + ":alert_id";
    }

    public static Intent a(Context context, long j) {
        Intent intent = new Intent(context, AlertLandingActivity.class);
        intent.putExtra(c, j);
        return intent;
    }

    public void b(Bundle bundle, t tVar) {
        a(getIntent().getExtras());
        this.i = new AlertLandingHeaderView(this);
        com.twitter.platform.t a = PlatformContext.f().a();
        Session ab = ab();
        this.f = new f(this, new se(this, ab, az.a((Context) this), new sb(di.a((Context) this, ab.g()), a)), bwj.a(this, this.i.getMapGroup()));
        super.b(bundle, tVar);
        setHeaderView(this.i);
        c(this.i.getHeaderImageGroup().getAspectRatio());
        this.i.setOnClickListener(this.d);
        this.i.getMuteView().setOnClickListener(this.g);
        r();
        this.f.a(bundle);
        l();
    }

    private void l() {
        this.x = 0;
        this.p.setVisibility(8);
    }

    private void a(Bundle bundle) {
        if (bundle != null) {
            this.h = bundle.getLong(c, -1);
        }
        m();
    }

    private void m() throws IllegalArgumentException {
        if (this.h == -1) {
            throw new IllegalArgumentException("Provided alert id is invalid. Provided value: " + this.h);
        }
    }

    protected void onResumeFragments() {
        super.onResumeFragments();
        this.f.b();
    }

    protected void onPause() {
        this.f.c();
        super.onPause();
    }

    protected void onDestroy() {
        this.f.d();
        super.onDestroy();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        this.f.b(bundle);
        super.onSaveInstanceState(bundle);
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.f.e();
    }

    @TargetApi(21)
    private void r() {
        if (VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(ViewCompat.MEASURED_STATE_MASK);
        }
    }

    protected List<at> N_() {
        return n.b(a(0, this.h));
    }

    protected BaseAdapter a(List<at> list) {
        this.j = new km(list);
        return this.j;
    }

    private at a(int i, long j) {
        CharSequence string = getString(2131364018);
        return new au(b, AlertTimelineFragment.class).a(string).a(((j) ((j) ((j) ((j) ((j) j.a(getIntent()).b(2131363168)).a("fragment_page_number", i)).b("timeline_tag", String.valueOf(j))).a("type", 8)).a(AlertTimelineFragment.n, j)).b()).a();
    }

    protected PagerAdapter a(List<at> list, ViewPager viewPager) {
        return new j(this, list, viewPager, this.p, this.j, this.e, this);
    }

    protected String a() {
        return this.f.a();
    }

    protected String c() {
        return null;
    }

    protected void a(Drawable drawable) {
        this.i.setBlurredHeaderDrawable(drawable);
    }

    protected int a(Resources resources) {
        int i = resources.getDisplayMetrics().widthPixels;
        View headerImageGroup = this.i.getHeaderImageGroup();
        headerImageGroup.measure(MeasureSpec.makeMeasureSpec(i, 1073741824), MeasureSpec.makeMeasureSpec(0, 0));
        return headerImageGroup.getMeasuredHeight();
    }

    protected int j() {
        return this.i.getHeaderImageGroup().getHeight() - this.r;
    }

    protected boolean y() {
        return d.a("event_timelines_blur_header_enabled");
    }

    public void f() {
        Toast.makeText(this, 2131364106, 1).show();
        this.i.getHeaderTextGroup().setVisibility(8);
    }

    public void a(String str, String str2) {
        this.i.getHeaderTextGroup().setVisibility(0);
        this.i.getTitleView().setText(str);
        b(str2);
    }

    public void b(Bitmap bitmap) {
        a(bitmap);
    }

    public void c(boolean z) {
        this.i.getMuteView().setText(z ? 2131364109 : 2131364107);
    }

    public void d(boolean z) {
        Toast.makeText(this, z ? 2131364108 : 2131364110, 1).show();
    }

    public void a(int i, AlertTimelineFragment alertTimelineFragment) {
        this.f.a(alertTimelineFragment.r());
    }

    private void b(String str) {
        int i;
        if (aj.a((CharSequence) str)) {
            i = 8;
        } else {
            i = 0;
        }
        this.i.getSubtitleView().setVisibility(i);
        this.i.getSubtitleView().setText(getString(2131364105, new Object[]{str}));
    }
}
