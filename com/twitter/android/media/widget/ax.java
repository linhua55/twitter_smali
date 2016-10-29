package com.twitter.android.media.widget;

/* compiled from: Twttr */
class ax implements Runnable {
    final /* synthetic */ aw a;

    ax(aw awVar) {
        this.a = awVar;
    }

    public void run() {
        if (this.a.a == MediaAttachmentsView.b(this.a.b)) {
            this.a.a.setVisibility(4);
        } else {
            MediaAttachmentsView.a(this.a.b, this.a.a);
        }
        if (MediaAttachmentsView.c(this.a.b)) {
            this.a.b.b();
        }
    }
}
