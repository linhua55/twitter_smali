package com.twitter.android.highlights;

import com.twitter.library.widget.ObservableScrollView;

/* compiled from: Twttr */
class ab implements Runnable {
    final /* synthetic */ ObservableScrollView a;
    final /* synthetic */ int b;
    final /* synthetic */ StoriesActivity c;

    ab(StoriesActivity storiesActivity, ObservableScrollView observableScrollView, int i) {
        this.c = storiesActivity;
        this.a = observableScrollView;
        this.b = i;
    }

    public void run() {
        if (!this.c.isFinishing()) {
            at atVar = (at) this.a.getTag();
            if (this.a.getChildAt(0).getHeight() > this.b) {
                atVar.E.setVisibility(0);
            } else {
                atVar.E.setVisibility(8);
            }
        }
    }
}
