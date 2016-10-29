package com.twitter.android.media.widget;

/* compiled from: Twttr */
class bv extends br {
    final /* synthetic */ VideoSegmentEditView b;

    bv(VideoSegmentEditView videoSegmentEditView) {
        this.b = videoSegmentEditView;
        super(videoSegmentEditView, 400);
    }

    public void a(float f) {
        this.b.v = (1.0f - f) * 1.2f;
        this.b.invalidate();
    }

    public void d() {
        this.b.v = 1.0f;
        this.b.z = -1;
        this.b.u = null;
        this.b.f();
        this.b.invalidate();
    }
}
