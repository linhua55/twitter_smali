package com.twitter.android;

/* compiled from: Twttr */
class ln implements Runnable {
    final /* synthetic */ PhoneMTEntryFragment a;

    ln(PhoneMTEntryFragment phoneMTEntryFragment) {
        this.a = phoneMTEntryFragment;
    }

    public void run() {
        PhoneMTEntryFragment.a(this.a, true);
        PhoneMTEntryFragment.b(this.a, true);
    }
}
