package com.twitter.android.moments.ui.fullscreen;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.af;
import com.twitter.util.object.e;

/* compiled from: Twttr */
class cy implements OnClickListener {
    final /* synthetic */ ab a;
    final /* synthetic */ af b;
    final /* synthetic */ cx c;

    cy(cx cxVar, ab abVar, af afVar) {
        this.c = cxVar;
        this.a = abVar;
        this.b = afVar;
    }

    public void onClick(View view) {
        if (!this.c.e) {
            this.c.c();
        } else if (this.c.b()) {
            this.c.a(this.a, this.b, (String) e.a(this.c.i), this.c.g);
        } else {
            this.c.b(this.b);
        }
    }
}
