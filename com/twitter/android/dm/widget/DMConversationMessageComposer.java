package com.twitter.android.dm.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import big;
import com.twitter.android.nativecards.CardPreviewView;
import com.twitter.android.nativecards.e;
import com.twitter.android.nativecards.g;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class DMConversationMessageComposer extends DMMessageComposer {
    public DMConversationMessageComposer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DMConversationMessageComposer(Context context, AttributeSet attributeSet, int i) {
        e eVar;
        super(context, attributeSet, i);
        if (big.k()) {
            CardPreviewView cardPreviewView = (CardPreviewView) findViewById(2131952058);
            e a = g.a().a((Activity) getContext(), cardPreviewView, null);
            cardPreviewView.setController(a);
            a.a(new b());
            eVar = a;
        } else {
            eVar = null;
        }
        this.a.setHintText(getResources().getString(2131363375));
        this.a.setTextWatcher(new a(this, eVar));
    }

    public void a(String str, boolean z) {
        if (aj.b(str)) {
            this.a.a(str, null);
        }
        this.a.a(z);
        m();
    }

    void m() {
        boolean n = this.a.n();
        this.b.setEnabled(this.a.n());
        if (n) {
            this.b.setVisibility(0);
            this.c.setVisibility(8);
            return;
        }
        this.b.setVisibility(8);
        this.c.setVisibility(0);
    }
}
