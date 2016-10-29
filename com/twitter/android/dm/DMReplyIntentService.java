package com.twitter.android.dm;

import android.app.IntentService;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.RemoteInput;
import com.twitter.library.api.dm.requests.q;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.util.aj;
import java.util.UUID;

/* compiled from: Twttr */
public class DMReplyIntentService extends IntentService {
    public DMReplyIntentService() {
        super("ReplyIntent");
    }

    protected void onHandleIntent(Intent intent) {
        Bundle resultsFromIntent = RemoteInput.getResultsFromIntent(intent);
        String stringExtra = intent.getStringExtra("extra_conversation_id");
        int intExtra = intent.getIntExtra("extra_notification_id", 0);
        if (a(resultsFromIntent, stringExtra)) {
            CharSequence charSequence = resultsFromIntent.getCharSequence("extra_voice_reply");
            if (aj.b(charSequence)) {
                a(stringExtra, charSequence.toString());
            }
            NotificationManager a = a();
            if (a != null) {
                a.cancel(intExtra);
            }
        }
    }

    private boolean a(Bundle bundle, String str) {
        return (bundle == null || str == null) ? false : true;
    }

    void a(String str, String str2) {
        az.a((Context) this).a(new q(this, bg.a().c(), str, UUID.randomUUID().toString(), str2, null, null, null, false), null);
    }

    NotificationManager a() {
        return (NotificationManager) getApplication().getSystemService("notification");
    }
}
