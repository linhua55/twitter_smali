package com.twitter.android.commerce.widget.creditcard;

import android.os.CountDownTimer;

/* compiled from: Twttr */
class c extends CountDownTimer {
    final /* synthetic */ long a;
    final /* synthetic */ CardEntryBase b;
    final /* synthetic */ CardEntryContainer c;

    c(CardEntryContainer cardEntryContainer, long j, long j2, long j3, CardEntryBase cardEntryBase) {
        this.c = cardEntryContainer;
        this.a = j3;
        this.b = cardEntryBase;
        super(j, j2);
    }

    public void onTick(long j) {
        this.c.scrollTo((int) (((double) this.a) - (((300.0d - ((double) j)) / 300.0d) * ((double) this.a))), 0);
    }

    public void onFinish() {
        this.c.scrollTo(0, 0);
        CardEntryContainer.a(this.c, this.b);
    }
}
