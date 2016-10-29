package com.twitter.android.people.adapters.viewbinders;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.people.adapters.u;
import com.twitter.model.people.aj;

/* compiled from: Twttr */
class ad implements OnClickListener {
    final /* synthetic */ u a;
    final /* synthetic */ aj b;
    final /* synthetic */ Context c;
    final /* synthetic */ long d;
    final /* synthetic */ ac e;

    ad(ac acVar, u uVar, aj ajVar, Context context, long j) {
        this.e = acVar;
        this.a = uVar;
        this.b = ajVar;
        this.c = context;
        this.d = j;
    }

    public void onClick(View view) {
        this.e.e.b(this.a);
        if ("twitter://people_address_book".equals(this.b.d)) {
            Activity activity = (Activity) this.e.d.get();
            if (activity != null) {
                this.e.c.h().c(activity);
                return;
            }
            return;
        }
        OpenUriHelper.a(this.c, null, this.b.d, this.d, null, null, null, true);
    }
}
