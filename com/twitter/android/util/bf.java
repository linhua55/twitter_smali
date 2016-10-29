package com.twitter.android.util;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.twitter.android.BlockedAccountsActivity;
import com.twitter.android.MutedAccountsActivity;
import com.twitter.android.PhoneEntrySettingsActivity;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.m;
import com.twitter.app.users.q;
import com.twitter.config.d;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.p;
import rx.w;

/* compiled from: Twttr */
public class bf {
    public static boolean a(Integer num) {
        return p.c(num == null ? 0 : num.intValue());
    }

    public static boolean a(Tweet tweet) {
        return (tweet == null || !tweet.q() || tweet.t() || tweet.d) ? false : true;
    }

    public static boolean a(Context context, String str, int i, FragmentManager fragmentManager, Fragment fragment) {
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) ((ec) ((ec) ((ec) new ec(i).a(context.getString(2131364052, new Object[]{str}))).d(2131364053)).f(2131362041)).i();
        if (fragment != null) {
            promptDialogFragment.a(fragment);
        }
        promptDialogFragment.a(fragmentManager);
        return true;
    }

    public static boolean a(Context context, String str, int i, int i2, FragmentManager fragmentManager, Fragment fragment) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        int i3 = defaultSharedPreferences.getInt("mute_confirm_cnt", 0);
        if (i3 >= 3) {
            return false;
        }
        CharSequence string;
        defaultSharedPreferences.edit().putInt("mute_confirm_cnt", i3 + 1).apply();
        if (p.a(i)) {
            string = context.getString(2131363122, new Object[]{str});
        } else {
            Object string2 = context.getString(2131363123, new Object[]{str});
        }
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) ((ec) ((ec) ((ec) ((ec) new ec(i2).a(context.getString(2131363125, new Object[]{str}))).a(string)).d(2131363124)).f(2131362041)).i();
        if (fragment != null) {
            promptDialogFragment.a(fragment);
        }
        promptDialogFragment.a(fragmentManager);
        return true;
    }

    public static void a(Context context, String str, int i, FragmentManager fragmentManager) {
        a(context, str, i, fragmentManager, null);
    }

    public static void a(Context context, String str, int i, FragmentManager fragmentManager, m mVar) {
        PromptDialogFragment b = b(context.getResources(), str, i);
        if (mVar != null) {
            b.a(mVar);
        }
        b.a(fragmentManager);
    }

    public static w<Boolean> a(Resources resources, String str, int i, FragmentManager fragmentManager) {
        return bo.a(new bg(resources, str, i), fragmentManager);
    }

    private static PromptDialogFragment b(Resources resources, String str, int i) {
        return (PromptDialogFragment) ((ec) ((ec) ((ec) ((ec) new ec(i).a(resources.getString(2131364081, new Object[]{str}))).a(resources.getString(2131364083, new Object[]{str}))).d(2131361962)).f(2131362041)).i();
    }

    public static void b(Context context, String str, int i, FragmentManager fragmentManager) {
        b(context, str, i, fragmentManager, null);
    }

    public static void b(Context context, String str, int i, FragmentManager fragmentManager, m mVar) {
        PromptDialogFragment promptDialogFragment = (PromptDialogFragment) ((ec) ((ec) ((ec) ((ec) new ec(i).a(2131364129)).a(context.getString(2131364131, new Object[]{str}))).d(2131364205)).f(2131363158)).i();
        if (mVar != null) {
            promptDialogFragment.a(mVar);
        }
        promptDialogFragment.a(fragmentManager);
    }

    public static Intent a(Context context, long j) {
        return new Intent(context, BlockedAccountsActivity.class).putExtra("target_session_owner_id", j);
    }

    public static Intent b(Context context, long j) {
        if (d.a("automated_mute_enabled")) {
            return new Intent(context, MutedAccountsActivity.class).putExtra("target_session_owner_id", j);
        }
        return new q().a(26).c(j).a(j).b(false).c(true).a(true).a(context);
    }

    public static void a(Context context, String str, String str2) {
        context.startActivity(new Intent(context, PhoneEntrySettingsActivity.class).putExtra("account_name", str).putExtra("update_phone", true).putExtra("current_phone", str2));
    }
}
