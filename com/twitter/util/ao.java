package com.twitter.util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.twitter.platform.PlatformContext;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import defpackage.cvi;
import java.io.File;
import java.net.URI;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: Twttr */
public class ao extends n {
    public static boolean a(Uri uri, String str, boolean z) {
        String queryParameter = uri.getQueryParameter(str);
        if (queryParameter == null) {
            return z;
        }
        queryParameter = queryParameter.toLowerCase(Locale.ROOT);
        boolean z2 = ("false".equals(queryParameter) || "0".equals(queryParameter)) ? false : true;
        return z2;
    }

    public static int a(Uri uri, String str, int i) {
        String queryParameter = uri.getQueryParameter(str);
        if (queryParameter != null) {
            try {
                i = Integer.parseInt(queryParameter);
            } catch (NumberFormatException e) {
            }
        }
        return i;
    }

    public static List<Long> a(Uri uri, String str, List<Long> list) {
        Object queryParameter = uri.getQueryParameter(str);
        if (TextUtils.isEmpty(queryParameter)) {
            return list;
        }
        try {
            String[] split = queryParameter.split(",");
            n a = n.a(split.length);
            for (String parseLong : split) {
                a.c(Long.valueOf(Long.parseLong(parseLong)));
            }
            return (List) a.q();
        } catch (NumberFormatException e) {
            return list;
        }
    }

    public static Uri a(Uri uri) {
        return uri.buildUpon().query(null).fragment(null).build();
    }

    public static boolean c(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return Uri.parse(str).getPath().equals(Uri.parse(str2).getPath());
    }

    public static Map<String, String> b(Uri uri) {
        r d = r.d();
        if (uri != null) {
            for (String str : uri.getQueryParameterNames()) {
                d.b(str, uri.getQueryParameter(str));
            }
        }
        return (Map) d.q();
    }

    public static boolean d(String str) {
        return str != null && str.startsWith("content://");
    }

