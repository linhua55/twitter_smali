package com.twitter.android;

import android.content.Intent;
import android.text.style.ClickableSpan;
import android.view.View;

/* compiled from: Twttr */
class oi extends ClickableSpan {
    final /* synthetic */ SearchActivity a;

    oi(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    public void onClick(View view) {
        this.a.startActivity(new Intent(this.a, ProfileActivity.class).putExtra("screen_name", "SpikingHawk"));
    }
}
