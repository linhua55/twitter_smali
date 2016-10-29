package com.twitter.android;

import android.content.Context;
import android.widget.Toast;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class dt extends z {
    final /* synthetic */ Context a;
    final /* synthetic */ DeleteConversationDialog b;

    dt(DeleteConversationDialog deleteConversationDialog, Context context) {
        this.b = deleteConversationDialog;
        this.a = context;
    }

    public void a(x xVar) {
        if (!((aa) xVar.l().b()).b()) {
            Toast.makeText(this.a, 2131362324, 1).show();
        }
    }
}
