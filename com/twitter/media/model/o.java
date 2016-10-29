package com.twitter.media.model;

/* compiled from: Twttr */
class o implements Runnable {
    final /* synthetic */ SegmentedVideoFile a;
    final /* synthetic */ n b;

    o(n nVar, SegmentedVideoFile segmentedVideoFile) {
        this.b = nVar;
        this.a = segmentedVideoFile;
    }

    public void run() {
        this.a.e();
    }
}
