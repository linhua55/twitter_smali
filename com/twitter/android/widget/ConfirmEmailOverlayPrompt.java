package com.twitter.android.widget;

import android.content.Intent;
import android.support.v4.app.FragmentManager;
import android.widget.Toast;
import bex;
import com.twitter.android.AddUpdateEmailActivity;
import com.twitter.android.client.c;
import com.twitter.android.dialog.TakeoverPromptDialogFragment;
import com.twitter.android.dialog.u;
import com.twitter.library.client.az;
import com.twitter.model.timeline.s;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class ConfirmEmailOverlayPrompt extends TakeoverPromptDialogFragment {
    private String c;

    public static void a(s sVar, FragmentManager fragmentManager) {
        if (fragmentManager != null) {
            ((u) ((u) new ac(0).b(sVar)).d(2131362303)).i().a(fragmentManager);
        }
    }

    protected void b() {
        super.b();
        this.c = m().x;
    }

    protected void d() {
        super.d();
        a("confirm_my_email", "click");
        n();
        dismiss();
    }

    private void n() {
        if (aj.b(this.c)) {
            az.a(getContext()).a(bex.b(getActivity(), l(), null, null, null, this.c, false));
            Toast.makeText(getActivity(), 2131362304, 0).show();
        }
    }

    protected void k() {
        super.k();
        a("change_my_email", "click");
        o();
        c.a(getActivity()).b(m().c);
    }

    private void o() {
        startActivity(new Intent(getActivity(), AddUpdateEmailActivity.class).putExtra("umf_update_email", true).putExtra("current_email", this.c));
    }

    private void a(String str, String str2) {
        a(new String[]{"home:promptbird:confirm_email", str, str2});
    }
}
