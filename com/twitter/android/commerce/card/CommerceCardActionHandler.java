package com.twitter.android.commerce.card;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import cmb;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.android.commerce.util.c;
import com.twitter.android.commerce.view.AuthenticatedWebViewActivity;
import com.twitter.android.commerce.view.OfferSummaryActivity;
import com.twitter.android.commerce.view.ProductSummaryActivity;
import com.twitter.android.revenue.card.j;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import java.io.Serializable;

/* compiled from: Twttr */
public class CommerceCardActionHandler {
    private final Context a;
    private final a b;
    private final f c;
    private final String d;

    /* compiled from: Twttr */
    public enum CommerceCardType {
        BUYNOW,
        OFFERS
    }

    public CommerceCardActionHandler(Context context, a aVar, f fVar, String str) {
        this.a = context;
        this.b = aVar;
        this.c = fVar;
        this.d = str;
    }

    public void a(NativeCardUserAction nativeCardUserAction, cmb cmb, Activity activity, String str, CommerceCardType commerceCardType, Tweet tweet) {
        int i = commerceCardType == CommerceCardType.OFFERS ? 1 : 0;
        this.c.a(i != 0 ? PromotedEvent.al : PromotedEvent.af, nativeCardUserAction);
        this.c.a(str, this.d, nativeCardUserAction);
        Serializable a = c.a(cmb);
        Intent intent = new Intent(activity, i != 0 ? OfferSummaryActivity.class : ProductSummaryActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("commerce_buynow_tweet", tweet);
        bundle.putInt("commerce_product_values_type", 1);
        bundle.putSerializable("commerce_product_values", a);
        intent.putExtras(bundle);
        activity.startActivity(intent);
    }

    public void a(NativeCardUserAction nativeCardUserAction, cmb cmb) {
        this.c.a("open_product_ad", this.d, nativeCardUserAction);
        Object b = c.b(cmb);
        if (aj.b(b)) {
            this.c.c("open_link", this.d, nativeCardUserAction);
            this.c.a(PromotedEvent.n, nativeCardUserAction);
            this.b.a(b, this.c.b());
        }
    }

    public void a(NativeCardUserAction nativeCardUserAction, String str, String str2, Activity activity, long j, String str3) {
        this.c.b(str, this.d, nativeCardUserAction);
        if (aj.b(str)) {
            activity.startActivity(AuthenticatedWebViewActivity.a(activity, str, str2, j, str3));
        }
    }

    public static CommerceCardActionHandler a(j jVar) {
        return new CommerceCardActionHandler(jVar.g(), jVar.i(), jVar.h(), jVar.m());
    }
}
