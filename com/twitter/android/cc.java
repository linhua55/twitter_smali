package com.twitter.android;

import android.widget.Toast;
import com.twitter.library.api.dm.requests.k;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.dms.ad;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
class cc extends z {
    final /* synthetic */ DMComposeFragment a;

    private cc(DMComposeFragment dMComposeFragment) {
        this.a = dMComposeFragment;
    }

    public void a(x xVar) {
        if (this.a.getActivity() != null) {
            k kVar = (k) xVar;
            if (!kVar.d.equals(DMComposeFragment.a(this.a))) {
                return;
            }
            if (((aa) kVar.l().b()).b()) {
                Map map = kVar.a.b;
                List<TwitterUser> list = kVar.a.c;
                if (list.isEmpty()) {
                    Toast.makeText(this.a.getActivity(), 2131362450, 0).show();
                }
                for (TwitterUser twitterUser : list) {
                    ad adVar = (ad) map.get(twitterUser.k.toLowerCase());
                    if (adVar != null) {
                        this.a.a(twitterUser, adVar);
                    }
                }
                return;
            }
            Toast.makeText(this.a.getActivity(), 2131362396, 0).show();
        }
    }
}
