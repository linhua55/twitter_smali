package com.twitter.android.commerce.view;

/* compiled from: Twttr */
class z implements Runnable {
    final /* synthetic */ ProductSummaryActivity a;

    z(ProductSummaryActivity productSummaryActivity) {
        this.a = productSummaryActivity;
    }

    public void run() {
        if (this.a.z != null) {
            this.a.b(true);
            this.a.e.setText(this.a.getString(2131362271, new Object[]{ProductSummaryActivity.b("$", this.a.r())}));
        }
    }
}
