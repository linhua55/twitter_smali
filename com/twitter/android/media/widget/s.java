package com.twitter.android.media.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
class s implements OnClickListener {
    final /* synthetic */ int a;
    final /* synthetic */ FilterFilmstripView b;

    s(FilterFilmstripView filterFilmstripView, int i) {
        this.b = filterFilmstripView;
        this.a = i;
    }

    public void onClick(View view) {
        View view2 = ((aa) ((MediaImageView) this.b.e.get(this.b.f)).getTag()).a;
        if (this.b.f == this.a && view2.getVisibility() == 8 && this.a != 0) {
            this.b.a(view2, true);
        } else if (view2.getVisibility() == 0) {
            this.b.a(view2, false);
        } else if (this.b.f != this.a) {
            this.b.setSelectedFilter(this.a);
            this.b.a(true);
        }
    }
}
