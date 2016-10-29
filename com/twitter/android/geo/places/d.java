package com.twitter.android.geo.places;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.SearchActivity;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.TwitterPlace.PlaceType;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class d {
    public static Intent a(Context context, TwitterPlace twitterPlace) {
        if (com.twitter.config.d.a("place_page_redesign_enabled")) {
            return new Intent(context, PlaceLandingActivity.class).putExtra("extra_place", TwitterPlace.a(twitterPlace));
        }
        return new Intent(context, SearchActivity.class).putExtra("query", "place:" + twitterPlace.b).putExtra("query_name", aj.a(twitterPlace.d) ? twitterPlace.f : twitterPlace.d).putExtra("recent", twitterPlace.c == PlaceType.POI).putExtra("search_button", true).putExtra("terminal", true).putExtra("search_type", 9);
    }
}
