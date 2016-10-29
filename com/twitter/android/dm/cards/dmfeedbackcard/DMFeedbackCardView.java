package com.twitter.android.dm.cards.dmfeedbackcard;

import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews.BaseCustomerFeedbackView;
import com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews.CustomerFeedbackAskCSATScoreView;
import com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews.CustomerFeedbackAskCommentView;
import com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews.CustomerFeedbackAskNPSScoreView;
import com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews.CustomerFeedbackCompletedView;
import com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews.b;
import com.twitter.library.customerservice.network.FeedbackRequestParams;
import com.twitter.util.h;

/* compiled from: Twttr */
public class DMFeedbackCardView extends FrameLayout implements b {
    private final Context a;
    private final c b;
    private final b c;

    public DMFeedbackCardView(Context context, c cVar, b bVar) {
        super(context);
        this.a = context;
        this.b = cVar;
        this.c = bVar;
        h.b(this.b.r());
        addView(getCurrentFeedbackStateView());
    }

    private BaseCustomerFeedbackView getCurrentFeedbackStateView() {
        switch (this.b.e()) {
            case Util.TYPE_DASH /*0*/:
                return new CustomerFeedbackAskNPSScoreView(this.a, this.b, this);
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return new CustomerFeedbackAskCSATScoreView(this.a, this.b, this);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return new CustomerFeedbackAskCommentView(this.a, this.b, this);
            case Util.TYPE_OTHER /*3*/:
                return new CustomerFeedbackCompletedView(this.a, this.b, this);
            default:
                throw new IllegalStateException("Unsupported feedback state reached by the model.");
        }
    }

    private FeedbackRequestParams getRequestParams() {
        return new FeedbackRequestParams(this.b.b(), this.b.a(), this.b.c(), this.b.d());
    }

    public void a(int i) {
        this.c.a(getRequestParams().a(i), i);
    }

    public void a(String str) {
        this.c.a(getRequestParams().a(this.b.h()), this.b.j(), this.b.p(), str);
    }

    public void a() {
        this.c.a(getRequestParams().e());
    }
}
