package com.twitter.android.revenue;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class z implements OnClickListener {
    final /* synthetic */ Builder a;
    final /* synthetic */ RevenueInjectTweetDebugDialogPreference b;

    z(RevenueInjectTweetDebugDialogPreference revenueInjectTweetDebugDialogPreference, Builder builder) {
        this.b = revenueInjectTweetDebugDialogPreference;
        this.a = builder;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == 2) {
            new ab(this.a.getContext(), new aa(this), "MAP Carousel Injected!").execute(new String[]{(String) this.b.b.get(1)});
            return;
        }
        new ad(null).execute(new String[]{(String) this.b.b.get(i)});
    }
}
