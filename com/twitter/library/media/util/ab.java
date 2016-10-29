package com.twitter.library.media.util;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.recyclerview.BuildConfig;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import bdc;
import com.twitter.library.client.bg;
import com.twitter.library.util.aq;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.ag;
import com.twitter.util.collection.CollectionUtils;
import defpackage.cpf;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
public class ab {
    public static CharSequence a(Context context, List<MediaEntity> list, int i) {
        if (CollectionUtils.b((Collection) list)) {
            return BuildConfig.VERSION_NAME;
        }
        return b(context, cpf.a((Iterable) list), i);
    }

    public static CharSequence b(Context context, List<ag> list, int i) {
        long g = bg.a().c().g();
        Resources resources = context.getResources();
        if (CollectionUtils.b((Collection) list)) {
            return BuildConfig.VERSION_NAME;
        }
        CharSequence a;
        if (list.size() == 1) {
            a = aq.a(resources, ((ag) list.get(0)).b == g ? bdc.media_tag_you : bdc.media_tag_user_display_name, ((ag) list.get(0)).c);
        } else {
            ag b = cpf.b(list, g);
            int i2;
            if (list.size() == 2) {
                int i3;
                int i4;
                if (b != null) {
                    i2 = ((ag) list.get(0)).b == g ? 0 : 1;
                    if (i2 == 0) {
                        i3 = 1;
                    } else {
                        i3 = 0;
                    }
                    i4 = bdc.media_tag_you_two_summary;
                    int i5 = i3;
                    i3 = i2;
                    i2 = i5;
                } else {
                    i2 = 1;
                    i4 = bdc.media_tag_two_summary;
                    i3 = 0;
                }
                a = aq.a(resources, i4, ((ag) list.get(i3)).c, ((ag) list.get(i2)).c);
            } else {
                String str;
                if (b != null) {
                    str = b.c;
                    i2 = bdc.media_tag_you_multiple_summary;
                } else {
                    str = ((ag) list.get(0)).c;
                    i2 = bdc.media_tag_multiple_summary;
                }
                a = aq.a(resources, i2, str, Integer.valueOf(list.size() - 1));
            }
        }
        if (i == 0) {
            return a;
        }
        CharSequence spannableStringBuilder = new SpannableStringBuilder("  ");
        spannableStringBuilder.append(a);
        spannableStringBuilder.setSpan(new ImageSpan(context, i, 1), 0, 1, 18);
        return spannableStringBuilder;
    }
}
