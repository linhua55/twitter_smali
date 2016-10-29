package com.twitter.android.dm;

import android.widget.Toast;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class ai extends z {
    final /* synthetic */ ShareViaDMComposeFragment a;

    ai(ShareViaDMComposeFragment shareViaDMComposeFragment) {
        this.a = shareViaDMComposeFragment;
    }

    public void a(x xVar) {
        super.a(xVar);
        aa aaVar = (aa) xVar.l().b();
        if (!aaVar.b() && !an.a(aaVar)) {
            Toast.makeText(ShareViaDMComposeFragment.h(this.a), 2131362454, 0).show();
        }
    }
}
