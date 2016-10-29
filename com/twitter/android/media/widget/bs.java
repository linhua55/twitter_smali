package com.twitter.android.media.widget;

/* compiled from: Twttr */
class bs implements Runnable {
    final /* synthetic */ VideoSegmentEditView a;

    private bs(VideoSegmentEditView videoSegmentEditView) {
        this.a = videoSegmentEditView;
    }

    public void run() {
        if (this.a.l != null && this.a.C == this.a.B) {
            if (this.a.C != this.a.A) {
                this.a.f(this.a.C);
            }
            if (this.a.l.c(this.a.C) && this.a.e(this.a.C)) {
                this.a.w.offsetTo(this.a.p - this.a.x, this.a.r - this.a.y);
            }
        }
    }
}
