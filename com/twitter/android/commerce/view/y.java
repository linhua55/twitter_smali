package com.twitter.android.commerce.view;

/* compiled from: Twttr */
class y implements Runnable {
    final /* synthetic */ ProductSummaryActivity a;

    y(ProductSummaryActivity productSummaryActivity) {
        this.a = productSummaryActivity;
    }

    public void run() {
        this.a.m.setVisibility(0);
        this.a.q.setVisibility(8);
    }
}
