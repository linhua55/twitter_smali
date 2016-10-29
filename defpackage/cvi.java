package defpackage;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.webkit.MimeTypeMap;
import com.twitter.util.j;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
/* renamed from: cvi */
public final class cvi extends cun {
    public static void a(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor != null) {
            try {
                assetFileDescriptor.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(Cursor cursor) {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception e) {
            }
        }
    }

    public static boolean a(Context context, Uri uri, File file) {
        Throwable e;
        j.c();
        try {
            Closeable openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                boolean a = cun.a((InputStream) openInputStream, file);
                cun.a(openInputStream);
                return a;
            }
            cun.a(openInputStream);
            return false;
        } catch (IOException e2) {
            e = e2;
            try {
                bbn.a(e);
                return false;
            } finally {
                cun.a(null);
            }
        } catch (SecurityException e3) {
            e = e3;
            bbn.a(e);
            return false;
        }
    }

    public static String a(Context context, Uri uri) {
        j.c();
        if ("file".equals(uri.getScheme())) {
            return cvi.b(uri.getLastPathSegment());
        }
        return context.getContentResolver().getType(uri);
    }

    public static String b(String str) {
        return cvi.c(cun.a(str));
    }

    public static String c(String str) {
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
    }

    public static File a(Context context) {
        try {
            return context.getExternalCacheDir();
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        } catch (Throwable e2) {
            bbn.a(e2);
            return null;
        }
    }

    public static File b(Context context) {
        File a = cvi.a(context);
        return a != null ? a : context.getCacheDir();
    }

    public static File c(Context context) {
        try {
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                return externalFilesDir;
            }
            return context.getFilesDir();
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        } catch (Throwable e2) {
            bbn.a(e2);
            return null;
        }
    }

    public static File d(Context context) {
        try {
            File filesDir = context.getFilesDir();
            if (filesDir != null) {
                return filesDir;
            }
            return context.getFilesDir();
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        } catch (Throwable e2) {
            bbn.a(e2);
            return null;
        }
    }

    public static int b(Context context, Uri uri) throws IOException, SecurityException {
        int i = 0;
        try {
            Closeable openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                byte[] bArr = new byte[ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT];
                while (true) {
                    int read = openInputStream.read(bArr, 0, bArr.length);
                    if (read == -1) {
                        break;
                    }
                    i += read;
                }
            }
            cun.a(openInputStream);
            return i;
        } catch (Throwable th) {
            cun.a(null);
        }
    }
}
