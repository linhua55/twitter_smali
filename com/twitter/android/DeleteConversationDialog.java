package com.twitter.android;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import bbu;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.library.api.dm.requests.m;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class DeleteConversationDialog extends PromptDialogFragment {
    private String a;
    private String c;
    private boolean d;

    public static DeleteConversationDialog a(int i, boolean z, String str, String str2) {
        DeleteConversationDialog d = d(i);
        d.a(str, str2, z);
        return d;
    }

    private void a(String str, String str2, boolean z) {
        this.a = e.a(str);
        this.c = str2;
        this.d = z;
    }

    private static DeleteConversationDialog d(int i) {
        return (DeleteConversationDialog) ((dw) ((dw) ((dw) ((dw) new dw(i).a(2131363075)).b(2131363079)).d(2131363078)).f(2131362041)).i();
    }

    public static boolean a(int i) {
        return i == -1;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (a(i)) {
            Context context = getContext();
            Session c = bg.a().c();
            az.a(context).a(new m(context, c, this.a, false), new dt(this, context));
            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(c.g());
            String[] strArr = new String[5];
            strArr[0] = "messages";
            strArr[1] = this.c;
            strArr[2] = null;
            strArr[3] = "thread";
            strArr[4] = this.d ? "leave_group" : "delete_thread";
            bbu.a(twitterScribeLog.b(strArr));
        }
        super.onClick(dialogInterface, i);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (bundle != null) {
            this.a = bundle.getString("conversation_id");
            this.c = bundle.getString("scribe_section");
            this.d = bundle.getBoolean("is_group");
        }
        return super.onCreateDialog(bundle);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("conversation_id", this.a);
        bundle.putString("scribe_section", this.c);
        bundle.putBoolean("is_group", this.d);
    }
}
