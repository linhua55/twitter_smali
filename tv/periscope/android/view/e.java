package tv.periscope.android.view;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnScrollListener;

/* compiled from: Twttr */
class e extends OnScrollListener {
    final /* synthetic */ CarouselView a;

    e(CarouselView carouselView) {
        this.a = carouselView;
    }

    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        if (i == 0) {
            this.a.c();
        }
    }

    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
    }
}
