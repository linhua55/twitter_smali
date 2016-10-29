package com.twitter.android.client.notifications;

import bbl;
import com.twitter.library.platform.notifications.i;

/* compiled from: Twttr */
class ad extends bbl {
    ad(long j, com.twitter.library.platform.notifications.ad adVar) {
        super(j);
        a("StatusBarNotifErrorLog.notification_id", Integer.valueOf(adVar.r));
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < adVar.v.size()) {
            stringBuilder.append(i == 0 ? TtmlNode.ANONYMOUS_REGION_ID : ",").append(((i) adVar.v.get(i)).d);
            i++;
        }
        a("StatusBarNotifErrorLog.inbox_ids", stringBuilder.toString());
    }
}
