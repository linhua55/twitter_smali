package com.twitter.android;

import android.content.ContextWrapper;
import android.widget.Toast;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class ai extends z {
    final /* synthetic */ ContextWrapper a;
    final /* synthetic */ BaseDMMessageDialog b;

    ai(BaseDMMessageDialog baseDMMessageDialog, ContextWrapper contextWrapper) {
        this.b = baseDMMessageDialog;
        this.a = contextWrapper;
    }

    public void a(x xVar) {
        if (!((aa) xVar.l().b()).b()) {
            Toast.makeText(this.a, 2131363070, 0).show();
        }
    }
}
