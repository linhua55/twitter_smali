package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.ContactsContract.Contacts;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import cb;
import com.facebook.imagepipeline.common.c;
import com.facebook.imagepipeline.memory.ab;
import com.facebook.imagepipeline.request.ImageRequest;
import gj;
import gq;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class ap extends at {
    private static final Class<?> a;
    private static final String b;
    private static final String[] c;
    private static final String[] d;
    private static final Rect e;
    private static final Rect f;
    private final ContentResolver g;

    static {
        a = ap.class;
        b = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "display_photo").getPath();
        c = new String[]{"_id", "_data"};
        d = new String[]{"_data"};
        e = new Rect(0, 0, AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY, 384);
        f = new Rect(0, 0, 96, 96);
    }

    public ap(Executor executor, ab abVar, ContentResolver contentResolver) {
        super(executor, abVar);
        this.g = contentResolver;
    }

    protected gj a(ImageRequest imageRequest) throws IOException {
        Uri b = imageRequest.b();
        if (a(b)) {
            return a(Contacts.openContactPhotoInputStream(this.g, b), -1);
        }
        if (b(b)) {
            gj a = a(b, imageRequest.e());
            if (a != null) {
                return a;
            }
        }
        return a(this.g.openInputStream(b), -1);
    }

    private static boolean a(Uri uri) {
        return "com.android.contacts".equals(uri.getAuthority()) && !uri.getPath().startsWith(b);
    }

    private static boolean b(Uri uri) {
        String uri2 = uri.toString();
        return uri2.startsWith(Media.EXTERNAL_CONTENT_URI.toString()) || uri2.startsWith(Media.INTERNAL_CONTENT_URI.toString());
    }

    @Nullable
    private gj a(Uri uri, c cVar) throws IOException {
        gj gjVar = null;
        Cursor query = this.g.query(uri, c, gjVar, gjVar, gjVar);
        if (query == null) {
            return gjVar;
        }
        try {
            if (query.getCount() == 0) {
                return gjVar;
            }
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex("_data"));
            if (cVar != null) {
                gj a = a(cVar, query.getInt(query.getColumnIndex("_id")));
                if (a != null) {
                    a.c(b(string));
                    query.close();
                    return a;
                }
            }
            if (string != null) {
                gjVar = a(string, a(string));
                query.close();
                return gjVar;
            }
            query.close();
            return gjVar;
        } finally {
            query.close();
        }
    }

    private gj a(c cVar, int i) throws IOException {
        Throwable th;
        gj gjVar = null;
        int a = a(cVar);
        if (a != 0) {
            Cursor queryMiniThumbnail;
            try {
                queryMiniThumbnail = Thumbnails.queryMiniThumbnail(this.g, (long) i, a, d);
                if (queryMiniThumbnail != null) {
                    try {
                        queryMiniThumbnail.moveToFirst();
                        if (queryMiniThumbnail.getCount() > 0) {
                            String string = queryMiniThumbnail.getString(queryMiniThumbnail.getColumnIndex("_data"));
                            if (new File(string).exists()) {
                                gjVar = a(string, a(string));
                                if (queryMiniThumbnail != null) {
                                    queryMiniThumbnail.close();
                                }
                            }
                        }
                        if (queryMiniThumbnail != null) {
                            queryMiniThumbnail.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (queryMiniThumbnail != null) {
                            queryMiniThumbnail.close();
                        }
                        throw th;
                    }
                } else if (queryMiniThumbnail != null) {
                    queryMiniThumbnail.close();
                }
            } catch (Throwable th3) {
                Throwable th4 = th3;
                queryMiniThumbnail = null;
                th = th4;
                if (queryMiniThumbnail != null) {
                    queryMiniThumbnail.close();
                }
                throw th;
            }
        }
        return gjVar;
    }

    private static int a(c cVar) {
        if (a(cVar, f)) {
            return 3;
        }
        if (a(cVar, e)) {
            return 1;
        }
        return 0;
    }

    static boolean a(c cVar, Rect rect) {
        return ((float) cVar.a) <= ((float) rect.width()) * 1.3333334f && ((float) cVar.b) <= ((float) rect.height()) * 1.3333334f;
    }

    private static int a(String str) {
        return str == null ? -1 : (int) new File(str).length();
    }

    protected String a() {
        return "LocalContentUriFetchProducer";
    }

    private static int b(String str) {
        int i = 0;
        if (str != null) {
            try {
                i = gq.a(new ExifInterface(str).getAttributeInt("Orientation", 1));
            } catch (Throwable e) {
                cb.c(a, e, "Unable to retrieve thumbnail rotation for %s", new Object[]{str});
            }
        }
        return i;
    }
}
