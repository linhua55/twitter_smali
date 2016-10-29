package com.twitter.android.profiles;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.v4.content.ContextCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.format.DateUtils;
import android.text.method.LinkMovementMethod;
import android.view.ViewGroup.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.ProfileActivity;
import com.twitter.android.dm.d;
import com.twitter.android.dm.o;
import com.twitter.android.dm.r;
import com.twitter.android.nn;
import com.twitter.app.drafts.DraftsActivity;
import com.twitter.app.lists.c;
import com.twitter.library.client.AbsFragmentActivity;
import com.twitter.library.client.Session;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.scribe.ScribeAssociation;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.aq;
import com.twitter.model.businessprofiles.BusinessProfileState;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.model.timeline.aj;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.cew;
import defpackage.cni;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* compiled from: Twttr */
public class as {
    public static void a(Resources resources, UserImageView userImageView) {
        int dimensionPixelSize = resources.getDimensionPixelSize(2131690411);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(2131690409);
        int dimensionPixelSize3 = ((int) (((float) resources.getDisplayMetrics().widthPixels) / 3.0f)) + resources.getDimensionPixelSize(2131690370);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(dimensionPixelSize, dimensionPixelSize3, dimensionPixelSize2, 0);
        layoutParams.addRule(9);
        userImageView.setLayoutParams(layoutParams);
        a(userImageView, 2131690408, 2131690407, 2131886080);
    }

    public static void a(UserImageView userImageView, @DimenRes int i, @DimenRes int i2, @ColorRes int i3) {
        userImageView.setSize(userImageView.getResources().getDimensionPixelSize(i));
        userImageView.b(i2, i3);
    }

    public static String a(boolean z) {
        return z ? "me" : "profile";
    }

    public static void a(Context context, TwitterUser twitterUser) {
        Intent a;
        if (twitterUser != null) {
            a = r.a(context, ((o) new o().a(new long[]{twitterUser.c}).a(true)).d());
        } else {
            a = r.a(context, ((d) new d().a(true)).a());
        }
        context.startActivity(a);
    }

    public static void a(AbsFragmentActivity absFragmentActivity, long j, long j2) {
        absFragmentActivity.startActivityForResult(c.a(j).b(j2).a((Context) absFragmentActivity), 1);
    }

    public static void a(AbsFragmentActivity absFragmentActivity, TwitterUser twitterUser, int i) {
        if (twitterUser == null) {
            Toast.makeText(absFragmentActivity, 2131364072, 0).show();
        } else {
            absFragmentActivity.startActivityForResult(new nn().a(twitterUser.c).a(i).a((Context) absFragmentActivity), 5);
        }
    }

    public static void a(long j, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation, Activity activity) {
        Intent putExtra = new Intent(activity, ProfileActivity.class).putExtra("user_id", j).putExtra("pc", cni.a(tweet.f));
        if (twitterScribeAssociation != null) {
            putExtra.putExtra("association", ((TwitterScribeAssociation) new TwitterScribeAssociation(twitterScribeAssociation).a(1)).a(tweet.t));
        }
        activity.startActivity(putExtra);
    }

    public static boolean a(boolean z, TwitterUser twitterUser) {
        return z && twitterUser != null && twitterUser.m;
    }

    public static boolean a(TwitterUser twitterUser, int i, boolean z) {
        return a(i, z) && !a(twitterUser);
    }

    public static boolean b(TwitterUser twitterUser, int i, boolean z) {
        return a(i, z) && !a(twitterUser, i, false);
    }

    public static boolean a(int i, boolean z) {
        return (z || p.d(i) || !p.g(i) || a(false, i)) ? false : true;
    }

    public static boolean a(TwitterUser twitterUser) {
        return twitterUser.p && !twitterUser.m;
    }

    public static boolean a(Context context, TwitterUser twitterUser, int i, boolean z) {
        return (!PushRegistration.c(context) || z || twitterUser.p || !p.a(i) || p.c(i) || a(false, i)) ? false : true;
    }

    public static boolean a(ao aoVar, boolean z, boolean z2) {
        TwitterUser a = aoVar.a();
        if (a == null || !z2) {
            return false;
        }
        int d = aoVar.d();
        if (!com.twitter.config.d.a("device_follow_prompt_android_enabled") || a.m || p.e(d) || p.c(d) || p.a(d) != z || a.p || aoVar.b()) {
            return false;
        }
        return true;
    }

    public static boolean a(Context context, String str) {
        return PushRegistration.c(context) && PushRegistration.d(context, str);
    }

    public static String b(TwitterUser twitterUser) {
        return twitterUser != null ? twitterUser.h() : null;
    }

