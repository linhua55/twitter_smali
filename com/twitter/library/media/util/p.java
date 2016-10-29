package com.twitter.library.media.util;

import android.os.Environment;
import com.twitter.media.model.MediaType;
import com.twitter.media.util.k;
import com.twitter.util.SynchronizedDateFormat;
import java.io.File;
import java.text.DateFormat;
import java.util.Date;

/* compiled from: Twttr */
public class p extends k {
    private static final DateFormat a;

    static {
        a = new SynchronizedDateFormat("yyyyMMdd_HHmmss");
    }

    public p(File file) {
        super(file, MediaType.b);
    }

    protected String a() {
        return a.format(new Date());
    }

    protected String bk_() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES) + File.separator + "Twitter" + File.separator + "IMG_" + a() + '.' + MediaType.b.extension;
    }
}
