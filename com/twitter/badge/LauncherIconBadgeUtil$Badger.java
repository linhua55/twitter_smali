package com.twitter.badge;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import cfb;
import com.twitter.android.lf;
import com.twitter.util.x;

/* compiled from: Twttr */
enum LauncherIconBadgeUtil$Badger {
    DEFAULT {
        boolean a(Context context) {
            return false;
        }

        void a(Context context, int i) {
            String c = LauncherIconBadgeUtil$Badger.c(context);
            if (c != null) {
                Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
                intent.putExtra("badge_count_package_name", context.getPackageName());
                intent.putExtra("badge_count_class_name", c);
                intent.putExtra("badge_count", i);
                context.sendBroadcast(intent);
            }
        }
    },
    SONY {
        boolean a(Context context) {
            return "com.sonyericsson.home".equals(b(context));
        }

        void a(Context context, int i) {
            boolean z = true;
            String c = LauncherIconBadgeUtil$Badger.c(context);
            if (c != null) {
                if (lf.a().a(context, new String[]{"com.sonyericsson.home.permission.BROADCAST_BADGE"})) {
                    Intent intent = new Intent("com.sonyericsson.home.action.UPDATE_BADGE");
                    intent.putExtra("com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME", context.getPackageName());
                    intent.putExtra("com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME", c);
                    intent.putExtra("com.sonyericsson.home.intent.extra.badge.MESSAGE", String.valueOf(i));
                    c = "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE";
                    if (i <= 0) {
                        z = false;
                    }
                    intent.putExtra(c, z);
                    context.sendBroadcast(intent);
                }
            }
        }
    },
    NOVA {
        void a(Context context, int i) {
            if (LauncherIconBadgeUtil$Badger.c(context) != null) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("tag", String.format("%s/%s", new Object[]{context.getPackageName(), r0}));
                    contentValues.put("count", Integer.valueOf(i));
                    context.getContentResolver().insert(Uri.parse("content://com.teslacoilsw.notifier/unread_count"), contentValues);
                } catch (IllegalArgumentException e) {
                } catch (Throwable e2) {
                    cfb.c("Badger.NOVA", "Error setting badge for Nova launcher", e2);
                }
            }
        }

        boolean a(Context context) {
            return "com.teslacoilsw.launcher".equals(b(context)) && x.c(context, "com.teslacoilsw.notifier");
        }
    };

    abstract void a(Context context, int i);

    abstract boolean a(Context context);

    protected String b(Context context) {
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"), 65536);
        if (resolveActivity == null) {
            return null;
        }
        ActivityInfo activityInfo = resolveActivity.activityInfo;
        if (activityInfo != null) {
            return activityInfo.packageName;
        }
        return null;
    }

    protected static String c(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        return launchIntentForPackage != null ? launchIntentForPackage.getComponent().getClassName() : null;
    }
}
