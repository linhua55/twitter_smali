package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import defpackage.boh;

/* compiled from: Twttr */
class oj implements OnClickListener {
    final /* synthetic */ SearchActivity a;

    oj(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b(new boh(this.a, this.a.ab(), 2451739231L, null), mx.AppCompatTheme_checkboxStyle);
    }
}
