package com.twitter.android.client;

import android.util.SparseArray;
import com.twitter.android.client.notifications.StatusBarNotif;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
class af extends ad {
    final /* synthetic */ z a;

    private af(z zVar) {
        this.a = zVar;
    }

    public void a(Session session, boolean z) {
        long g = session.g();
        a(z.b(this.a), g);
        a(z.c(this.a), g);
        if (z.b(this.a).size() == 0) {
            z.e(this.a).b(z.d(this.a));
        }
    }

    private void a(SparseArray<StatusBarNotif> sparseArray, long j) {
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            int keyAt = sparseArray.keyAt(size);
            if (((StatusBarNotif) sparseArray.get(keyAt)).v() == j) {
                sparseArray.remove(keyAt);
            }
        }
    }
}
