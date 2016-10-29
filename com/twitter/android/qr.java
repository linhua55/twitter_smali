package com.twitter.android;

import android.view.View;
import com.twitter.android.widget.eu;

/* compiled from: Twttr */
class qr implements eu {
    final /* synthetic */ qo a;

    qr(qo qoVar) {
        this.a = qoVar;
    }

    public void a(View view) {
        qu quVar = (qu) view.getTag();
        qt qtVar = quVar.c;
        if (qtVar != null) {
            this.a.a(quVar.d, qtVar.c.isChecked());
        }
    }
}
