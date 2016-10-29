package com.twitter.library.media.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.MediaStore.Images.Media;
import android.support.v7.recyclerview.BuildConfig;
import bdc;
import com.twitter.config.d;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.media.EditableImage;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bbw;

/* compiled from: Twttr */
public class z {
    public static boolean a(Activity activity, int i) {
        return a((Context) activity, new aa(activity), i, null);
    }

    public static boolean a(Context context, a aVar, int i, Bundle bundle) {
        try {
            Intent intent = new Intent();
            if (d.a("extended_image_import_enabled")) {
                intent.setType("image/*").setAction("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE");
            } else {
                intent.setAction("android.intent.action.PICK").setData(Media.EXTERNAL_CONTENT_URI).setType("vnd.android.cursor.dir/image");
            }
            aVar.a(intent, i, bundle);
            return true;
        } catch (ActivityNotFoundException e) {
            r.a(context, bdc.unsupported_feature);
            return false;
        }
    }

    public static void a(EditableImage editableImage, String str, String str2, long j) {
        a(editableImage, BuildConfig.VERSION_NAME, str, str2, j);
    }

    public static void a(EditableImage editableImage, String str, String str2, String str3, long j) {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(j).b(str, e.b(str2), editableImage.h().a(), "image_attachment", "done");
        if (aj.b((CharSequence) str3)) {
            bbw.i("twitter:" + str3);
        }
        if (editableImage.b) {
            bbw.f("twitter:enhanced");
        }
        bbu.a(bbw);
    }
}
