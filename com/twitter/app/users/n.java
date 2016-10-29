package com.twitter.app.users;

import android.content.BroadcastReceiver;

/* compiled from: Twttr */
class n extends BroadcastReceiver {
    final /* synthetic */ FollowActivity b;

    n(FollowActivity followActivity) {
        this.b = followActivity;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onReceive(android.content.Context r6, android.content.Intent r7) {
        /*
        r5 = this;
        r1 = 0;
        r2 = -1;
        r0 = r7.getAction();
        r3 = r0.hashCode();
        switch(r3) {
            case 180360391: goto L_0x001d;
            case 338932095: goto L_0x0012;
            default: goto L_0x000d;
        };
    L_0x000d:
        r0 = r2;
    L_0x000e:
        switch(r0) {
            case 0: goto L_0x0028;
            case 1: goto L_0x0030;
            default: goto L_0x0011;
        };
    L_0x0011:
        return;
    L_0x0012:
        r3 = "registration_success_broadcast";
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x000d;
    L_0x001b:
        r0 = r1;
        goto L_0x000e;
    L_0x001d:
        r3 = "upload_success_broadcast";
        r0 = r0.equals(r3);
        if (r0 == 0) goto L_0x000d;
    L_0x0026:
        r0 = 1;
        goto L_0x000e;
    L_0x0028:
        r0 = r5.b;
        r0 = r0.a;
        r0.T();
        goto L_0x0011;
    L_0x0030:
        r0 = r5.b;
        r0 = r0.M();
        r0.b(r1);
        r0 = r5.b;
        r0 = r0.a;
        r0 = r0.ad();
        if (r0 == 0) goto L_0x0011;
    L_0x0043:
        r0 = r5.b;
        r3 = "page";
        r3 = r7.getIntExtra(r3, r2);
        r4 = "pages";
        r2 = r7.getIntExtra(r4, r2);
        r0.a(r3, r2);
        r0 = r5.b;
        r0 = r0.a;
        r2 = "lookup_complete";
        r1 = r7.getBooleanExtra(r2, r1);
        r0.b(r1);
        goto L_0x0011;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.app.users.n.onReceive(android.content.Context, android.content.Intent):void");
    }
}
