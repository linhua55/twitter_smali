package com.twitter.android.moments.ui;

import android.view.View;
import android.widget.ViewSwitcher.ViewFactory;
import com.twitter.ui.widget.TypefacesTextView;

/* compiled from: Twttr */
class i implements ViewFactory {
    final /* synthetic */ ScoreView a;

    i(ScoreView scoreView) {
        this.a = scoreView;
    }

    public View makeView() {
        TypefacesTextView typefacesTextView = new TypefacesTextView(this.a.getContext());
        typefacesTextView.setLayerType(2, null);
        typefacesTextView.setTextAppearance(this.a.getContext(), this.a.d);
        return typefacesTextView;
    }
}
