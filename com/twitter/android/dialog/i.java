package com.twitter.android.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.List;

/* compiled from: Twttr */
final class i implements OnClickListener {
    final /* synthetic */ List a;

    i(List list) {
        this.a = list;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        ((j) this.a.get(i)).b.a();
    }
}