    public static int a(int i) {
        return p.c(i) ? 0 : 8;
    }

    public static void a(Session session, String str, long j, ao aoVar, cni cni, String str2, TwitterScribeAssociation twitterScribeAssociation) {
        a(session, str, j, aoVar, cni, str2, twitterScribeAssociation, null, null);
    }

    public static void a(Session session, String str, long j, ao aoVar, cni cni, String str2, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeItem twitterScribeItem, aj ajVar) {
        bbw bbw = (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(session.g()).a(j, cni, str2, ajVar).b(str)).a((ScribeAssociation) twitterScribeAssociation)).a((ScribeItem) twitterScribeItem);
        a((TwitterScribeLog) bbw, aoVar);
        bbu.a(bbw);
    }

    public static void a(long j, ao aoVar, String... strArr) {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(j).b(strArr);
        a((TwitterScribeLog) bbw, aoVar);
        bbu.a(bbw);
    }

    public static TwitterScribeLog a(TwitterScribeLog twitterScribeLog, ao aoVar) {
        if (aoVar != null) {
            a(twitterScribeLog, aoVar.a());
        }
        return twitterScribeLog;
    }

    public static TwitterScribeLog a(TwitterScribeLog twitterScribeLog, TwitterUser twitterUser) {
        if (twitterUser != null) {
            ((TwitterScribeLog) twitterScribeLog.j(String.valueOf(twitterUser.bf_()))).b(twitterUser.N == BusinessProfileState.ENABLED);
        }
        return twitterScribeLog;
    }

    public static String a(String str, String str2) {
        return str + ":" + str2;
    }

    public static void a(Context context, long j) {
        context.startActivity(c.a().b(j).a(context));
    }

    public static void a(Context context) {
        context.startActivity(DraftsActivity.a(context, true));
    }

    public static boolean a(boolean z, int i) {
        return !z && com.twitter.config.d.a("blocked_by_profile_bellbird_enabled") && p.e(i);
    }

    public static boolean a(boolean z, TwitterUser twitterUser, int i) {
        return (z || twitterUser == null || !twitterUser.m || p.a(i)) ? false : true;
    }

    public static boolean b(boolean z, TwitterUser twitterUser, int i) {
        if (a(z, i) || a(z, twitterUser, i) || z || !com.twitter.config.d.a("blocker_interstitial_bellbird_enabled") || !p.d(i)) {
            return false;
        }
        return true;
    }

    public static void a(Context context, TextView textView, String str) {
        textView.setText(aq.a(new Object[]{aq.a(context, 2131364320, 2131886265)}, context.getString(2131361970, new Object[]{str, str}), "{{}}"));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    public static boolean a(long j, String str, Session session) {
        CharSequence e = session.e();
        return (j != 0 && j == session.g()) || (com.twitter.util.aj.b(e) && e.equalsIgnoreCase(str));
    }

    public static String a(ExtendedProfile extendedProfile, Context context) {
        Resources resources = context.getResources();
        int i = extendedProfile.e;
        int i2 = extendedProfile.d;
        int i3 = extendedProfile.c;
        Calendar.getInstance().set(i, i2 - 1, i3);
        i2 = (i2 == 0 || i3 == 0) ? 0 : 1;
        if (i != 0) {
            if (i2 != 0) {
                return resources.getString(2131361960, new Object[]{SimpleDateFormat.getDateInstance(1).format(r6.getTime())});
            }
            return resources.getString(2131361961, new Object[]{Integer.valueOf(i)});
        } else if (i2 == 0) {
            return null;
        } else {
            return resources.getString(2131361959, new Object[]{DateUtils.formatDateTime(context, r6.getTimeInMillis(), 24)});
        }
    }

    public static boolean a(ExtendedProfile extendedProfile, Date date) {
        if (extendedProfile == null) {
            return false;
        }
        int i = extendedProfile.d;
        int i2 = extendedProfile.c;
        if (i == 0 || i2 == 0) {
            return false;
        }
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        if (instance.get(5) == i2 && instance.get(2) == i - 1) {
            return true;
        }
        return false;
    }

    public static int a(TwitterUser twitterUser, Context context) {
        return a(twitterUser, ContextCompat.getColor(context, 2131886425));
    }

    public static int a(TwitterUser twitterUser, int i) {
        if (twitterUser == null || twitterUser.j == 0) {
            return i;
        }
        return twitterUser.j;
    }

    public static String a(String str) {
        return com.twitter.util.aj.b((CharSequence) str) ? cew.b.matcher(str).replaceAll(" ") : BuildConfig.VERSION_NAME;
    }
}
