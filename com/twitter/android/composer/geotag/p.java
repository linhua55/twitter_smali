package com.twitter.android.composer.geotag;

import android.view.View;
import com.twitter.model.geo.TwitterPlace;

/* compiled from: Twttr */
class p implements j {
    final /* synthetic */ InlinePlacePickerView a;

    p(InlinePlacePickerView inlinePlacePickerView) {
        this.a = inlinePlacePickerView;
    }

    public void a(View view, TwitterPlace twitterPlace, int i) {
        if (InlinePlacePickerView.a(this.a) != null) {
            InlinePlacePickerView.a(this.a).a(twitterPlace);
        }
    }

    public void a(View view, int i) {
        if (InlinePlacePickerView.a(this.a) != null) {
            InlinePlacePickerView.a(this.a).d();
        }
    }
}
