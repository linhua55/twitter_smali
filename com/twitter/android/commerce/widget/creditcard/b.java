package com.twitter.android.commerce.widget.creditcard;

/* compiled from: Twttr */
class b implements Runnable {
    final /* synthetic */ CardEntryBase a;
    final /* synthetic */ int b;
    final /* synthetic */ CardEntryContainer c;

    b(CardEntryContainer cardEntryContainer, CardEntryBase cardEntryBase, int i) {
        this.c = cardEntryContainer;
        this.a = cardEntryBase;
        this.b = i;
    }

    public void run() {
        this.a.setTextColor(this.b);
    }
}
