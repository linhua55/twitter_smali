package com.google.android.gms.location.places.ui;

import android.app.Activity;
import android.content.Intent;
import android.support.annotation.Nullable;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.maps.model.LatLngBounds;

public class b extends g {
    public b(int i) {
        super("com.google.android.gms.location.places.ui.AUTOCOMPLETE");
        this.a.putExtra("gmscore_client_jar_version", com.google.android.gms.common.b.a);
        this.a.putExtra("mode", i);
        this.a.putExtra(TtmlNode.ATTR_TTS_ORIGIN, 2);
    }

    public Intent a(Activity activity) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        return super.a(activity);
    }

    public b a(int i) {
        this.a.putExtra(TtmlNode.ATTR_TTS_ORIGIN, i);
        return this;
    }

    public b a(@Nullable AutocompleteFilter autocompleteFilter) {
        if (autocompleteFilter != null) {
            this.a.putExtra("filter", autocompleteFilter);
        } else {
            this.a.removeExtra("filter");
        }
        return this;
    }

    public b a(@Nullable LatLngBounds latLngBounds) {
        if (latLngBounds != null) {
            this.a.putExtra("bounds", latLngBounds);
        } else {
            this.a.removeExtra("bounds");
        }
        return this;
    }

    public b a(@Nullable String str) {
        if (str != null) {
            this.a.putExtra("initial_query", str);
        } else {
            this.a.removeExtra("initial_query");
        }
        return this;
    }
}
