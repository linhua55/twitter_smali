package com.google.android.gms.location.places.ui;

import android.view.View;
import android.view.View.OnClickListener;

class e implements OnClickListener {
    final /* synthetic */ SupportPlaceAutocompleteFragment a;

    e(SupportPlaceAutocompleteFragment supportPlaceAutocompleteFragment) {
        this.a = supportPlaceAutocompleteFragment;
    }

    public void onClick(View view) {
        this.a.a(TtmlNode.ANONYMOUS_REGION_ID);
    }
}
