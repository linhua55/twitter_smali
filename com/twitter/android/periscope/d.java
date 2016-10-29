package com.twitter.android.periscope;

import android.os.Handler;
import android.support.annotation.VisibleForTesting;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.client.az;
import dbx;
import de.greenrobot.event.c;
import java.util.List;
import tv.periscope.android.api.ApiEventHandler;
import tv.periscope.android.event.ApiEvent;
import tv.periscope.android.event.RetryEvent;
import tv.periscope.model.p;

@VisibleForTesting
/* compiled from: Twttr */
class d implements ApiEventHandler {
    private final Handler a;
    private final az b;
    private final dbx c;
    private final c d;

    d(Handler handler, az azVar, dbx dbx, c cVar) {
        this.a = handler;
        this.b = azVar;
        this.c = dbx;
        this.d = cVar;
    }

    public void onEventMainThread(ApiEvent apiEvent) {
        a(apiEvent);
    }

    public void onEventMainThread(RetryEvent retryEvent) {
        this.a.postDelayed(new e(this, retryEvent), retryEvent.a.currentBackoff());
    }

    private void a(ApiEvent apiEvent) {
        switch (b.a[apiEvent.a.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (apiEvent.a()) {
                    List<p> list = (List) apiEvent.d;
                    if (list != null) {
                        for (p pVar : list) {
                            this.c.a(pVar.c(), pVar);
                        }
                        break;
                    }
                }
                break;
        }
        this.d.c(apiEvent);
    }
}
