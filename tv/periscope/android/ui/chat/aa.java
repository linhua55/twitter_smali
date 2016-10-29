package tv.periscope.android.ui.chat;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import tv.periscope.model.chat.Message;

/* compiled from: Twttr */
class aa implements OnClickListener {
    final /* synthetic */ Message a;
    final /* synthetic */ z b;

    aa(z zVar, Message message) {
        this.b = zVar;
        this.a = message;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.d(this.a);
    }
}
