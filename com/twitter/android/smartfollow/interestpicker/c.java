package com.twitter.android.smartfollow.interestpicker;

/* compiled from: Twttr */
class c implements Runnable {
    final /* synthetic */ InterestPickerScreen a;

    c(InterestPickerScreen interestPickerScreen) {
        this.a = interestPickerScreen;
    }

    public void run() {
        this.a.i.setVisibility(0);
    }
}
