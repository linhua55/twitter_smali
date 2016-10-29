package com.twitter.android.events.sports.cricket;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.NotificationCompat.BigTextStyle;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.SearchActivity;
import com.twitter.android.mx;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class EventAlarmBroadcastReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (intent != null && !aj.a(intent.getStringExtra("key_event_alarm_type"))) {
            String stringExtra = intent.getStringExtra("key_event_alarm_type");
            Object obj = -1;
            switch (stringExtra.hashCode()) {
                case -988769506:
                    if (stringExtra.equals("event_alarm_cricket")) {
                        obj = null;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case mx.View_android_theme /*0*/:
                    if (aj.b(intent.getStringExtra("query"))) {
                        a(intent, context);
                    }
                default:
            }
        }
    }

    private void a(Intent intent, Context context) {
        CharSequence string;
        Builder builder = new Builder(context);
        Intent intent2 = new Intent(intent);
        intent2.setClass(context, SearchActivity.class);
        PendingIntent activity = PendingIntent.getActivity(context, 320, intent2, 134217728);
        if (intent2.getStringExtra("query").replace("#", BuildConfig.VERSION_NAME).split("v").length == 2) {
            string = context.getResources().getString(2131363465, new Object[]{r0[0], r0[1]});
        } else {
            string = context.getResources().getString(2131363466);
        }
        ((NotificationManager) context.getSystemService("notification")).notify(2000, builder.setAutoCancel(true).setSmallIcon(2130839920).setTicker(string).setContentTitle(string).setContentText(context.getResources().getString(2131363463)).setStyle(new BigTextStyle().bigText(context.getResources().getString(2131363462))).addAction(0, context.getResources().getString(2131363461), activity).setCategory(NotificationCompatApi21.CATEGORY_RECOMMENDATION).setDefaults(-1).setPriority(1).setContentIntent(activity).setColor(context.getResources().getColor(2131886425)).build());
    }
}
