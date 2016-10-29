package com.twitter.model.geo;

import com.twitter.model.geo.TwitterPlace.PlaceType;
import com.twitter.util.object.e;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class k extends f<TwitterPlace> {
    String a;
    PlaceType b;
    String c;
    VendorInfo d;
    String e;
    a f;
    d g;
    String h;
    String i;
    TwitterPlace j;
    String k;
    String l;

    public k() {
        this.a = "";
        this.b = PlaceType.f;
        this.c = "";
        this.d = VendorInfo.b;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public k a(String str) {
        this.a = (String) e.b(str, this.a);
        return this;
    }

    public k a(PlaceType placeType) {
        this.b = (PlaceType) e.b(placeType, this.b);
        return this;
    }

    public k a(VendorInfo vendorInfo) {
        this.d = (VendorInfo) e.b(vendorInfo, this.d);
        return this;
    }

    public k b(String str) {
        this.c = (String) e.b(str, this.c);
        return this;
    }

    public k c(String str) {
        this.e = str;
        return this;
    }

    public k a(a aVar) {
        this.f = aVar;
        return this;
    }

    public k a(d dVar) {
        this.g = dVar;
        return this;
    }

    public k d(String str) {
        this.h = str;
        return this;
    }

    public k e(String str) {
        this.i = str;
        return this;
    }

    public k a(TwitterPlace twitterPlace) {
        this.j = twitterPlace;
        return this;
    }

    public k f(String str) {
        this.k = str;
        return this;
    }

    public k g(String str) {
        this.l = str;
        return this;
    }

    protected TwitterPlace d() {
        return new TwitterPlace(this, null);
    }
}
