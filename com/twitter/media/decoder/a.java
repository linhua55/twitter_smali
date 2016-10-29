package com.twitter.media.decoder;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Trace;
import bbr;
import cfb;
import com.twitter.util.al;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.math.Size;
import com.twitter.util.math.c;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

/* compiled from: Twttr */
public class a extends ImageDecoder {
    protected Size a(FileInputStream fileInputStream) throws IOException {
        return Size.a(a(fileInputStream.getFD()));
    }

    @TargetApi(18)
    protected Bitmap b(FileInputStream fileInputStream) throws IOException {
        long b;
        long j = 0;
        FileDescriptor fd = fileInputStream.getFD();
        Options a = a(fd);
        if (cfb.a()) {
            b = al.b();
            cfb.b("ImageDecoder", "Decoding bitmap with file descriptor " + fd);
            if (VERSION.SDK_INT >= 18) {
                Trace.beginSection("Bitmap Decoding");
            }
        } else {
            b = 0;
        }
        try {
            a.inMutable = this.i;
            Bitmap a2 = a(fd, a);
            if (cfb.a()) {
                if (VERSION.SDK_INT >= 18) {
                    Trace.endSection();
                }
                if (a2 != null) {
                    cfb.b("ImageDecoder", "Decoded " + fd + " in " + (al.b() - b) + "ms, size: " + Size.a(a2));
                } else {
                    cfb.b("ImageDecoder", "Failed to decode " + fd + ".");
                }
            }
            if (a2 == null) {
                return null;
            }
            if (cfb.a()) {
                j = al.b();
                cfb.b("ImageDecoder", "Transforming bitmap with file descriptor " + fd);
                if (VERSION.SDK_INT >= 18) {
                    Trace.beginSection("Bitmap Transformation");
                }
            }
            try {
                Bitmap a3 = a(a2, Size.a(a));
                if (!cfb.a()) {
                    return a3;
                }
                if (VERSION.SDK_INT >= 18) {
                    Trace.endSection();
                }
                if (a3 != null) {
                    cfb.b("ImageDecoder", "Transformed " + fd + " in " + (al.b() - j) + "ms, size: " + Size.a(a3));
                    return a3;
                }
                cfb.b("ImageDecoder", "Failed to transform " + fd + ".");
                return a3;
            } catch (Throwable th) {
                if (cfb.a()) {
                    if (VERSION.SDK_INT >= 18) {
                        Trace.endSection();
                    }
                    if (null != null) {
                        cfb.b("ImageDecoder", "Transformed " + fd + " in " + (al.b() - j) + "ms, size: " + Size.a(null));
                    } else {
                        cfb.b("ImageDecoder", "Failed to transform " + fd + ".");
                    }
                }
            }
        } catch (Throwable th2) {
            if (cfb.a()) {
                if (VERSION.SDK_INT >= 18) {
                    Trace.endSection();
                }
                if (null != null) {
                    cfb.b("ImageDecoder", "Decoded " + fd + " in " + (al.b() - b) + "ms, size: " + Size.a(null));
                } else {
                    cfb.b("ImageDecoder", "Failed to decode " + fd + ".");
                }
            }
        }
    }

    private Options a(FileDescriptor fileDescriptor, int i) {
        Options options = new Options();
        options.inPreferredConfig = this.b;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        if (i <= 0 || i % 2 != 0) {
            i = this.a.e(Size.a(options));
        }
        options.inSampleSize = i;
        options.inJustDecodeBounds = false;
        return options;
    }

    private Options a(FileDescriptor fileDescriptor) {
        return a(fileDescriptor, 0);
    }

    private Bitmap a(FileDescriptor fileDescriptor, Options options) {
        return a(fileDescriptor, options, false);
    }

