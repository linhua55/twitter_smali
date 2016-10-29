package com.twitter.android.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.card.g;
import com.twitter.android.mx;
import com.twitter.config.AppConfig;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.platform.TwitterDataSyncService;
import com.twitter.library.platform.notifications.a;
import com.twitter.library.provider.ck;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.platform.m;
import com.twitter.platform.n;
import com.twitter.util.ab;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.bdj;
import defpackage.cni;
import java.util.HashMap;
import java.util.Map;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class AppBroadcastReceiver extends BroadcastReceiver {
    private static final Map<String, Integer> a;
    private boolean b;

    public AppBroadcastReceiver() {
        this.b = false;
    }

    static {
        a = new HashMap(8);
        a.put(TwitterDataSyncService.a, Integer.valueOf(1));
        a.put(WidgetControl.a, Integer.valueOf(2));
        a.put(WidgetControl.b, Integer.valueOf(3));
        a.put(WidgetControl.c, Integer.valueOf(4));
        a.put("android.net.conn.CONNECTIVITY_CHANGE", Integer.valueOf(5));
        a.put(ck.b, Integer.valueOf(6));
        a.put(g.a, Integer.valueOf(7));
    }

    public void onReceive(Context context, Intent intent) {
        Integer num = (Integer) a.get(intent.getAction());
        if (num != null && ab.a(intent)) {
            int intValue = num.intValue();
            if (intValue == 5) {
                if (AppConfig.m().b()) {
                    String g = TelephonyUtil.i().g();
                    if (g != null && g.replaceAll("\"", BuildConfig.VERSION_NAME).equals("Dodo")) {
                        q.a(context);
                    }
                }
                m.a().a(new n(context));
                bdj.a(context).e(TelephonyUtil.i().c(), this.b);
                this.b = TelephonyUtil.i().c();
            }
            boolean hasExtra = intent.hasExtra("logged_out_notification");
            if (!hasExtra && a().d()) {
                c a = c.a(context);
                switch (intValue) {
                    case WireMessage.WIRE_CHAT /*1*/:
                        a.a(intent);
                    case WireMessage.WIRE_CONTROL /*2*/:
                        cd.a(context).a(intent);
                    case WireMessage.WIRE_AUTH /*3*/:
                        cd.a(context).b(intent);
                    case ControlMessage.CONTROL_PRESENCE /*4*/:
                        int intExtra = intent.getIntExtra("widget_provider", 0);
                        if (intExtra > 0) {
                            Intent putExtra = new Intent(context, WidgetService.class).putExtra("widget_provider", intExtra);
                            if (bg.a().c().d()) {
                                cd.a(context).a();
                                putExtra.setAction("on_update");
                            } else {
                                putExtra.setAction("clear_logged_out");
                            }
                            context.startService(putExtra);
                        }
                    case mx.UserView_actionButtonPaddingBottom /*6*/:
                        a.a(intent.getStringArrayExtra("url"), new int[]{-3, -1});
                    case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) intent.getParcelableExtra("scribe_log");
                        TwitterScribeLog twitterScribeLog2 = (TwitterScribeLog) intent.getParcelableExtra("scribe_download_log");
                        a.a(context, intent.getStringExtra("app_id"), twitterScribeLog, twitterScribeLog2, (cni) ab.a(intent, "promoted_content", cni.a), intent.getLongExtra("timestamp", 0), intent.getLongExtra("timeframe", 1800000), intent.getLongExtra("polling_interval", 600000));
                    default:
                }
            } else if (hasExtra && intValue == 1) {
                z.a(context).b((a) com.twitter.util.serialization.m.a(intent.getByteArrayExtra("logged_out_notification"), a.a));
            }
        }
    }

    Session a() {
        return bg.a().c();
    }
}
