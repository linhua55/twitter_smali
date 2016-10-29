package com.twitter.android.settings;

/* compiled from: Twttr */
class h implements Runnable {
    final /* synthetic */ MobileNotificationsActivity a;

    h(MobileNotificationsActivity mobileNotificationsActivity) {
        this.a = mobileNotificationsActivity;
    }

    public void run() {
        int order = this.a.u.getOrder() - 1;
        this.a.getListView().performItemClick(this.a.getListView().getChildAt(order), order, this.a.getListView().getItemIdAtPosition(order));
    }
}
