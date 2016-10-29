package com.twitter.library.api.geo;

/* compiled from: Twttr */
public enum PlaceAttribution {
    FOURSQUARE("foursquare"),
    YELP("yelp");
    
    private final String mName;

    private PlaceAttribution(String str) {
        this.mName = str;
    }

    public String toString() {
        return this.mName;
    }

    public static PlaceAttribution a(String str) {
        if (str.equals(FOURSQUARE.toString())) {
            return FOURSQUARE;
        }
        if (str.equals(YELP.toString())) {
            return YELP;
        }
        return null;
    }
}
