package com.twitter.media.util;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore.Images;
import android.provider.MediaStore.Video.Media;
import cfk;
import com.twitter.media.model.MediaType;
import com.twitter.util.ao;
import com.twitter.util.h;
import cvi;
import java.io.File;

/* compiled from: Twttr */
public class j {
    private static j a;
    private final Context b;
    private final l c;

    public static synchronized j a(Context context) {
        j jVar;
        synchronized (j.class) {
            if (a == null && context != null) {
                a = new j(context.getApplicationContext());
            }
            jVar = a;
        }
        return jVar;
    }

    private j(Context context) {
        this.b = context;
        this.c = new l(context);
    }

    public File a(k kVar) {
        return a(kVar, kVar.h, false);
    }

    public File b(k kVar) {
        return a(kVar, null, true);
    }

    public File a(k kVar, File file) {
        return a(kVar, file, true);
    }

    private File a(k kVar, File file, boolean z) {
        h.c();
        Uri c = c(kVar);
        if (c == null) {
            return null;
        }
        String b = ao.b(this.b, c);
        if (b == null) {
            return null;
        }
        if (file == null) {
            file = kVar.h;
        }
        File file2 = new File(b);
        if (z ? cvi.c(file, file2) : cvi.b(file, file2)) {
            this.c.a(b, null, kVar.m);
            return file2;
        }
        this.b.getContentResolver().delete(c, null, null);
        return null;
    }

    private Uri c(k kVar) {
        Uri insert;
        Uri uri = null;
        h.c();
        if (!this.c.b()) {
            return uri;
        }
        Uri uri2;
        ContentValues contentValues = new ContentValues();
        String str = kVar.k;
        if (kVar.i == MediaType.d) {
            uri2 = Media.EXTERNAL_CONTENT_URI;
            contentValues.put("description", kVar.l);
            if (str == null) {
                str = this.b.getString(cfk.file_video_name);
            }
        } else {
            uri2 = Images.Media.EXTERNAL_CONTENT_URI;
            contentValues.put("description", kVar.l);
            if (str == null) {
                str = this.b.getString(cfk.file_photo_name);
            }
        }
        String bk_ = kVar.bk_();
        if (cvi.e(new File(bk_))) {
            contentValues.put("_data", bk_);
        }
        contentValues.put("title", str);
        contentValues.put("mime_type", kVar.i.mimeType);
        ContentResolver contentResolver = this.b.getContentResolver();
        if (Environment.getExternalStorageState().equals("mounted")) {
            try {
                insert = contentResolver.insert(uri2, contentValues);
            } catch (UnsupportedOperationException e) {
                insert = uri;
                if (insert == null) {
                    return insert;
                }
                try {
                    return contentResolver.insert(Images.Media.INTERNAL_CONTENT_URI, contentValues);
                } catch (UnsupportedOperationException e2) {
                    return insert;
                } catch (SQLiteException e3) {
                    return insert;
                } catch (IllegalStateException e4) {
                    return insert;
                }
            } catch (SQLiteException e5) {
                insert = uri;
                if (insert == null) {
                    return contentResolver.insert(Images.Media.INTERNAL_CONTENT_URI, contentValues);
                }
                return insert;
            } catch (IllegalStateException e6) {
                insert = uri;
                if (insert == null) {
                    return insert;
                }
                return contentResolver.insert(Images.Media.INTERNAL_CONTENT_URI, contentValues);
            } catch (IllegalArgumentException e7) {
                insert = uri;
                if (insert == null) {
                    return contentResolver.insert(Images.Media.INTERNAL_CONTENT_URI, contentValues);
                }
                return insert;
            }
        }
        insert = uri;
        if (insert == null) {
            return contentResolver.insert(Images.Media.INTERNAL_CONTENT_URI, contentValues);
        }
        return insert;
    }
}
