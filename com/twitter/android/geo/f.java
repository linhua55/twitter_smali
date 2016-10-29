package com.twitter.android.geo;

import com.twitter.library.api.geo.PlaceAttribution;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class f {
    private final List<TwitterPlace> a;
    private final String b;
    private final List<PlaceAttribution> c;

    public f(List<TwitterPlace> list, String str, List<PlaceAttribution> list2) {
        this.a = n.a(list);
        this.b = str;
        this.c = n.a(list2);
    }

    public String a() {
        return this.b;
    }

    public List<PlaceAttribution> b() {
        return this.c;
    }

    public List<TwitterPlace> c() {
        return this.a;
    }
}
