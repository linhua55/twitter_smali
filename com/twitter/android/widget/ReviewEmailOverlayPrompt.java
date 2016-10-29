package com.twitter.android.widget;

import android.content.Intent;
import android.support.v4.app.FragmentManager;
import com.twitter.android.AddUpdateEmailActivity;
import com.twitter.android.client.c;
import com.twitter.android.dialog.TakeoverPromptDialogFragment;
import com.twitter.android.dialog.u;
import com.twitter.model.timeline.s;

/* compiled from: Twttr */
public class ReviewEmailOverlayPrompt extends TakeoverPromptDialogFragment {
    public static void a(s sVar, FragmentManager fragmentManager) {
        if (fragmentManager != null) {
            ((u) ((u) new ei(0).b(sVar)).d(2131363519)).i().a(fragmentManager);
        }
    }

    protected void d() {
        super.d();
        a("confirm_my_email", "click");
        dismiss();
    }

    protected void k() {
        super.k();
        a("change_my_email", "click");
        c.a(getActivity()).b(m().c);
        n();
    }

    private void n() {
        startActivity(new Intent(getActivity(), AddUpdateEmailActivity.class).putExtra("umf_update_email", true).putExtra("current_email", m().x));
    }

    private void a(String str, String str2) {
        a(new String[]{"home:promptbird:review_email", str, str2});
    }
}
