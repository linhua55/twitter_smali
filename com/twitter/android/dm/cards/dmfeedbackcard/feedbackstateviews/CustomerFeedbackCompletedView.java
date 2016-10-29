package com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.twitter.android.dm.cards.dmfeedbackcard.c;

/* compiled from: Twttr */
public class CustomerFeedbackCompletedView extends BaseCustomerFeedbackView {
    public CustomerFeedbackCompletedView(Context context, c cVar, b bVar) {
        super(context, cVar, bVar, "thank_you");
        a("impression");
        inflate(context, 2130968824, this);
        TextView textView = (TextView) findViewById(2131952473);
        textView.setText(getResources().getString(2131362680, new Object[]{cVar.j()}));
        textView.setTypeface(a);
        View findViewById = findViewById(2131952474);
        if (this.b.s()) {
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new c(this, context));
        } else {
            findViewById.setVisibility(8);
        }
        a();
    }
}
