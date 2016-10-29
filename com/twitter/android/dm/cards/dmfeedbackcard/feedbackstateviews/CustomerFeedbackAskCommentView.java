package com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.twitter.android.dm.cards.dmfeedbackcard.c;

/* compiled from: Twttr */
public class CustomerFeedbackAskCommentView extends BaseCustomerFeedbackView implements OnClickListener {
    public CustomerFeedbackAskCommentView(Context context, c cVar, b bVar) {
        super(context, cVar, bVar, "comment_cta");
        a("impression");
        inflate(context, 2130968823, this);
        TextView textView = (TextView) findViewById(2131952472);
        textView.setText(getResources().getString(2131362676, new Object[]{cVar.j(), cVar.p()}));
        textView.setTypeface(a);
        findViewById(2131952449).setOnClickListener(this);
        a();
        b();
    }

    public void onClick(View view) {
        if (view.getId() == 2131952449) {
            a("submit");
            this.c.a(this.d);
        }
    }
}
