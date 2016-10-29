package com.twitter.android.client;

import android.app.IntentService;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.mx;
import com.twitter.app.common.account.d;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.dd;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import defpackage.ccc;
import defpackage.cdg;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class WidgetService extends IntentService {
    private static final Map<String, Integer> a;

    static {
        a = (Map) r.d().b("open", Integer.valueOf(1)).b("close", Integer.valueOf(2)).b("refresh", Integer.valueOf(3)).b("clear_logged_out", Integer.valueOf(4)).b("on_update", Integer.valueOf(5)).b("on_delete", Integer.valueOf(6)).q();
    }

    public WidgetService() {
        super("WidgetService");
    }

    protected void onHandleIntent(Intent intent) {
        if (intent != null) {
            Integer num = (Integer) a.get(intent.getAction());
            Context applicationContext;
            WidgetControl a;
            int intExtra;
            int i;
            switch (num == null ? 0 : num.intValue()) {
                case WireMessage.WIRE_CHAT /*1*/:
                    applicationContext = getApplicationContext();
                    a = a(applicationContext, intent);
                    if (a != null) {
                        String str = a.d;
                        if (d.a().b() < 2) {
                            ar.a(applicationContext).b(BuildConfig.VERSION_NAME, str);
                        }
                        a.a();
                        a.d(2);
                        a(applicationContext, a, 0, 0);
                    }
                case WireMessage.WIRE_CONTROL /*2*/:
                    applicationContext = getApplicationContext();
                    a = a(applicationContext, intent);
                    if (a != null) {
                        ar.a(applicationContext).b(a.d, BuildConfig.VERSION_NAME);
                        intExtra = intent.getIntExtra("widget_state", 1);
                        a.a();
                        a.d(intExtra);
                    }
                case WireMessage.WIRE_AUTH /*3*/:
                    applicationContext = getApplicationContext();
                    a = a(applicationContext, intent);
                    if (a != null) {
                        a.a();
                        a(applicationContext, a, intent.getLongExtra("latest_time_tweets", 0), intent.getLongExtra("latest_time_mentions", 0));
                    }
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    Context applicationContext2 = getApplicationContext();
                    int intExtra2 = intent.getIntExtra("widget_provider", 2131230724);
                    if (intExtra2 == 2131230724) {
                        i = 2130969547;
                        intExtra = 2130969543;
                    } else {
                        i = 2130969549;
                        intExtra = 2130969544;
                    }
                    ce ceVar = new ce(BuildConfig.VERSION_NAME, intExtra2, i, intExtra);
                    ceVar.a(applicationContext2, ceVar.b(applicationContext2));
                    WidgetControl.a(applicationContext2, ceVar, 0, BuildConfig.VERSION_NAME, 0);
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    applicationContext = getApplicationContext();
                    i = intent.getIntExtra("widget_provider", 2131230724);
                    for (WidgetControl widgetControl : cd.a(applicationContext).b()) {
                        widgetControl.a();
                        widgetControl.c(i);
                    }
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    ar.a((Context) this).a(intent.getIntArrayExtra("widget_ids"));
                default:
            }
        }
    }

    private static WidgetControl a(Context context, Intent intent) {
        return cd.a(context).a(intent.getLongExtra("owner_id", 0));
    }

    private static void a(Context context, WidgetControl widgetControl, long j, long j2) {
        if (widgetControl.b()) {
            long j3 = widgetControl.e;
            widgetControl.a(0, j, a(context, j3, 0, j));
            widgetControl.a(5, j2, a(context, j3, 5, j2));
        }
    }

    private static List<Tweet> a(Context context, long j, int i, long j2) {
        Builder buildUpon;
        String str;
        String[] strArr;
        String str2;
        String valueOf = String.valueOf(j);
        if (i == 5) {
            buildUpon = ContentUris.withAppendedId(dd.e, j).buildUpon();
        } else {
            buildUpon = ContentUris.withAppendedId(Uri.parse(ck.d + "timeline_view" + "/home/#"), j).buildUpon();
        }
        buildUpon.appendQueryParameter("limit", Integer.toString(20)).appendQueryParameter("ownerId", valueOf);
        if (j2 > 0) {
            buildUpon.appendQueryParameter("newer", Long.toString(j2));
        }
        ContentResolver contentResolver = context.getContentResolver();
        if (i == 5) {
            str = "status_groups_type=?";
            strArr = new String[]{String.valueOf(i)};
            str2 = "status_groups_preview_draft_id DESC, status_groups_updated_at DESC, _id ASC";
        } else {
            str = "timeline_type=? AND timeline_data_type=?";
            strArr = new String[]{String.valueOf(0), String.valueOf(1)};
            str2 = "status_groups_preview_draft_id DESC, timeline_sort_index DESC, timeline_updated_at DESC, _id ASC";
        }
        Cursor query = contentResolver.query(buildUpon.build(), cdg.a, str, strArr, str2);
        List<Object> arrayList = new ArrayList();
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    do {
                        arrayList.add(ccc.a.a(query));
                    } while (query.moveToNext());
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        }
        n d = n.d();
        for (Object obj : arrayList) {
            if (obj.f == null) {
                d.c(obj);
            }
        }
        return (List) d.q();
    }
}
