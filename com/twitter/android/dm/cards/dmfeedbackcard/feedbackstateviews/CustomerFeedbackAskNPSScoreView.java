package com.twitter.android.dm.cards.dmfeedbackcard.feedbackstateviews;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.twitter.android.dm.cards.dmfeedbackcard.FeedbackScoreButton;
import com.twitter.android.dm.cards.dmfeedbackcard.c;

/* compiled from: Twttr */
public class CustomerFeedbackAskNPSScoreView extends BaseCustomerFeedbackView implements OnClickListener {
    private static final int[] e;
    private final View[] f;

    static {
        e = new int[]{2131952968, 2131952974, 2131952969, 2131952975, 2131952970, 2131952976, 2131952971, 2131952977, 2131952972, 2131952978, 2131952973};
    }

    public CustomerFeedbackAskNPSScoreView(Context context, c cVar, b bVar) {
        super(context, cVar, bVar, "score_selection");
        boolean a = a(context);
        int i = a ? 2130969150 : 2130969149;
        a("impression");
        inflate(context, i, this);
        TextView textView = (TextView) findViewById(2131952964);
        textView.setText(cVar.o());
        textView.setTypeface(a);
        this.f = new FeedbackScoreButton[e.length];
        for (i = 0; i < e.length; i++) {
            this.f[i] = findViewById(e[i]);
            this.f[i].setOnClickListener(this);
        }
        a();
        b();
        a(a);
    }

    private boolean a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Resources resources = getResources();
        return ((float) displayMetrics.widthPixels) > (resources.getDimension(2131689592) * 10.0f) + (11.0f * resources.getDimension(2131689591));
    }

    private void a(boolean z) {
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(2131952965);
        LayoutParams layoutParams = (LayoutParams) relativeLayout.getLayoutParams();
        float dimension = getResources().getDimension(2131689586);
        int i;
        if (z) {
            i = layoutParams.bottomMargin - ((int) dimension);
            if (i > 0) {
                layoutParams.bottomMargin = i;
            }
        } else {
            i = layoutParams.topMargin - ((int) dimension);
            if (i > 0) {
                layoutParams.topMargin = i;
            }
        }
        relativeLayout.setLayoutParams(layoutParams);
    }

    public void onClick(View view) {
        if (view instanceof FeedbackScoreButton) {
            a("submit");
            c();
            this.c.a(((FeedbackScoreButton) view).getButtonScore());
        }
    }

    private void c() {
        for (View enabled : this.f) {
            enabled.setEnabled(false);
        }
    }
}
