package com.twitter.media.util;

import android.media.MediaScannerConnection.MediaScannerConnectionClient;
import android.net.Uri;
import java.util.List;

/* compiled from: Twttr */
class m implements MediaScannerConnectionClient {
    final /* synthetic */ l a;

    m(l lVar) {
        this.a = lVar;
    }

    public void onMediaScannerConnected() {
        synchronized (this.a.b) {
            List list = this.a.b;
            o[] oVarArr = (o[]) list.toArray(new o[list.size()]);
            list.clear();
        }
        for (o oVar : oVarArr) {
            this.a.a.scanFile(oVar.a, oVar.b);
        }
    }

    public void onScanCompleted(String str, Uri uri) {
        synchronized (this.a.e) {
            p pVar = (p) this.a.e.remove(str);
        }
        if (pVar != null) {
            this.a.d.post(new n(this, pVar, str));
        }
    }
}
