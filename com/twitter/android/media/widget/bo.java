package com.twitter.android.media.widget;

/* compiled from: Twttr */
class bo implements Runnable {
    final /* synthetic */ VideoSegmentEditView a;

    bo(VideoSegmentEditView videoSegmentEditView) {
        this.a = videoSegmentEditView;
    }

    public void run() {
        this.a.e();
        this.a.G = false;
    }
}
