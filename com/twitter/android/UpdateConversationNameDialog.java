package com.twitter.android;

import android.app.Dialog;
import android.os.Bundle;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class UpdateConversationNameDialog extends PromptDialogFragment {
    private String a;
    private String c;

    public static UpdateConversationNameDialog a(String str, String str2) {
        UpdateConversationNameDialog updateConversationNameDialog = (UpdateConversationNameDialog) ((wq) ((wq) ((wq) new wq(0).d(2131363218)).f(2131362041)).g(2130968758)).i();
        updateConversationNameDialog.d();
        updateConversationNameDialog.b(str, str2);
        return updateConversationNameDialog;
    }

    private void d() {
        a(new wl(this));
        a(new wm(this));
    }

    public void b(String str, String str2) {
        this.a = b(str);
        this.c = str2;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (bundle != null) {
            this.a = bundle.getString("extra_old_name");
            this.c = bundle.getString("extra_conversation_id");
        }
        return super.onCreateDialog(bundle);
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("extra_old_name", this.a);
        bundle.putString("extra_conversation_id", this.c);
    }

    private String b(String str) {
        return aj.a(str) ? TtmlNode.ANONYMOUS_REGION_ID : str.trim();
    }
}
