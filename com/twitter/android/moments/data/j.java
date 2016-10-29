package com.twitter.android.moments.data;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.moments.ab;

/* compiled from: Twttr */
class j implements OnClickListener {
    final /* synthetic */ ab a;
    final /* synthetic */ h b;

    j(h hVar, ab abVar) {
        this.b = hVar;
        this.a = abVar;
    }

    public void onClick(View view) {
        boolean z = !this.a.k;
        this.b.a.a(z);
        if (z) {
            this.b.b.a(this.a.b);
            this.b.c.a(this.a.b);
        } else {
            this.b.b.b(this.a.b);
            this.b.c.b(this.a.b);
        }
        if (this.b.d != null) {
            this.b.d.a(this.a.b, z);
        }
    }
}
