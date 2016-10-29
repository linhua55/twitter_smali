package com.twitter.android.profilecompletionmodule.chooselocation;

import android.widget.Filter;
import android.widget.Filter.FilterResults;

/* compiled from: Twttr */
class e extends Filter {
    final /* synthetic */ ChooseLocationScreen a;

    e(ChooseLocationScreen chooseLocationScreen) {
        this.a = chooseLocationScreen;
    }

    protected FilterResults performFiltering(CharSequence charSequence) {
        return null;
    }

    protected void publishResults(CharSequence charSequence, FilterResults filterResults) {
    }

    public CharSequence convertResultToString(Object obj) {
        return this.a.getLocationFieldText();
    }
}
