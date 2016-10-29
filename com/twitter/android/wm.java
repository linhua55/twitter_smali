package com.twitter.android;

import android.content.DialogInterface;
import android.support.v4.app.FragmentActivity;
import android.widget.EditText;
import bbu;
import com.twitter.app.common.base.m;
import com.twitter.library.api.dm.requests.y;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class wm implements m {
    final /* synthetic */ UpdateConversationNameDialog a;

    wm(UpdateConversationNameDialog updateConversationNameDialog) {
        this.a = updateConversationNameDialog;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i2 == -1) {
            String a = this.a.b(((EditText) this.a.getDialog().findViewById(2131952330)).getText().toString());
            if (!a.equals(this.a.a)) {
                FragmentActivity activity = this.a.getActivity();
                Session c = bg.a().c();
                bbu.a(new TwitterScribeLog(c.g()).b(new String[]{"messages:thread::edit_name:save"}));
                az.a(activity).a(new y(activity, c, this.a.c, a), new wn(this, activity));
            }
        }
    }
}
