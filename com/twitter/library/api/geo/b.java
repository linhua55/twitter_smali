package com.twitter.library.api.geo;

import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class b {
    private final String a;
    private final List<TwitterPlace> b;
    private final TwitterPlace c;
    private final String d;
    private final List<PlaceAttribution> e;

    public b(String str, List<TwitterPlace> list, String str2, List<PlaceAttribution> list2) {
        this.a = str;
        this.b = n.a(list);
        for (TwitterPlace twitterPlace : this.b) {
            if (twitterPlace.b.equals(this.a)) {
                break;
            }
        }
        TwitterPlace twitterPlace2 = null;
        this.c = twitterPlace2;
        this.d = str2;
        this.e = n.a(list2);
    }

    public List<TwitterPlace> a() {
        return this.b;
    }

    public TwitterPlace b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public List<PlaceAttribution> d() {
        return this.e;
    }
}