    private Bitmap a(FileDescriptor fileDescriptor, Options options, boolean z) {
        BitmapRegionDecoder newInstance;
        Object obj;
        Bitmap a;
        Bitmap decodeFileDescriptor;
        OutOfMemoryError e;
        Throwable th;
        BitmapRegionDecoder bitmapRegionDecoder;
        OutOfMemoryError outOfMemoryError;
        BitmapRegionDecoder bitmapRegionDecoder2 = null;
        Size a2 = Size.a(options);
        try {
            Rect c = this.a.c(a2);
            if (!Size.a(c).d(a2)) {
                try {
                    newInstance = BitmapRegionDecoder.newInstance(fileDescriptor, true);
                } catch (IOException e2) {
                    newInstance = bitmapRegionDecoder2;
                    if (newInstance != null) {
                        newInstance.recycle();
                        obj = bitmapRegionDecoder2;
                        if (a == null) {
                            return a;
                        }
                        try {
                            if (VERSION.SDK_INT <= 19) {
                                options.inPurgeable = true;
                                options.inInputShareable = true;
                            }
                            decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                            if (decodeFileDescriptor != null) {
                                a = com.twitter.media.util.a.a(decodeFileDescriptor, this.a.c(Size.a(decodeFileDescriptor)), null, false);
                                if (a != decodeFileDescriptor) {
                                    return a;
                                }
                                decodeFileDescriptor.recycle();
                                return a;
                            } else if (z) {
                                return a(fileDescriptor, a(fileDescriptor, options.inSampleSize * 2), true);
                            } else {
                                return a;
                            }
                        } catch (OutOfMemoryError e3) {
                            e = e3;
                            a(e, a2);
                            if (z) {
                                return a;
                            }
                            return a(fileDescriptor, a(fileDescriptor, options.inSampleSize * 2), true);
                        }
                    }
                    obj = bitmapRegionDecoder2;
                    if (a == null) {
                        return a;
                    }
                    if (VERSION.SDK_INT <= 19) {
                        options.inPurgeable = true;
                        options.inInputShareable = true;
                    }
                    decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                    if (decodeFileDescriptor != null) {
                        a = com.twitter.media.util.a.a(decodeFileDescriptor, this.a.c(Size.a(decodeFileDescriptor)), null, false);
                        if (a != decodeFileDescriptor) {
                            return a;
                        }
                        decodeFileDescriptor.recycle();
                        return a;
                    } else if (z) {
                        return a;
                    } else {
                        return a(fileDescriptor, a(fileDescriptor, options.inSampleSize * 2), true);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bitmapRegionDecoder = bitmapRegionDecoder2;
                    if (bitmapRegionDecoder != null) {
                        bitmapRegionDecoder.recycle();
                    }
                    throw th;
                }
                try {
                    decodeFileDescriptor = newInstance.decodeRegion(c, options);
                    if (newInstance != null) {
                        try {
                            newInstance.recycle();
                            a = decodeFileDescriptor;
                        } catch (OutOfMemoryError e4) {
                            outOfMemoryError = e4;
                            a = decodeFileDescriptor;
                            e = outOfMemoryError;
                            a(e, a2);
                            if (z) {
                                return a(fileDescriptor, a(fileDescriptor, options.inSampleSize * 2), true);
                            }
                            return a;
                        }
                    }
                    a = decodeFileDescriptor;
                } catch (IOException e5) {
                    if (newInstance != null) {
                        newInstance.recycle();
                        obj = bitmapRegionDecoder2;
                        if (a == null) {
                            return a;
                        }
                        if (VERSION.SDK_INT <= 19) {
                            options.inPurgeable = true;
                            options.inInputShareable = true;
                        }
                        decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                        if (decodeFileDescriptor != null) {
                            a = com.twitter.media.util.a.a(decodeFileDescriptor, this.a.c(Size.a(decodeFileDescriptor)), null, false);
                            if (a != decodeFileDescriptor) {
                                return a;
                            }
                            decodeFileDescriptor.recycle();
                            return a;
                        } else if (z) {
                            return a(fileDescriptor, a(fileDescriptor, options.inSampleSize * 2), true);
                        } else {
                            return a;
                        }
                    }
                    obj = bitmapRegionDecoder2;
                    if (a == null) {
                        return a;
                    }
                    if (VERSION.SDK_INT <= 19) {
                        options.inPurgeable = true;
                        options.inInputShareable = true;
                    }
                    decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                    if (decodeFileDescriptor != null) {
                        a = com.twitter.media.util.a.a(decodeFileDescriptor, this.a.c(Size.a(decodeFileDescriptor)), null, false);
                        if (a != decodeFileDescriptor) {
                            return a;
                        }
                        decodeFileDescriptor.recycle();
                        return a;
                    } else if (z) {
                        return a;
                    } else {
                        return a(fileDescriptor, a(fileDescriptor, options.inSampleSize * 2), true);
                    }
                } catch (Throwable th3) {
                    Throwable th4 = th3;
                    bitmapRegionDecoder = newInstance;
                    th = th4;
                    if (bitmapRegionDecoder != null) {
                        bitmapRegionDecoder.recycle();
                    }
                    throw th;
                }
                if (a == null) {
                    return a;
                }
                if (VERSION.SDK_INT <= 19) {
                    options.inPurgeable = true;
                    options.inInputShareable = true;
                }
                decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                if (decodeFileDescriptor != null) {
                    a = com.twitter.media.util.a.a(decodeFileDescriptor, this.a.c(Size.a(decodeFileDescriptor)), null, false);
                    if (a != decodeFileDescriptor) {
                        return a;
                    }
                    decodeFileDescriptor.recycle();
                    return a;
                } else if (z) {
                    return a(fileDescriptor, a(fileDescriptor, options.inSampleSize * 2), true);
                } else {
                    return a;
                }
            }
            obj = bitmapRegionDecoder2;
            if (a == null) {
                return a;
            }
            if (VERSION.SDK_INT <= 19) {
                options.inPurgeable = true;
                options.inInputShareable = true;
            }
            decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            if (decodeFileDescriptor != null) {
                a = com.twitter.media.util.a.a(decodeFileDescriptor, this.a.c(Size.a(decodeFileDescriptor)), null, false);
                if (a != decodeFileDescriptor) {
                    return a;
                }
                decodeFileDescriptor.recycle();
                return a;
            } else if (z) {
                return a;
            } else {
                return a(fileDescriptor, a(fileDescriptor, options.inSampleSize * 2), true);
            }
        } catch (OutOfMemoryError e42) {
            outOfMemoryError = e42;
            a = bitmapRegionDecoder2;
            e = outOfMemoryError;
            a(e, a2);
            if (z) {
                return a;
            }
            return a(fileDescriptor, a(fileDescriptor, options.inSampleSize * 2), true);
        }
    }

    private Bitmap a(Bitmap bitmap, Size size) {
        try {
            Bitmap a = com.twitter.media.util.a.a(bitmap, null, this.a.g(Size.a(bitmap)), true);
            if (a == bitmap) {
                return a;
            }
            bitmap.recycle();
            return a;
        } catch (OutOfMemoryError e) {
            a(e, size);
            return null;
        }
    }

    private void a(OutOfMemoryError outOfMemoryError, Size size) {
        Map map = null;
        try {
            map = MutableMap.a(16);
            map.put("ImageDecoder.description", this.j);
            map.put("ImageDecoder.requested_size", this.a.a());
            map.put("ImageDecoder.bitmap_config", this.b);
            if (this.e != null) {
                map.put("ImageDecoder.uri", this.e);
            }
            if (this.h != null) {
                map.put("ImageDecoder.file", this.h.getAbsolutePath());
            }
            map.put("ImageDecoder.bitmap_size", size);
            c b = this.a.b();
            if (b != null) {
                map.put("ImageDecoder.relative_input_rect", b);
            }
            map.put("ImageDecoder.input_size", this.a.d(size));
            map.put("ImageDecoder.coarse_scale", Integer.valueOf(this.a.e(size)));
            map.put("ImageDecoder.precise_scale", Float.valueOf(this.a.f(size)));
            map.put("ImageDecoder.output_size", this.a.h(size));
        } catch (Throwable th) {
        }
        bbr.a(outOfMemoryError, false, map);
    }
}
