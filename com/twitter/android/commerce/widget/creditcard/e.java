package com.twitter.android.commerce.widget.creditcard;

import android.os.CountDownTimer;

/* compiled from: Twttr */
class e extends CountDownTimer {
    final /* synthetic */ int a;
    final /* synthetic */ CardEntryBase b;
    final /* synthetic */ CardEntryContainer c;

    e(CardEntryContainer cardEntryContainer, long j, long j2, int i, CardEntryBase cardEntryBase) {
        this.c = cardEntryContainer;
        this.a = i;
        this.b = cardEntryBase;
        super(j, j2);
    }

    public void onTick(long j) {
        this.c.scrollTo((int) (((300.0d - ((double) j)) / 300.0d) * ((double) this.a)), 0);
    }

    public void onFinish() {
        this.c.scrollTo(this.a, 0);
        CardEntryContainer.a(this.c, this.b);
    }
}
