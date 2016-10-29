package com.twitter.android.vit;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.VitActivityFragment;

/* compiled from: Twttr */
class b implements OnClickListener {
    final /* synthetic */ boolean a;
    final /* synthetic */ a b;

    b(a aVar, boolean z) {
        this.b = aVar;
        this.a = z;
    }

    public void onClick(View view) {
        int i;
        VitActivityFragment a = this.b.b;
        if (this.a) {
            i = 2;
        } else {
            i = 0;
        }
        a.a(i, false);
    }
}
