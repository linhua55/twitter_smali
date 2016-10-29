package com.twitter.android.widget;

import android.content.Intent;
import android.support.v4.app.FragmentManager;
import com.twitter.android.PhoneEntrySettingsActivity;
import com.twitter.android.client.c;
import com.twitter.android.dialog.TakeoverPromptDialogFragment;
import com.twitter.android.dialog.u;
import com.twitter.model.timeline.s;

/* compiled from: Twttr */
public class VerifyPhoneOverlayPrompt extends TakeoverPromptDialogFragment {
    public static void a(s sVar, FragmentManager fragmentManager) {
        if (fragmentManager != null) {
            ((u) ((u) new gd(0).b(sVar)).d(2131364136)).i().a(fragmentManager);
        }
    }

    protected void d() {
        super.d();
        a("verify_my_number", "click");
        n();
    }

    protected void k() {
        super.k();
        a("change_my_number", "click");
        c.a(getActivity()).b(m().c);
        o();
    }

    private void n() {
        startActivity(new Intent(getActivity(), PhoneEntrySettingsActivity.class).putExtra("account_name", l().e()).putExtra("should_not_prefill_phone", true).putExtra("umf_flow", true).putExtra("verify_phone", true));
    }

    private void o() {
        startActivity(new Intent(getActivity(), PhoneEntrySettingsActivity.class).putExtra("account_name", l().e()).putExtra("umf_flow", true));
    }

    private void a(String str, String str2) {
        a(new String[]{"home:promptbird:verify_phone", str, str2});
    }
}
