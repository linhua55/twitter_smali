package com.twitter.android.card;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import byy;
import com.twitter.android.GalleryActivity;
import com.twitter.android.TweetActivity;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.composer.aw;
import com.twitter.android.profiles.as;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cr;
import com.twitter.model.core.cu;
import com.twitter.util.aj;
import com.twitter.util.c;
import com.twitter.util.x;
import defpackage.cgl;
import defpackage.cni;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: Twttr */
public class b implements a {
    private final WeakReference<Activity> a;
    private final Context b;
    private final long c;

    public b(Activity activity) {
        this.a = new WeakReference(activity);
        this.b = activity.getApplicationContext();
        this.c = bg.a().c().g();
    }

    public void a(String str) {
        Context context = (Activity) this.a.get();
        if (context != null) {
            context.startActivity(aw.a().a(str, null).b(bg.a().c().e()).a(context));
        }
    }

    public void a(String str, String str2) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            activity.startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), str2));
        }
    }

    public void a(String str, String str2, String str3, boolean z, boolean z2, Tweet tweet) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            OpenUriHelper.a().a(activity, new c(this, str2, activity, str3, z, z2, str, tweet));
        }
    }

    public void a(ArrayList<ImageSpec> arrayList, int i, TwitterScribeAssociation twitterScribeAssociation) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            activity.startActivityForResult(new Intent(activity, GalleryActivity.class).putExtra("association", twitterScribeAssociation).putExtra("li", arrayList).putExtra("list_starting_index", i), 9151);
        }
    }

    public void a(long j, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation) {
        Activity activity = (Activity) this.a.get();
        if (activity != null && tweet != null) {
            as.a(j, tweet, twitterScribeAssociation, activity);
        }
    }

    public boolean b(String str) {
        String a = x.a(this.b, str);
        if (this.b.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(a)), 0).isEmpty() || !e(a)) {
            return false;
        }
        return true;
    }

    public boolean a(byy byy, String str) {
        return b(byy.c() ? byy.b() : byy.a(), str);
    }

    public boolean b(String str, String str2) {
        Activity activity = (Activity) this.a.get();
        if (activity == null) {
            return false;
        }
        if (c(str, str2) && e(str)) {
            return true;
        }
        if (aj.b((CharSequence) str2)) {
            Intent launchIntentForPackage = this.b.getPackageManager().getLaunchIntentForPackage(str2);
            if (launchIntentForPackage != null) {
                activity.startActivity(launchIntentForPackage);
            }
        }
        return false;
    }

    public void a(Tweet tweet, TwitterScribeAssociation twitterScribeAssociation) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            activity.startActivity(new Intent(activity, TweetActivity.class).putExtra("tw", tweet).putExtra("association", twitterScribeAssociation));
        }
    }

    private boolean e(String str) {
        if (aj.a((CharSequence) str)) {
            return false;
        }
        Context context = (Activity) this.a.get();
        if (context == null) {
            return false;
        }
        OpenUriHelper.a(context, str, this.c);
        return true;
    }

    public void a(Session session, Tweet tweet, String str) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            OpenUriHelper.a().a(activity, new d(this, session, tweet, str, activity));
        }
    }

    public void a(TwitterScribeAssociation twitterScribeAssociation, Tweet tweet, String str) {
        Context context = (Activity) this.a.get();
        if (context != null) {
            long g = bg.a().c().g();
            if (OpenUriHelper.c()) {
                OpenUriHelper.a(context, tweet, (cr) ((cu) new cu().e(str)).q(), g, null, null, twitterScribeAssociation, null);
                return;
            }
            OpenUriHelper.a(context, tweet, str, g, null, null, twitterScribeAssociation);
        }
    }

    public void c(String str) {
        a(str, null);
    }

    public void a(String str, Tweet tweet) {
        Context context = (Activity) this.a.get();
        if (context != null) {
            OpenUriHelper.a(context, str, this.c, tweet);
        }
    }

    public boolean c(String str, String str2) {
        if (aj.a((CharSequence) str2)) {
            return false;
        }
        if (aj.b((CharSequence) str)) {
            if (this.b.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(str)), 0).isEmpty()) {
                return false;
            }
        }
        return c.a(this.b, str2);
    }

    public boolean d(String str) {
        if (aj.a((CharSequence) str)) {
            return false;
        }
        return c.a(this.b, str);
    }

    public void a(String str, long j, cgl cgl, cni cni) {
        Context context = (Activity) this.a.get();
        if (context != null && !aj.a((CharSequence) str) && cgl != null) {
            Session c = bg.a().c();
            j.b().a(j);
            context.startActivity(((aw) aw.a().a(str + "\n" + cgl.c(), str.length()).b(c.e()).c(j).a(cni).d(true)).a(cgl).a(context));
        }
    }

    public void a(Intent intent) {
        intent.addFlags(268435456);
        this.b.startActivity(intent);
    }
}
