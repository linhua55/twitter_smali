package com.twitter.android.composer.geotag;

import com.twitter.android.geo.GeoTagState;
import com.twitter.android.geo.PlacePickerModel;
import com.twitter.android.geo.PlacePickerModel.PlaceListSource;
import com.twitter.android.geo.f;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.collection.n;
import defpackage.bbu;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class l implements r {
    private final o a;
    private final bg b;
    private final PlacePickerModel c;
    private n d;
    private boolean e;

    public l(o oVar, bg bgVar, PlacePickerModel placePickerModel) {
        this.a = oVar;
        this.b = bgVar;
        this.c = placePickerModel;
        this.c.registerObserver(new m(this));
        this.a.setViewListener(this);
    }

    public void a(n nVar) {
        this.d = nVar;
    }

    public void a(boolean z) {
        this.e = z;
    }

    public void a() {
        GeoTagState c = this.c.c();
        if (this.e || c.c()) {
            this.a.a(c.c() ? c.e().d : null);
        } else {
            this.a.a();
        }
        if (!this.e || c.d()) {
            this.a.b();
        } else {
            this.a.a(a(this.c.a(PlaceListSource.a)));
        }
    }

    public void a(int i) {
        this.a.setVisibility(i);
    }

    private List<TwitterPlace> a(f fVar) {
        if (fVar == null) {
            return n.g();
        }
        List<TwitterPlace> arrayList = new ArrayList(fVar.c());
        if (arrayList.size() > 5) {
            return arrayList.subList(0, 5);
        }
        return arrayList;
    }

    private void a(String str) {
        bbu.a(new TwitterScribeLog(this.b.c().g()).b("compose", "poi", null, str, "click"));
    }

    public void b() {
        a("add_location");
        if (this.d != null) {
            this.d.h();
        }
    }

    public void c() {
        a("poi_tag");
        if (this.d != null) {
            this.d.h();
        }
    }

    public void d() {
        a("search_locations");
        if (this.d != null) {
            this.d.h();
        }
    }

    public void a(TwitterPlace twitterPlace) {
        if (this.d != null && twitterPlace != null) {
            this.d.a(twitterPlace);
        }
    }
}
