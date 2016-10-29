package com.twitter.app.main;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.twitter.android.client.bu;
import com.twitter.android.mx;
import com.twitter.config.d;
import com.twitter.library.api.search.c;
import com.twitter.library.api.search.q;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.m;
import defpackage.bne;
import defpackage.boe;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
final class j extends Handler {
    public static final int[] a;
    private final Context b;

    static {
        a = new int[]{2, 4};
    }

    j(Context context) {
        this.b = context;
    }

    public void handleMessage(Message message) {
        Context context = this.b;
        Session c = bg.a().c();
        az a = az.a(context);
        switch (message.what) {
            case WireMessage.WIRE_CHAT /*1*/:
                a.a(new boe(context, c, 0).a(400));
                new l(context, c.e(), "hometab").a().a("ft", m.b()).apply();
            case WireMessage.WIRE_CONTROL /*2*/:
                s sVar = (s) message.obj;
                int i = message.arg1;
                a(context, c, sVar, 1, bu.a(), i > -1 ? (long) i : bu.b());
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a.a(new c(context, c, ((long) d.a("saved_searches_ttl_hours", 1)) * 3600000), null);
            case mx.UserView_actionButtonPaddingRight /*5*/:
                x a2 = bne.a(context, c, false);
                if (a2 != null) {
                    a.a(a2);
                }
            default:
        }
    }

    public void a(long j, s sVar, int... iArr) {
        a(j, -1, sVar, iArr);
    }

    public void a(long j, int i, s sVar, int... iArr) {
        for (int i2 : iArr) {
            if (hasMessages(i2)) {
                removeMessages(i2);
            }
            sendMessageDelayed(obtainMessage(i2, i, -1, sVar), j);
        }
    }

    private void a(Context context, Session session, s sVar, int i, int i2, long j) {
        az.a(context).a(new q(context, session, i, i2, j), (z) sVar);
    }
}
