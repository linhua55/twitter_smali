package com.twitter.android.nativecards;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class k implements OnClickListener {
    final /* synthetic */ CardPreviewView a;

    k(CardPreviewView cardPreviewView) {
        this.a = cardPreviewView;
    }

    public void onClick(View view) {
        if (CardPreviewView.d(this.a) != null) {
            CardPreviewView.d(this.a).a();
        }
    }
}
