package com.twitter.android.vit;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.widget.ImageView.ScaleType;
import com.twitter.android.dialog.TakeoverDialogFragment;
import com.twitter.android.dialog.r;
import com.twitter.android.settings.NotificationsTimelineSettingsActivity;
import com.twitter.android.util.ak;
import com.twitter.config.d;
import com.twitter.library.client.l;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class VitNotificationsEducationOverlay extends TakeoverDialogFragment {
    public static void b(FragmentActivity fragmentActivity) {
        ((VitNotificationsEducationOverlay) ((r) ((r) ((r) ((r) ((r) new m(0).a(ScaleType.CENTER)).b(2131364175)).c(2131364177)).d(2131364176)).a(2130839182)).i()).a(fragmentActivity);
    }

    protected void b() {
        super.b();
        a("notifications::vit_edu_prompt", ":impression");
    }

    protected void d() {
        super.d();
        a();
        a("notifications::vit_edu_prompt", "button:click");
    }

    protected void k() {
        super.k();
        a();
        a("notifications::vit_edu_prompt", "settings:click");
        m();
    }

    protected void c() {
        super.c();
        a();
        a("notifications::vit_edu_prompt", ":dismiss");
    }

    public static boolean a(Context context, TwitterUser twitterUser) {
        return twitterUser != null && ak.a(twitterUser) && d.a("vit_notifications_redesign_education_prompt_enabled") && new l(context, twitterUser.k).getBoolean("vit_notifications_edu", true);
    }

    void a() {
        new l(getActivity(), l().e()).a().a("vit_notifications_edu", false).apply();
    }

    void m() {
        Context activity = getActivity();
        activity.startActivity(new Intent(activity, NotificationsTimelineSettingsActivity.class).putExtra("NotificationsTimelineSettingsActivity_account_name", l().e()));
    }
}
