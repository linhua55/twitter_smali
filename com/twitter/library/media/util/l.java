package com.twitter.library.media.util;

import android.os.Environment;
import com.twitter.media.model.MediaType;
import com.twitter.media.model.SegmentedVideoFile;
import com.twitter.media.util.k;
import com.twitter.model.media.EditableSegmentedVideo;
import com.twitter.util.SynchronizedDateFormat;
import java.io.File;
import java.text.DateFormat;
import java.util.Date;

/* compiled from: Twttr */
public class l extends k {
    private static final DateFormat a;
    private final SegmentedVideoFile b;

    static {
        a = new SynchronizedDateFormat("yyyyMMdd_HHmmss");
    }

    public l(EditableSegmentedVideo editableSegmentedVideo) {
        super(((SegmentedVideoFile) editableSegmentedVideo.k).d, MediaType.d);
        this.b = (SegmentedVideoFile) editableSegmentedVideo.k;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof l) && a((l) obj));
    }

    public boolean a(l lVar) {
        return this == lVar || (lVar != null && super.a(lVar) && this.b.a(lVar.b));
    }

    protected String bk_() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES) + File.separator + "Twitter" + File.separator + "VID_" + hashCode() + '.' + this.i.extension;
    }

    public int hashCode() {
        return (super.hashCode() * 31) + this.b.hashCode();
    }

    public static File b() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MOVIES) + File.separator + "Twitter" + File.separator + ".VID_" + a.format(new Date()) + ".session");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }
}
