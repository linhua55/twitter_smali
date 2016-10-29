package com.twitter.android;

import android.content.Context;
import android.widget.Toast;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class wn extends z {
    final /* synthetic */ Context a;
    final /* synthetic */ wm b;

    wn(wm wmVar, Context context) {
        this.b = wmVar;
        this.a = context;
    }

    public void a(x xVar) {
        aa aaVar = (aa) xVar.l().b();
        if (!aaVar.b()) {
            int d = aaVar.d();
            if (400 == d) {
                d = 2131362447;
            } else if (401 == d) {
                d = 2131362448;
            } else {
                d = 2131362446;
            }
            Toast.makeText(this.a, d, 0).show();
        }
    }
}
