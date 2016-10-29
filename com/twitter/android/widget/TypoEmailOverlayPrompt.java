package com.twitter.android.widget;

import android.content.Intent;
import android.support.v4.app.FragmentManager;
import com.twitter.android.AddUpdateEmailActivity;
import com.twitter.android.dialog.TakeoverPromptDialogFragment;
import com.twitter.android.dialog.u;
import com.twitter.model.timeline.s;

/* compiled from: Twttr */
public class TypoEmailOverlayPrompt extends TakeoverPromptDialogFragment {
    private String c;
    private String d;

    public static void a(s sVar, FragmentManager fragmentManager) {
        if (fragmentManager != null) {
            ((u) new ga(0).b(sVar)).i().a(fragmentManager);
        }
    }

    protected void b() {
        super.b();
        this.c = m().x;
        this.d = m().y;
    }

    protected void d() {
        super.d();
        b("typo_email", "click");
        a(this.c, this.d);
    }

    private void a(String str, String str2) {
        startActivity(new Intent(getActivity(), AddUpdateEmailActivity.class).putExtra("umf_update_email", true).putExtra("current_email", str).putExtra("suggested_email", str2));
    }

    private void b(String str, String str2) {
        a(new String[]{"home:promptbird:typo_email", str, str2});
    }
}
