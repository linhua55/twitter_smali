package com.twitter.android;

import android.app.Dialog;
import android.os.Bundle;
import android.widget.EditText;
import com.twitter.app.common.base.k;

/* compiled from: Twttr */
class wl implements k {
    final /* synthetic */ UpdateConversationNameDialog a;

    wl(UpdateConversationNameDialog updateConversationNameDialog) {
        this.a = updateConversationNameDialog;
    }

    public void a(Dialog dialog, int i, Bundle bundle) {
        EditText editText = (EditText) dialog.findViewById(2131952330);
        editText.setText(this.a.a);
        editText.selectAll();
        editText.requestFocus();
    }
}
