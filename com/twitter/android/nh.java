package com.twitter.android;

import android.content.Context;
import android.widget.Toast;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class nh extends z {
    final /* synthetic */ Context a;
    final /* synthetic */ ReportConversationDialog b;

    nh(ReportConversationDialog reportConversationDialog, Context context) {
        this.b = reportConversationDialog;
        this.a = context;
    }

    public void a(x xVar) {
        if (xVar.U()) {
            Toast.makeText(this.a, this.b.d ? 2131363477 : 2131363478, 0).show();
        }
    }
}
