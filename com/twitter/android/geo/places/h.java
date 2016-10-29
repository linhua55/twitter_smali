package com.twitter.android.geo.places;

import android.net.Uri;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import bwi;
import com.twitter.android.geo.places.PlaceLandingActivity.PageType;
import com.twitter.android.mx;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.TwitterPlace.PlaceType;
import com.twitter.model.geo.VendorInfo.YelpInfo;
import com.twitter.model.geo.m;
import com.twitter.model.geo.q;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import defpackage.bbu;
import defpackage.bwh;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class h implements f {
    private final l a;
    private final bwh b;
    private final e c;
    private final r d;
    private final long e;
    private String f;
    private TwitterPlace g;
    private TwitterPlace h;
    private PageType i;
    private boolean j;
    private boolean k;
    private final bwi l;

    public h(bwh bwh, e eVar, r rVar, TwitterPlace twitterPlace, l lVar, long j) {
        this.i = PageType.TWEETS;
        this.l = new i(this);
        this.b = bwh;
        this.a = lVar;
        this.c = eVar;
        this.d = rVar;
        this.e = j;
        this.g = twitterPlace;
    }

    private void a(String str, String str2, boolean z) {
        this.c.a(this.g.b, this, "all".equals(str2) ? null : this.f, str, str2, z);
    }

    public void a(int i, boolean z) {
        switch (i) {
            case mx.View_android_theme /*0*/:
                this.i = PageType.TWEETS;
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                this.i = PageType.MEDIA;
                break;
        }
        if (z) {
            this.a.a(i);
        }
        a(i);
    }

    public TwitterPlace a() {
        return this.g;
    }

    private String j() {
        switch (k.a[this.i.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return "tweets";
            case WireMessage.WIRE_CONTROL /*2*/:
                return "media";
            default:
                return null;
        }
    }

    public void b() {
        a(j(), "refresh", false);
    }

    public void c() {
        a(j(), "scroll", false);
    }

    public void d() {
        if (!this.j) {
            e();
        }
    }

    public void e() {
        a("all", null, true);
    }

    private void a(TwitterPlace twitterPlace) {
        this.g = twitterPlace;
        this.a.a(this.g.d);
        if (aj.b(twitterPlace.l)) {
            this.a.b(twitterPlace.l);
        }
        if (twitterPlace.c == PlaceType.POI && twitterPlace.h != null) {
            if (!this.k) {
                this.b.a(twitterPlace.h, this.l);
                this.k = true;
            }
            if (this.h == null) {
                this.d.a(twitterPlace.h, new j(this));
            } else {
                this.a.c(this.h.d);
            }
        } else if (!(twitterPlace.c == PlaceType.POI || this.k || twitterPlace.g == null)) {
            this.b.a(twitterPlace.g.a(), twitterPlace.g.b(), this.l);
            this.k = true;
        }
        if (twitterPlace.e.c != null) {
            q qVar = twitterPlace.e.c;
            this.a.c().a(Uri.parse(String.format("https://foursquare.com/v/%s", new Object[]{qVar.b})));
        } else if (twitterPlace.e.d != null) {
            YelpInfo yelpInfo = twitterPlace.e.d;
            o b = this.a.b();
            b.a(yelpInfo.e);
            b.b(yelpInfo.f);
            b.a(Uri.parse(yelpInfo.d));
        }
    }

    private void a(int i) {
        String str;
        switch (i) {
            case mx.View_android_theme /*0*/:
                str = "tweets_timeline";
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                str = "photo_grid";
                break;
            default:
                return;
        }
        str = ScribeLog.a("place_page", str, BuildConfig.VERSION_NAME, BuildConfig.VERSION_NAME, "impression");
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.e).b(str)).d(this.g.b));
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            this.j = bundle.getBoolean("state_fetched_all");
            this.i = (PageType) bundle.getSerializable("state_page_type");
            this.f = bundle.getString("state_tweet_cursor");
            this.g = (TwitterPlace) e.a(TwitterPlace.a(bundle.getByteArray("state_place")));
            this.h = TwitterPlace.a(bundle.getByteArray("state_city_place"));
        }
        this.b.a(bundle == null ? null : bundle.getBundle("state_map_bundle"));
        a(this.g);
    }

    public void f() {
        this.b.a();
    }

    public void g() {
        this.b.b();
    }

    public void b(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        this.b.b(bundle2);
        bundle.putBundle("state_map_bundle", bundle2);
        bundle.putBoolean("state_fetched_all", this.j);
        bundle.putSerializable("state_page_type", this.i);
        bundle.putString("state_tweet_cursor", this.f);
        bundle.putByteArray("state_place", TwitterPlace.a(this.g));
        bundle.putByteArray("state_city_place", TwitterPlace.a(this.h));
    }

    public void h() {
        this.b.d();
    }

    public void i() {
        this.b.c();
        this.d.a();
        this.c.a();
    }

    public void a(m mVar) {
        if (mVar != null) {
            TwitterPlace twitterPlace;
            if (mVar.a == null) {
                twitterPlace = null;
            } else {
                twitterPlace = mVar.a.a;
            }
            if (twitterPlace != null) {
                a(twitterPlace);
            }
            if (mVar.c != null) {
                this.f = mVar.c.a;
            }
            this.j = true;
        } else {
            this.a.a();
        }
        this.a.a(false);
    }
}
