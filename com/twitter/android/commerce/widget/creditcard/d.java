package com.twitter.android.commerce.widget.creditcard;

/* compiled from: Twttr */
class d implements Runnable {
    final /* synthetic */ CardEntryBase a;
    final /* synthetic */ CardEntryContainer b;

    d(CardEntryContainer cardEntryContainer, CardEntryBase cardEntryBase) {
        this.b = cardEntryContainer;
        this.a = cardEntryBase;
    }

    public void run() {
        CardEntryContainer.b(this.b, this.a);
    }
}
