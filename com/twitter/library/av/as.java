package com.twitter.library.av;

import android.content.res.Resources;
import com.twitter.model.av.c;
import com.twitter.util.object.e;
import defpackage.bdc;

/* compiled from: Twttr */
public class as {
    public static String a(Resources resources, c cVar) {
        if (cVar.b == 1) {
            return resources.getString(bdc.av_playlist_download_failed);
        }
        return (String) e.b(cVar.c, resources.getString(bdc.av_playlist_download_failed));
    }
}
