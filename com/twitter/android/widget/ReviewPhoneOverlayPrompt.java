package com.twitter.android.widget;

import android.support.v4.app.FragmentManager;
import com.twitter.android.client.c;
import com.twitter.android.dialog.TakeoverPromptDialogFragment;
import com.twitter.android.dialog.u;
import com.twitter.android.util.bf;
import com.twitter.model.timeline.s;

/* compiled from: Twttr */
public class ReviewPhoneOverlayPrompt extends TakeoverPromptDialogFragment {
    public static void a(s sVar, FragmentManager fragmentManager) {
        if (fragmentManager != null) {
            ((u) ((u) new ek(0).b(sVar)).d(2131363520)).i().a(fragmentManager);
        }
    }

    protected void d() {
        super.d();
        a("confirm_my_number", "click");
    }

    protected void k() {
        super.k();
        a("change_my_number", "click");
        c.a(getActivity()).b(m().c);
        bf.a(getActivity(), l().e(), m().z);
    }

    private void a(String str, String str2) {
        a(new String[]{"home:promptbird:review_phone", str, str2});
    }
}
