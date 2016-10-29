package com.twitter.android.geo.places;

import com.twitter.android.widget.ScrollingHeaderTimelineFragment;

/* compiled from: Twttr */
public class PlaceTimelineFragment extends ScrollingHeaderTimelineFragment {
    private q m;
    private boolean n;

    protected void g() {
    }

    public void a(q qVar) {
        this.m = qVar;
    }

    protected boolean a_(int i) {
        return super.a_(i) && i == 1;
    }

    protected boolean h(int i) {
        if (i != 1 || this.m == null) {
            return false;
        }
        this.n = true;
        this.m.f();
        return true;
    }

    public void r() {
        this.n = false;
    }

    protected boolean l(int i) {
        return i == 1 && this.n;
    }
}
