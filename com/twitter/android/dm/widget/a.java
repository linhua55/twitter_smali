package com.twitter.android.dm.widget;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class a extends e {
    final /* synthetic */ com.twitter.android.nativecards.e a;
    final /* synthetic */ DMConversationMessageComposer b;

    a(DMConversationMessageComposer dMConversationMessageComposer, com.twitter.android.nativecards.e eVar) {
        this.b = dMConversationMessageComposer;
        this.a = eVar;
    }

    public void afterTextChanged(Editable editable) {
        if (this.b.w()) {
            this.b.v();
        }
        if (this.a != null) {
            this.a.a(editable.toString(), this.b.g());
        }
    }
}
