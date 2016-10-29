package com.twitter.android.geo;

import android.database.DataSetObserver;
import android.database.Observable;
import android.support.v4.os.EnvironmentCompat;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.d;
import com.twitter.util.m;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Twttr */
public class PlacePickerModel extends Observable<DataSetObserver> {
    private final Map<PlaceListSource, f> a;
    private long b;
    private d c;
    private boolean d;
    private GeoTagState e;

    public PlacePickerModel() {
        this.a = new HashMap();
        this.e = GeoTagState.a();
    }

    public void a() {
        this.b = 0;
        this.c = null;
        this.d = false;
        this.a.clear();
        this.e = GeoTagState.a();
        d();
    }

    public boolean a(d dVar) {
        if (this.d) {
            return false;
        }
        if (c(dVar) || m.b() - this.b > 300000) {
            return true;
        }
        return false;
    }

    public boolean b(d dVar) {
        return c(dVar);
    }

    private boolean c(d dVar) {
        f fVar = (f) this.a.get(PlaceListSource.a);
        return dVar == null || fVar == null || fVar.c().isEmpty() || this.c == null || this.c.a(dVar) > 30.0f;
    }

    public PlacePickerModel a(d dVar, f fVar) {
        this.b = m.b();
        this.c = dVar;
        this.a.put(PlaceListSource.a, fVar);
        d();
        return this;
    }

    public d b() {
        return this.c;
    }

    public f a(PlaceListSource placeListSource) {
        return (f) this.a.get(placeListSource);
    }

    public PlacePickerModel a(boolean z) {
        this.d = z;
        return this;
    }

    public PlacePickerModel a(f fVar) {
        this.a.put(PlaceListSource.b, fVar);
        d();
        return this;
    }

    public PlacePickerModel a(GeoTagState geoTagState) {
        this.e = geoTagState;
        d();
        return this;
    }

    public GeoTagState c() {
        return this.e;
    }

    public int a(TwitterPlace twitterPlace) {
        if (this.a.containsKey(PlaceListSource.a)) {
            int indexOf = ((f) this.a.get(PlaceListSource.a)).c().indexOf(twitterPlace);
            if (indexOf >= 0) {
                return indexOf;
            }
        }
        return this.a.containsKey(PlaceListSource.b) ? ((f) this.a.get(PlaceListSource.b)).c().indexOf(twitterPlace) : -1;
    }

    public String b(TwitterPlace twitterPlace) {
        int indexOf = this.a.containsKey(PlaceListSource.a) ? ((f) this.a.get(PlaceListSource.a)).c().indexOf(twitterPlace) : -1;
        if (indexOf >= 0 && indexOf < 25) {
            return "default";
        }
        if (indexOf >= 0 || (this.a.containsKey(PlaceListSource.b) && ((f) this.a.get(PlaceListSource.b)).c().contains(twitterPlace))) {
            return "search";
        }
        return EnvironmentCompat.MEDIA_UNKNOWN;
    }

    public void d() {
        Iterator it = this.mObservers.iterator();
        while (it.hasNext()) {
            ((DataSetObserver) it.next()).onChanged();
        }
    }
}
