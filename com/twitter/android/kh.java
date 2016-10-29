package com.twitter.android;

import android.text.SpannableStringBuilder;

/* compiled from: Twttr */
class kh implements Runnable {
    final /* synthetic */ SpannableStringBuilder a;
    final /* synthetic */ MediaTagFragment b;

    kh(MediaTagFragment mediaTagFragment, SpannableStringBuilder spannableStringBuilder) {
        this.b = mediaTagFragment;
        this.a = spannableStringBuilder;
    }

    public void run() {
        if (this.b.isAdded()) {
            MediaTagFragment.a(this.b, this.a, this.a.length());
            MediaTagFragment.c(this.b);
            MediaTagFragment.d(this.b);
        }
    }
}
