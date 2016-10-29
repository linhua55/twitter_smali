package com.twitter.library.util;

import android.content.SyncResult;
import android.content.SyncStats;
import bgd;
import com.twitter.library.service.aa;
import defpackage.bfz;

/* compiled from: Twttr */
public class f implements o {
    private final SyncResult a;

    public f(SyncResult syncResult) {
        this.a = syncResult;
    }

    public void a(bfz bfz, aa aaVar) {
        a(aaVar);
    }

    public void a(bgd bgd, aa aaVar) {
        a(aaVar);
    }

    private void a(aa aaVar) {
        if (!aaVar.b()) {
            int i = aaVar.g().a;
            SyncStats syncStats;
            if (i == 401) {
                syncStats = this.a.stats;
                syncStats.numAuthExceptions++;
            } else if (i == 0) {
                syncStats = this.a.stats;
                syncStats.numParseExceptions++;
            }
        }
    }
}
