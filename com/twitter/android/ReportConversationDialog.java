package com.twitter.android;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import bbu;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.library.api.dm.requests.ReportConversationRequest;
import com.twitter.library.api.dm.requests.ReportConversationRequest.Type;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
public class ReportConversationDialog extends PromptDialogFragment {
    private String a;
    private String c;
    private boolean d;
    private ni e;

    public static ReportConversationDialog a(int i, boolean z, String str, String str2, ni niVar) {
        ReportConversationDialog reportConversationDialog = (ReportConversationDialog) ((nl) ((nl) new nl(i).a(2131363475)).c(2131427365)).i();
        reportConversationDialog.a(str, str2, z, niVar);
        return reportConversationDialog;
    }

    private void a(String str, String str2, boolean z, ni niVar) {
        this.a = str;
        this.c = str2;
        this.d = z;
        this.e = niVar;
    }

    private void a(Context context, Type type, Session session) {
        az.a(context).a(new ReportConversationRequest(context, session, this.a, type), new nh(this, context));
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        FragmentActivity activity = getActivity();
        Session c = bg.a().c();
        if (i == 0) {
            bbu.a(new TwitterScribeLog(c.g()).b(new String[]{"messages", this.c, "thread", "spam", "report_as_spam"}));
            a(activity, Type.SPAM, c);
            this.e.G_();
        } else if (i == 1) {
            bbu.a(new TwitterScribeLog(c.g()).b(new String[]{"messages", this.c, "thread", "abusive", "report_as_spam"}));
            a(activity, Type.ABUSE, c);
            this.e.H_();
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

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        Fragment targetFragment = getTargetFragment();
        if (this.e == null) {
            this.e = (ni) a(ni.class, new Object[]{targetFragment, activity});
        }
    }
}
