package com.twitter.internal.android.widget;

import android.widget.Filter;
import android.widget.Filterable;

/* compiled from: Twttr */
final class ac implements Filterable {
    ac() {
    }

    public Filter getFilter() {
        return new ad(this);
    }
}
