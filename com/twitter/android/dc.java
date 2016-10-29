package com.twitter.android;

import android.content.Intent;
import com.twitter.android.dm.cards.dmfeedbackcard.FeedbackEnterCommentActivity;
import com.twitter.library.customerservice.network.FeedbackRequestParams;
import com.twitter.library.customerservice.network.a;
import com.twitter.library.customerservice.network.c;
import wy;

/* compiled from: Twttr */
class dc extends wy {
    final /* synthetic */ DMConversationFragment a;

    private dc(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public void a(FeedbackRequestParams feedbackRequestParams, int i) {
        DMConversationFragment.c(this.a, new c(DMConversationFragment.H(this.a), DMConversationFragment.B(this.a), feedbackRequestParams, i), 16, 0);
    }

    public void a(FeedbackRequestParams feedbackRequestParams, String str, String str2, String str3) {
        this.a.startActivity(new Intent(DMConversationFragment.I(this.a), FeedbackEnterCommentActivity.class).putExtra("feedback_associated_user_name_key", str).putExtra("feedback_associated_score_description_key", str2).putExtra("feedback_request_params", feedbackRequestParams).putExtra("feedback_scribe_component", str3));
    }

    public void a(FeedbackRequestParams feedbackRequestParams) {
        DMConversationFragment.d(this.a, new a(DMConversationFragment.J(this.a), DMConversationFragment.B(this.a), feedbackRequestParams), 17, 0);
    }
}
