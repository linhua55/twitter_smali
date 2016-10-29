package com.twitter.android.composer.geotag;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class q implements OnClickListener {
    final /* synthetic */ InlinePlacePickerView a;

    q(InlinePlacePickerView inlinePlacePickerView) {
        this.a = inlinePlacePickerView;
    }

    public void onClick(View view) {
        InlinePlacePickerView.b(this.a);
    }
}
