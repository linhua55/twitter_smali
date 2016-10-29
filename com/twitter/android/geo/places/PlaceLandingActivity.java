package com.twitter.android.geo.places;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
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
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.twitter.android.EventGridFragment;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.SearchFragment;
import com.twitter.android.km;
import com.twitter.android.ow;
import com.twitter.android.pl;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.library.client.Session;
import com.twitter.library.client.at;
import com.twitter.library.client.au;
import com.twitter.library.client.az;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.TwitterPlace.PlaceType;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import defpackage.bwh;
import defpackage.bwj;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class PlaceLandingActivity extends ScrollingHeaderActivity implements OnClickListener, q, pl {
    private static final Uri a;
    private static final Uri b;
    private h c;
    private b d;
    private km e;

    /* compiled from: Twttr */
    public enum PageType {
        TWEETS,
        MEDIA
    }

    static {
        a = Uri.parse("twitter://place/tweets");
        b = Uri.parse("twitter://place/media");
    }

    public void b(Bundle bundle, t tVar) {
        if (!getIntent().hasExtra("extra_place") || getIntent().getByteArrayExtra("extra_place") == null) {
            throw new NullPointerException("PlaceLandingActivity expects a value for extra_place in its intent extras!");
        }
        TwitterPlace a = TwitterPlace.a(getIntent().getByteArrayExtra("extra_place"));
        LinearLayout linearLayout = (LinearLayout) View.inflate(this, 2130969193, null);
        this.d = new b(this, linearLayout);
        AspectRatioFrameLayout d = this.d.d();
        bwh a2 = bwj.a(this, (ViewGroup) d.findViewById(2131951944));
        Session ab = ab();
        this.c = new h(a2, new e(this), new r(az.a((Context) this), this, ab), a, this.d, ab.g());
        super.b(bundle, tVar);
        setHeaderView(linearLayout);
        c(d.getAspectRatio());
        linearLayout.setOnClickListener(this);
        l();
        this.c.a(bundle);
    }

    @TargetApi(21)
    private void l() {
        if (VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(ViewCompat.MEASURED_STATE_MASK);
        }
    }

    protected void onResume() {
        this.c.f();
        super.onResume();
    }

    protected void onResumeFragments() {
        super.onResumeFragments();
        this.c.d();
    }

    protected void onPause() {
        this.c.g();
        super.onPause();
    }

    protected void onSaveInstanceState(Bundle bundle) {
        this.c.b(bundle);
        super.onSaveInstanceState(bundle);
    }

    protected void onDestroy() {
        this.c.i();
        super.onDestroy();
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.c.h();
    }

    protected int a(Resources resources) {
        int i = resources.getDisplayMetrics().widthPixels;
        View d = this.d.d();
        d.measure(MeasureSpec.makeMeasureSpec(i, 1073741824), MeasureSpec.makeMeasureSpec(0, 0));
        return d.getMeasuredHeight();
    }

    public boolean a(String str, long j, TwitterTopic twitterTopic, String str2) {
        return false;
    }

    public void a(boolean z, ListView listView, SearchFragment searchFragment) {
    }

    public void onClick(View view) {
    }

    protected List<at> N_() {
        this.c.a(0, false);
        return n.a(a(PageType.TWEETS, 0), a(PageType.MEDIA, 1));
    }

    protected BaseAdapter a(List<at> list) {
        this.e = new km(list);
        return this.e;
    }

    protected PagerAdapter a(List<at> list, ViewPager viewPager) {
        return new c(this, this, list, viewPager, this.p, this.e);
    }

    protected String a() {
        return this.c.a().d;
    }

    protected int j() {
        return this.d.d().getHeight() - this.r;
    }

    protected String c() {
        return null;
    }

    public void a(boolean z) {
        super.a(z);
        if (z) {
            this.c.b();
        }
    }

    protected void a(Drawable drawable) {
        this.d.a(drawable);
    }

    private at a(PageType pageType, int i) {
        Class cls;
        Uri uri;
        g b;
        int i2;
        TwitterPlace a = this.c.a();
        switch (a.a[pageType.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                cls = PlaceTimelineFragment.class;
                uri = a;
                b = ((j) ((j) ((j) ((j) j.a(getIntent()).b(2131363168)).a("fragment_page_number", i)).b("timeline_tag", a.b)).a("type", 30)).b();
                i2 = 2131364018;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                boolean z;
                Class cls2 = EventGridFragment.class;
                Uri uri2 = b;
                ow owVar = (ow) ow.a(getIntent()).b(2131363165);
                if (a.c == PlaceType.POI) {
                    z = true;
                } else {
                    z = false;
                }
                cls = cls2;
                uri = uri2;
                b = ((ow) ((ow) ((ow) ((ow) ((ow) ((ow) ((ow) ((ow) ((ow) owVar.a(z).a("fragment_page_number", i)).b("query", "place:" + a.b)).a("search_id", aj.a.nextLong())).b("query_name", a.d)).a("search_button", true)).a("terminal", true)).a("should_shim", false)).a("should_refresh", true)).a("search_type", 1)).a();
                i2 = 2131363414;
                break;
            default:
                throw new IllegalArgumentException("Unknown page type: " + pageType);
        }
        return new au(uri, cls).a(getString(i2)).a(b).a();
    }

    protected void a(int i) {
        super.a(i);
        this.c.a(i, true);
    }

    public void f() {
        this.c.c();
    }
}
