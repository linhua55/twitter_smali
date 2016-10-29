package com.twitter.android.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.zs;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public class SmsReceiver extends BroadcastReceiver {
    static final Pattern a;
    static final Pattern b;

    static {
        a = Pattern.compile("\\b(\\d{6})\\b");
        b = Pattern.compile("\\b(\\w{8})\\b");
    }

    public void onReceive(Context context, Intent intent) {
        if (bm.a(context).c()) {
            Bundle extras = intent.getExtras();
            if (extras == null) {
                return;
            }
            if (extras.getBoolean("isTimeOut", false)) {
                bm.a(context).d();
            } else if (extras.containsKey("pdus")) {
                Object[] objArr = (Object[]) extras.get("pdus");
                if (objArr != null) {
                    for (Object obj : objArr) {
                        a(context, SmsMessage.createFromPdu((byte[]) obj));
                    }
                }
            } else {
                bbn.a(new IllegalStateException("SmsReceiver got an invalid event."));
            }
        }
    }

    void a(Context context, SmsMessage smsMessage) {
        if (smsMessage != null) {
            String messageBody;
            try {
                messageBody = smsMessage.getMessageBody();
            } catch (Throwable e) {
                bbn.a(e);
                messageBody = null;
            }
            if (messageBody != null) {
                CharSequence charSequence;
                List a = a(messageBody);
                if (a.isEmpty()) {
                    charSequence = null;
                } else {
                    charSequence = (String) a.get(0);
                }
                if (aj.b(charSequence)) {
                    bbu.a((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b("app:sms_receiver:confirmation_sms::success")).c(2));
                    bm.a(context).b(charSequence);
                }
            }
        }
    }

    private List<String> a(String str) {
        n d = n.d();
        Matcher matcher = a.matcher(str);
        if (matcher.find()) {
            d.c(matcher.group(1));
        }
        if (zs.b()) {
            matcher = b.matcher(str);
            if (matcher.find()) {
                d.c(matcher.group(1));
            }
        }
        return (List) d.q();
    }
}
