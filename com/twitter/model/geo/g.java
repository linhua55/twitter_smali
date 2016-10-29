package com.twitter.model.geo;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class g {
    public static final n<g> a;
    private final TwitterPlace b;
    private final d c;
    private final String d;

    static {
        a = new i(null);
    }

    public g(TwitterPlace twitterPlace, d dVar, String str) {
        if (twitterPlace == null) {
            throw new IllegalArgumentException("Cannot create geotag with null place");
        }
        this.b = twitterPlace;
        this.c = dVar;
        this.d = str;
    }

    public TwitterPlace a() {
        return this.b;
    }

    public d b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public String toString() {
        return "GeoTag{place=" + this.b + ", coordinate=" + this.c + ", searchId='" + this.d + '\'' + '}';
    }
}
