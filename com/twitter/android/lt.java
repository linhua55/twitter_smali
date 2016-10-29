package com.twitter.android;

/* compiled from: Twttr */
class lt implements Runnable {
    final /* synthetic */ PhoneOwnershipBeginFragment a;

    lt(PhoneOwnershipBeginFragment phoneOwnershipBeginFragment) {
        this.a = phoneOwnershipBeginFragment;
    }

    public void run() {
        PhoneOwnershipBeginFragment.a(this.a, true);
        PhoneOwnershipBeginFragment.b(this.a, true);
    }
}
