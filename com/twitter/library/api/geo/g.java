package com.twitter.library.api.geo;

import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class g {
    private final List<TwitterPlace> a;

    public g(List<TwitterPlace> list) {
        this.a = n.a(list);
    }

    public List<TwitterPlace> a() {
        return this.a;
    }
}
