package com.twitter.android.commerce.view;

import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.util.g;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.navigation.w;
import com.twitter.model.core.Tweet;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.ui.widget.TypefacesTextView;

/* compiled from: Twttr */
public class OfferSinglePageNUXActivity extends TwitterFragmentActivity {
    private Tweet a;
    private String b;
    private TwitterButton c;

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        int[][] iArr = new int[][]{new int[]{2131952979, 2131362210, 2131362211}, new int[]{2131952980, 2131362213, 2131362214}, new int[]{2131952981, 2131362215, 2131362216}};
        for (int i = 0; i < iArr.length; i++) {
            SpannableString spannableString = new SpannableString(getString(iArr[i][1]));
            g.a(spannableString, getString(iArr[i][1]), getString(iArr[i][2]), new ForegroundColorSpan(getResources().getColor(2131886425)));
            g.a(spannableString, getString(iArr[i][1]), getString(iArr[i][2]), new StyleSpan(1));
            g.a(spannableString, getString(iArr[i][1]), getString(iArr[i][2]), new RelativeSizeSpan(1.3f));
            ((TypefacesTextView) findViewById(iArr[i][0])).setText(spannableString);
        }
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.a = (Tweet) extras.getParcelable("commerce_buynow_tweet");
            this.b = extras.getString("commerce_buynow_card_url");
        }
        c.a(this, this.a, "cl_offer::product_detail:offers_nux:open", this.b);
        this.c = (TwitterButton) findViewById(2131952982);
        this.c.setOnClickListener(new j(this));
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130969152);
        return tVar;
    }

    public boolean a(w wVar) {
        return true;
    }

    public void finish() {
        super.finish();
        overridePendingTransition(2131034171, 2131034172);
    }
}
