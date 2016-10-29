package com.twitter.android.interestpicker;

import android.widget.ListView;

/* compiled from: Twttr */
class k implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ ListView b;
    final /* synthetic */ InterestPickerListFragment c;

    k(InterestPickerListFragment interestPickerListFragment, boolean z, ListView listView) {
        this.c = interestPickerListFragment;
        this.a = z;
        this.b = listView;
    }

    public void run() {
        int a = InterestPickerListFragment.a(this.c) - 1;
        if (this.a) {
            this.b.smoothScrollToPositionFromTop(a, 0, 20);
        } else {
            this.b.setSelectionFromTop(a, 0);
        }
    }
}
