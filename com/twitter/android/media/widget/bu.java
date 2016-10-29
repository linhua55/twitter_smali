package com.twitter.android.media.widget;

import android.view.View;

/* compiled from: Twttr */
class bu extends br {
    final /* synthetic */ VideoSegmentEditView b;
    private int c;
    private int d;
    private float e;
    private float f;
    private int g;
    private float h;

    bu(VideoSegmentEditView videoSegmentEditView) {
        this.b = videoSegmentEditView;
        super(videoSegmentEditView, 150);
    }

    public void c() {
        this.b.e.b();
        this.h = this.b.v - 1.0f;
        this.g = this.b.z;
        View childAt = this.b.k.getChildAt(this.g - this.b.k.getFirstVisiblePosition());
        if (childAt != null) {
            this.d = childAt.getTop() + this.b.k.getTop();
            this.c = childAt.getLeft() + this.b.k.getLeft();
        } else {
            this.b.j.a();
            b();
        }
        this.f = (float) (this.b.w.left - this.c);
        this.e = (float) (this.b.w.top - this.d);
    }

    public void a(float f) {
        int i = this.c;
        int i2 = this.d;
        View childAt = this.b.k.getChildAt(this.g - this.b.k.getFirstVisiblePosition());
        if (childAt != null) {
            i2 = childAt.getTop() + this.b.k.getTop();
            i = childAt.getLeft() + this.b.k.getLeft();
        }
        this.c = i;
        this.d = i2;
        float f2 = 1.0f - f;
        this.b.w.offsetTo(this.c + ((int) (this.f * f2)), this.d + ((int) (this.e * f2)));
        this.b.v = (f2 * this.h) + 1.0f;
        this.b.invalidate();
    }

    public void d() {
        this.b.d();
    }
}
