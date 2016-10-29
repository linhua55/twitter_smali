package com.twitter.media.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.net.Uri;
import bbn;
import bbr;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.media.util.ImageOrientation;
import com.twitter.media.util.a;
import com.twitter.media.util.f;
import com.twitter.util.ao;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;
import cvi;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public abstract class ImageDecoder {
    private static d m;
    protected f a;
    protected Config b;
    protected int c;
    protected boolean d;
    protected Uri e;
    protected Context f;
    protected InputStream g;
    protected File h;
    protected boolean i;
    protected String j;
    protected int k;
    protected ImageOrientation l;

    /* compiled from: Twttr */
    public enum ScaleType {
        FIT_INSIDE,
        FILL,
        FILL_CROP
    }

    protected abstract Size a(FileInputStream fileInputStream) throws IOException;

    protected abstract Bitmap b(FileInputStream fileInputStream) throws IOException;

    static {
        m = new c();
    }

    protected ImageDecoder() {
        this.a = new f();
        this.b = Config.ARGB_8888;
        this.l = ImageOrientation.a;
    }

    public static ImageDecoder a(Context context, Uri uri) {
        return m.a(MediaType.b).a(context).a(uri);
    }

    public static ImageDecoder a(File file) {
        return m.a(MediaType.b).b(file);
    }

    public static ImageDecoder a(MediaFile mediaFile) {
        return m.a(mediaFile.f).e(mediaFile.e).b(mediaFile.d);
    }

    private ImageDecoder a(Context context) {
        this.f = context;
        return this;
    }

    private ImageDecoder a(Uri uri) {
        this.e = uri;
        return this;
    }

    private ImageDecoder b(File file) {
        this.h = file;
        return this;
    }

    private ImageDecoder a(ImageOrientation imageOrientation) {
        this.a.a(imageOrientation);
        return this;
    }

    public ImageDecoder a(Size size) {
        this.a.a(size).a(e.a);
        return this;
    }

    public ImageDecoder a(Size size, e eVar) {
        this.a.a(size).a(eVar);
        return this;
    }

    public ImageDecoder b(Size size) {
        this.a.a(size).a(e.b);
        return this;
    }

    public ImageDecoder c(Size size) {
        this.a.a(size).a(e.c);
        return this;
    }

    public ImageDecoder a(int i) {
        return a(Size.a(i));
    }

    public ImageDecoder b(int i) {
        return b(Size.a(i));
    }

    public ImageDecoder c(int i) {
        return c(Size.a(i));
    }

    public ImageDecoder a(Config config) {
        if (this.b != config) {
            this.b = config;
            if (this.c != 0) {
                d(this.c);
            }
        }
        return this;
    }

    public ImageDecoder a() {
        this.d = true;
        return this;
    }

    public ImageDecoder a(ScaleType scaleType) {
        boolean z;
        boolean z2 = true;
        f fVar = this.a;
        if (scaleType == ScaleType.FILL || scaleType == ScaleType.FILL_CROP) {
            z = true;
        } else {
            z = false;
        }
        fVar.a(z);
        f fVar2 = this.a;
        if (scaleType != ScaleType.FILL_CROP) {
            z2 = false;
        }
        fVar2.b(z2);
        return this;
    }

    public ImageDecoder a(c cVar) {
        this.a.a(cVar);
        return this;
    }

    public ImageDecoder d(Size size) {
        this.a.b(size);
        return this;
    }

    public ImageDecoder e(Size size) {
        this.a.a(size);
        return this;
    }

    public ImageDecoder d(int i) {
        this.a.a(i / a.a(this.b));
        this.c = i;
        return this;
    }

    public ImageDecoder e(int i) {
        this.k = i;
        return this;
    }

    public ImageDecoder a(boolean z) {
        this.a.c(z);
        return this;
    }

    public ImageDecoder b(boolean z) {
        this.i = z;
        return this;
    }

    public ImageDecoder a(String str) {
        this.j = str;
        return this;
    }

    public Bitmap b() {
        b c = c(false);
        return c != null ? c.a : null;
    }

    public Size c() {
        b c = c(true);
        return c != null ? c.b : Size.b;
    }

    b c(boolean z) {
        if (this.e != null) {
            return a(this.e, z);
        }
        if (this.g != null) {
            return a(this.g, z);
        }
        if (this.h != null) {
            return a(this.h, z);
        }
        throw new RuntimeException("No bitmap source specified.");
    }

    private b a(Uri uri, boolean z) {
        Closeable openInputStream;
        Throwable e;
        Closeable closeable = null;
        ImageOrientation imageOrientation = this.l;
        if (imageOrientation == ImageOrientation.a && !this.d) {
            imageOrientation = f.a(ao.a(this.f, uri));
        }
        a(imageOrientation.c(this.k));
        try {
            openInputStream = this.f.getContentResolver().openInputStream(uri);
            try {
                b a = a((InputStream) openInputStream, z);
                cvi.a(openInputStream);
                return a;
            } catch (Exception e2) {
                e = e2;
                try {
                    bbn.a(e);
                    cvi.a(openInputStream);
                    return null;
                } catch (Throwable th) {
                    e = th;
                    closeable = openInputStream;
                    cvi.a(closeable);
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            openInputStream = null;
            bbn.a(e);
            cvi.a(openInputStream);
            return null;
        } catch (Throwable th2) {
            e = th2;
            cvi.a(closeable);
            throw e;
        }
    }

    private b a(InputStream inputStream, boolean z) {
        if (inputStream instanceof FileInputStream) {
            return a((FileInputStream) inputStream, z);
        }
        File a = cvi.a(inputStream, MediaType.b.extension);
        if (a == null) {
            return new b((Bitmap) null);
        }
        try {
            b a2 = a(a, z);
            return a2;
        } finally {
            a.delete();
        }
    }

    private b a(File file, boolean z) {
        Closeable fileInputStream;
        Throwable e;
        ImageOrientation imageOrientation = this.l;
        if (imageOrientation == ImageOrientation.a && !this.d) {
            imageOrientation = f.a(file);
        }
        a(imageOrientation.c(this.k));
        try {
            fileInputStream = new FileInputStream(file);
            try {
                b a = a((FileInputStream) fileInputStream, z);
                cvi.a(fileInputStream);
                return a;
            } catch (Exception e2) {
                e = e2;
                try {
                    bbn.a(e);
                    cvi.a(fileInputStream);
                    return null;
                } catch (Throwable th) {
                    e = th;
                    cvi.a(fileInputStream);
                    throw e;
                }
            }
        } catch (Exception e3) {
            e = e3;
            fileInputStream = null;
            bbn.a(e);
            cvi.a(fileInputStream);
            return null;
        } catch (Throwable th2) {
            e = th2;
            fileInputStream = null;
            cvi.a(fileInputStream);
            throw e;
        }
    }

    private b a(FileInputStream fileInputStream, boolean z) {
        if (z) {
            try {
                Size a = a(fileInputStream);
                return new b(!a.c() ? this.a.h(a) : Size.b);
            } catch (OutOfMemoryError e) {
                bbr.a(e);
                return null;
            } catch (Throwable e2) {
                bbn.a(e2);
                return null;
            }
        }
        Bitmap b = b(fileInputStream);
        return b != null ? new b(b) : null;
    }
}
