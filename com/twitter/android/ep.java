package com.twitter.android;

import android.widget.Filter;
import android.widget.Filter.FilterResults;

/* compiled from: Twttr */
class ep extends Filter {
    final /* synthetic */ EditProfileActivity a;

    ep(EditProfileActivity editProfileActivity) {
        this.a = editProfileActivity;
    }

    protected FilterResults performFiltering(CharSequence charSequence) {
        return null;
    }

    protected void publishResults(CharSequence charSequence, FilterResults filterResults) {
    }

    public CharSequence convertResultToString(Object obj) {
        return this.a.E();
    }
}
