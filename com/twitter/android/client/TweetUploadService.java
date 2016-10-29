package com.twitter.android.client;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.twitter.android.client.tweetuploadmanager.TweetUploadManager;
import com.twitter.android.client.tweetuploadmanager.b;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.util.collection.r;
import defpackage.bbn;
import java.util.Map;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class TweetUploadService extends Service {
    private static final Map<String, Integer> a;

    static {
        a = (Map) r.a(2).b("RESEND", Integer.valueOf(1)).b("ABORT", Integer.valueOf(2)).q();
    }

    public static Intent a(Context context, long j, long j2) {
        return b(context, j, j2).setAction("com.twitter.android.resend." + j).putExtra("action_type", "RESEND");
    }

    private static Intent b(Context context, long j, long j2) {
        return new Intent(context, TweetUploadService.class).putExtra("owner_id", j2).putExtra("status_id", j);
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        Integer num = (Integer) a.get(intent.getStringExtra("action_type"));
        if (num == null) {
            bbn.a(new IllegalStateException("PHOTO-818: " + intent.toUri(0)));
            stopSelf(i2);
            return 2;
        }
        long longExtra = intent.getLongExtra("owner_id", 0);
        long longExtra2 = intent.getLongExtra("status_id", 0);
        Context applicationContext = getApplicationContext();
        switch (num.intValue()) {
            case WireMessage.WIRE_CHAT /*1*/:
                Session b = bg.a().b(longExtra);
                if (b.d()) {
                    az.a(applicationContext).a(new b(applicationContext, b, longExtra2));
                    break;
                }
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                TweetUploadManager.a(applicationContext, longExtra2);
                break;
        }
        stopSelf(i2);
        return 3;
    }

    public IBinder onBind(Intent intent) {
        return null;
    }
}
