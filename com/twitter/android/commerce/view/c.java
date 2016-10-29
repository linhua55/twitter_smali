package com.twitter.android.commerce.view;

import com.twitter.library.commerce.model.CreditCard;
import com.twitter.library.commerce.model.CreditCard.Type;

/* compiled from: Twttr */
class c extends CreditCard {
    final /* synthetic */ Type a;
    final /* synthetic */ String b;
    final /* synthetic */ CardSummaryActivity c;

    c(CardSummaryActivity cardSummaryActivity, Type type, String str) {
        this.c = cardSummaryActivity;
        this.a = type;
        this.b = str;
    }

    public Type a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }
}