    public static Uri c(Uri uri) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("/#!");
        if (indexOf != -1) {
            return Uri.parse(uri2.substring(0, indexOf) + uri2.substring(indexOf + "/#!".length()));
        }
        return uri;
    }

    public static String a(URI uri) {
        return (uri == null || uri.getHost() == null) ? null : uri.getHost();
    }

    public static boolean d(Uri uri) {
        return uri != null && "t.co".equalsIgnoreCase(uri.getHost());
    }

    public static File a(Context context, Uri uri) {
        String b = b(context, uri);
        if (b == null) {
            return null;
        }
        File file = new File(b);
        return file.exists() ? file : null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    @android.annotation.TargetApi(19)
    public static java.lang.String b(android.content.Context r8, android.net.Uri r9) {
        /*
        r4 = 2;
        r1 = -1;
        r3 = 1;
        r2 = 0;
        r0 = 0;
        r5 = r9.getScheme();
        if (r5 == 0) goto L_0x0014;
    L_0x000b:
        r6 = "file";
        r6 = r6.equals(r5);
        if (r6 == 0) goto L_0x0019;
    L_0x0014:
        r0 = r9.getPath();
    L_0x0018:
        return r0;
    L_0x0019:
        r6 = "content";
        r5 = r6.equals(r5);
        if (r5 == 0) goto L_0x0018;
    L_0x0022:
        r5 = android.os.Build.VERSION.SDK_INT;
        r6 = 19;
        if (r5 < r6) goto L_0x0103;
    L_0x0028:
        r5 = android.provider.DocumentsContract.isDocumentUri(r8, r9);
        if (r5 == 0) goto L_0x0103;
    L_0x002e:
        r5 = r9.getAuthority();
        r6 = r5.hashCode();
        switch(r6) {
            case 320699453: goto L_0x0074;
            case 596745902: goto L_0x007f;
            case 1734583286: goto L_0x0069;
            default: goto L_0x0039;
        };
    L_0x0039:
        r5 = r1;
    L_0x003a:
        switch(r5) {
            case 0: goto L_0x003e;
            case 1: goto L_0x00b1;
            case 2: goto L_0x00cd;
            default: goto L_0x003d;
        };
    L_0x003d:
        goto L_0x0018;
    L_0x003e:
        r5 = android.provider.DocumentsContract.getDocumentId(r9);
        r6 = ":";
        r5 = r5.split(r6);
        r6 = r5[r2];
        r7 = r6.hashCode();
        switch(r7) {
            case 93166550: goto L_0x00a0;
            case 100313435: goto L_0x008a;
            case 112202875: goto L_0x0095;
            default: goto L_0x0052;
        };
    L_0x0052:
        switch(r1) {
            case 0: goto L_0x0056;
            case 1: goto L_0x00ab;
            case 2: goto L_0x00ae;
            default: goto L_0x0055;
        };
    L_0x0055:
        goto L_0x0018;
    L_0x0056:
        r0 = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    L_0x0058:
        r1 = "_data";
        r4 = "_id=?";
        r6 = new java.lang.String[r3];
        r3 = r5[r3];
        r6[r2] = r3;
        r0 = a(r8, r0, r1, r4, r6);
        goto L_0x0018;
    L_0x0069:
        r6 = "com.android.providers.media.documents";
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x0039;
    L_0x0072:
        r5 = r2;
        goto L_0x003a;
    L_0x0074:
        r6 = "com.android.providers.downloads.documents";
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x0039;
    L_0x007d:
        r5 = r3;
        goto L_0x003a;
    L_0x007f:
        r6 = "com.android.externalstorage.documents";
        r5 = r5.equals(r6);
        if (r5 == 0) goto L_0x0039;
    L_0x0088:
        r5 = r4;
        goto L_0x003a;
    L_0x008a:
        r4 = "image";
        r4 = r6.equals(r4);
        if (r4 == 0) goto L_0x0052;
    L_0x0093:
        r1 = r2;
        goto L_0x0052;
    L_0x0095:
        r4 = "video";
        r4 = r6.equals(r4);
        if (r4 == 0) goto L_0x0052;
    L_0x009e:
        r1 = r3;
        goto L_0x0052;
    L_0x00a0:
        r7 = "audio";
        r6 = r6.equals(r7);
        if (r6 == 0) goto L_0x0052;
    L_0x00a9:
        r1 = r4;
        goto L_0x0052;
    L_0x00ab:
        r0 = android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        goto L_0x0058;
    L_0x00ae:
        r0 = android.provider.MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        goto L_0x0058;
    L_0x00b1:
        r1 = android.provider.DocumentsContract.getDocumentId(r9);
        r2 = "content://downloads/public_downloads";
        r2 = android.net.Uri.parse(r2);
        r4 = java.lang.Long.parseLong(r1);
        r1 = android.content.ContentUris.withAppendedId(r2, r4);
        r2 = "_data";
        r0 = a(r8, r1, r2, r0, r0);
        goto L_0x0018;
    L_0x00cd:
        r1 = android.provider.DocumentsContract.getDocumentId(r9);
        r4 = ":";
        r1 = r1.split(r4);
        r2 = r1[r2];
        r4 = "primary";
        r2 = r4.equalsIgnoreCase(r2);
        if (r2 == 0) goto L_0x0018;
    L_0x00e3:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r2 = android.os.Environment.getExternalStorageDirectory();
        r0 = r0.append(r2);
        r2 = "/";
        r0 = r0.append(r2);
        r1 = r1[r3];
        r0 = r0.append(r1);
        r0 = r0.toString();
        goto L_0x0018;
    L_0x0103:
        r1 = "_data";
        r0 = a(r8, r9, r1, r0, r0);
        goto L_0x0018;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.util.ao.b(android.content.Context, android.net.Uri):java.lang.String");
    }

    public static File c(Context context, Uri uri) {
        j.c();
        File a = a(context, uri);
        if (a != null && a.canRead() && a.length() > 0) {
            return a;
        }
        a = PlatformContext.f().e().a(MimeTypeMap.getSingleton().getExtensionFromMimeType(cvi.a(context, uri)));
        return (a == null || !cvi.a(context, uri, a)) ? null : a;
    }

    public static boolean e(Uri uri) {
        String scheme = uri.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    private static String a(Context context, Uri uri, String str, String str2, String[] strArr) {
        Cursor cursor;
        Throwable th;
        Cursor cursor2 = null;
        try {
            Cursor query = context.getContentResolver().query(uri, new String[]{str}, str2, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst() && query.getCount() == 1) {
                        String string = query.getString(0);
                        cvi.a(query);
                        return string;
                    }
                } catch (Exception e) {
                    cursor = query;
                    cvi.a(cursor);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = query;
                    cvi.a(cursor2);
                    throw th;
                }
            }
            cvi.a(query);
        } catch (Exception e2) {
            cursor = null;
            cvi.a(cursor);
            return null;
        } catch (Throwable th3) {
            th = th3;
            cvi.a(cursor2);
            throw th;
        }
        return null;
    }
}
