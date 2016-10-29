package com.twitter.android.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

/* compiled from: Twttr */
class ff implements OnClickListener {
    final /* synthetic */ TurnOffReadabilityFragment a;

    ff(TurnOffReadabilityFragment turnOffReadabilityFragment) {
        this.a = turnOffReadabilityFragment;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(TurnOffReadabilityFragment.a())));
        TurnOffReadabilityFragment.b().finish();
    }
}
