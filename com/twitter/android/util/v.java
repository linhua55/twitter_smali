package com.twitter.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.support.annotation.UiThread;
import android.support.v7.recyclerview.BuildConfig;
import android.util.SparseArray;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.media.foundmedia.GifCategoriesActivity;
import com.twitter.android.media.foundmedia.GifGalleryActivity;
import com.twitter.android.mx;
import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.foundmedia.FoundMediaImageVariant;
import com.twitter.util.math.Size;
import defpackage.bbu;
import defpackage.bdj;
import sa;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class v {
    public static final int[] a;

    static {
        a = new int[]{2131886228, 2131886229, 2131886230, 2131886231, 2131886232, 2131886233, 2131886234};
    }

    public static boolean a(Context context) {
        if (VERSION.SDK_INT < 17) {
            return false;
        }
        String b = c.b("found_media_android_4051");
        boolean z = true;
        switch (b.hashCode()) {
            case -395080240:
                if (b.equals("control_2")) {
                    z = true;
                    break;
                }
                break;
            case 951543133:
                if (b.equals("control")) {
                    z = false;
                    break;
                }
                break;
            case 1156346727:
                if (b.equals("unassigned")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
                return false;
            case WireMessage.WIRE_CONTROL /*2*/:
                return d.a("found_media_enabled");
            default:
                return true;
        }
    }

    public static boolean a(ComposerType composerType) {
        if (composerType == ComposerType.DIRECT_MESSAGE) {
            return false;
        }
        String b = c.b("found_media_android_4051");
        boolean z = true;
        switch (b.hashCode()) {
            case -1726180446:
                if (b.equals("provider3_categories_preview")) {
                    z = false;
                    break;
                }
                break;
            case 1156346727:
                if (b.equals("unassigned")) {
                    z = true;
                    break;
                }
                break;
            case 1275667691:
                if (b.equals("provider3_trending_preview")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
                return true;
            case WireMessage.WIRE_CONTROL /*2*/:
                return d.a("found_media_image_preview_enabled");
            default:
                return false;
        }
    }

    @UiThread
    public static void a(Activity activity, int i, ComposerType composerType) {
        bdj a = bdj.a((Context) activity);
        if (bdj.a((Context) activity).b() && a.i()) {
            sa.a(activity, new w(a, bg.a().c().g(), activity, i, composerType)).show();
        } else {
            b(activity, i, composerType);
        }
    }

    static void b(Activity activity, int i, ComposerType composerType) {
        com.twitter.android.media.foundmedia.d.a.a();
        if (a()) {
            a(activity, activity.getResources().getString(2131362736), 2, "trending", i, composerType);
            return;
        }
        c(activity, i, composerType);
    }

    @UiThread
    public static void a(ComposerType composerType, Intent intent) {
        long g = bg.a().c().g();
        com.twitter.android.media.foundmedia.d.a.a(g);
        a(g, composerType, intent);
    }

    public static boolean a() {
        String b = c.b("found_media_android_4051");
        boolean z = true;
        switch (b.hashCode()) {
            case 1156346727:
                if (b.equals("unassigned")) {
                    z = true;
                    break;
                }
                break;
            case 1275667691:
                if (b.equals("provider3_trending_preview")) {
                    z = true;
                    break;
                }
                break;
            case 1292341066:
                if (b.equals("provider3_trending_nopreview")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case mx.View_android_theme /*0*/:
            case WireMessage.WIRE_CHAT /*1*/:
                return true;
            case WireMessage.WIRE_CONTROL /*2*/:
                return d.a("found_media_trending_enabled");
            default:
                return false;
        }
    }

    public static void c(Activity activity, int i, ComposerType composerType) {
        activity.startActivityForResult(new Intent(activity, GifCategoriesActivity.class).putExtra("composer_type", composerType), i);
    }

    public static void a(Activity activity, String str, int i, String str2, int i2, ComposerType composerType) {
        activity.startActivityForResult(GifGalleryActivity.a(activity, str, i, str2, composerType), i2);
    }

    public static Intent a(DraftAttachment draftAttachment, String str) {
        return new Intent().putExtra("media", draftAttachment).putExtra("scribe_select_action", str);
    }

    public static DraftAttachment a(Intent intent) {
        return (DraftAttachment) intent.getParcelableExtra("media");
    }

    public static String b() {
        String b = c.b("found_media_android_4051");
        Object obj = -1;
        switch (b.hashCode()) {
            case -1779517693:
                if (b.equals("provider1_categories_nopreview")) {
                    obj = null;
                    break;
                }
                break;
            case -1726180446:
                if (b.equals("provider3_categories_preview")) {
                    obj = 3;
                    break;
                }
                break;
            case -1560662975:
                if (b.equals("provider3_categories_nopreview")) {
                    obj = 2;
                    break;
                }
                break;
            case 477393314:
                if (b.equals("provider2_categories_nopreview")) {
                    obj = 1;
                    break;
                }
                break;
            case 1275667691:
                if (b.equals("provider3_trending_preview")) {
                    obj = 5;
                    break;
                }
                break;
            case 1292341066:
                if (b.equals("provider3_trending_nopreview")) {
                    obj = 4;
                    break;
                }
                break;
        }
        switch (obj) {
            case mx.View_android_theme /*0*/:
                return "provider1";
            case WireMessage.WIRE_CHAT /*1*/:
                return "provider2";
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
                return "provider3";
            default:
                return d.b("found_media_provider");
        }
    }

    private static void a(long j, ComposerType composerType, Intent intent) {
        String str = composerType.scribeName;
        String str2 = a() ? "trend" : "category";
        String stringExtra = (intent == null || !intent.hasExtra("media")) ? "cancel" : intent.getStringExtra("scribe_select_action");
        bbu.a(new TwitterScribeLog(j).b(BuildConfig.VERSION_NAME, str, "found_media", str2, stringExtra));
    }

    public static boolean c() {
        return d.a("found_media_result_cache_enabled");
    }

    public static String a(SparseArray<FoundMediaImageVariant> sparseArray, Size size, boolean z) {
        int size2 = sparseArray.size();
        String str = BuildConfig.VERSION_NAME;
        for (int i = 0; i < size2; i++) {
            FoundMediaImageVariant foundMediaImageVariant = (FoundMediaImageVariant) sparseArray.valueAt(i);
            str = (z || foundMediaImageVariant.e == null) ? foundMediaImageVariant.b : foundMediaImageVariant.e;
            if (foundMediaImageVariant.c.b(size)) {
                break;
            }
        }
        return str;
    }
}
