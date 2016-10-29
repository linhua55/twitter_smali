package com.twitter.media;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Rect;
import android.net.Uri;
import java.io.Closeable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
public class MediaUtils {
    private static native boolean nativeCanTrim(FileDescriptor fileDescriptor);

    private static native boolean nativeConvertFrame(byte[] bArr, byte[] bArr2, int i, int i2, int i3);

    private static native boolean nativeCrop(FileDescriptor fileDescriptor, long j, FileDescriptor fileDescriptor2, int i, int i2, int i3, int i4);

    private static native boolean nativeIdentify(FileDescriptor fileDescriptor, long j, ImageInfo imageInfo);

    private static native Bitmap nativeLoad(FileDescriptor fileDescriptor, long j, int i, int i2, boolean z, boolean z2, boolean z3, Config config);

    private static native int nativeMux(FileDescriptor fileDescriptor, long j, FileDescriptor fileDescriptor2, long j2, FileDescriptor fileDescriptor3, int i, int i2, int i3);

    private static native boolean nativeRGBAtoYUV420(byte[] bArr, byte[] bArr2, int i, int i2);

    private static native boolean nativeResize(FileDescriptor fileDescriptor, long j, FileDescriptor fileDescriptor2, int i, int i2);

    private static native boolean nativeScaleFrameYUV420(byte[] bArr, int i, int i2, int i3, byte[] bArr2, int i4, int i5, int i6);

    private static native int nativeStitch(ArrayList<FileDescriptor> arrayList, long[] jArr, FileDescriptor fileDescriptor);

    private static native int[] nativeTrim(FileDescriptor fileDescriptor, long j, FileDescriptor fileDescriptor2, long j2, long j3);

    static {
        NativeInit.a();
    }

    public static boolean a() {
        return NativeInit.b();
    }

    public static ImageInfo a(FileDescriptor fileDescriptor, long j) {
        if (a()) {
            ImageInfo imageInfo = new ImageInfo();
            if (nativeIdentify(fileDescriptor, j, imageInfo)) {
                return imageInfo;
            }
        }
        return null;
    }

    public static ImageInfo a(File file) {
        Closeable fileInputStream;
        Throwable th;
        ImageInfo imageInfo = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                imageInfo = a(fileInputStream.getFD(), 0);
                a(fileInputStream);
            } catch (FileNotFoundException e) {
                a(fileInputStream);
                return imageInfo;
            } catch (IOException e2) {
                a(fileInputStream);
                return imageInfo;
            } catch (Throwable th2) {
                th = th2;
                a(fileInputStream);
                throw th;
            }
        } catch (FileNotFoundException e3) {
            fileInputStream = imageInfo;
            a(fileInputStream);
            return imageInfo;
        } catch (IOException e4) {
            fileInputStream = imageInfo;
            a(fileInputStream);
            return imageInfo;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            fileInputStream = imageInfo;
            th = th4;
            a(fileInputStream);
            throw th;
        }
        return imageInfo;
    }

    public static ImageInfo a(Context context, Uri uri) {
        AssetFileDescriptor openAssetFileDescriptor;
        Throwable th;
        ImageInfo imageInfo = null;
        try {
            openAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, "r");
            try {
                imageInfo = a(openAssetFileDescriptor.getFileDescriptor(), openAssetFileDescriptor.getStartOffset());
                a(openAssetFileDescriptor);
            } catch (FileNotFoundException e) {
                a(openAssetFileDescriptor);
                return imageInfo;
            } catch (IOException e2) {
                a(openAssetFileDescriptor);
                return imageInfo;
            } catch (Throwable th2) {
                th = th2;
                a(openAssetFileDescriptor);
                throw th;
            }
        } catch (FileNotFoundException e3) {
            openAssetFileDescriptor = imageInfo;
            a(openAssetFileDescriptor);
            return imageInfo;
        } catch (IOException e4) {
            openAssetFileDescriptor = imageInfo;
            a(openAssetFileDescriptor);
            return imageInfo;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            openAssetFileDescriptor = imageInfo;
            th = th4;
            a(openAssetFileDescriptor);
            throw th;
        }
        return imageInfo;
    }

    public static boolean a(FileDescriptor fileDescriptor, long j, FileDescriptor fileDescriptor2, Rect rect) {
        if (!a()) {
            return false;
        }
        return nativeCrop(fileDescriptor, j, fileDescriptor2, rect.left, rect.top, rect.width(), rect.height());
    }

    public static boolean a(Context context, Uri uri, File file, Rect rect) {
        AssetFileDescriptor openAssetFileDescriptor;
        AssetFileDescriptor assetFileDescriptor;
        Throwable th;
        Closeable closeable = null;
        boolean z = false;
        Closeable fileOutputStream;
        try {
            openAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, "r");
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    z = a(openAssetFileDescriptor.getFileDescriptor(), openAssetFileDescriptor.getStartOffset(), fileOutputStream.getFD(), rect);
                    a(fileOutputStream);
                    a(openAssetFileDescriptor);
                } catch (FileNotFoundException e) {
                    assetFileDescriptor = openAssetFileDescriptor;
                    a(fileOutputStream);
                    a(assetFileDescriptor);
                    return z;
                } catch (IOException e2) {
                    closeable = fileOutputStream;
                    a(closeable);
                    a(openAssetFileDescriptor);
                    return z;
                } catch (Throwable th2) {
                    th = th2;
                    closeable = fileOutputStream;
                    a(closeable);
                    a(openAssetFileDescriptor);
                    throw th;
                }
            } catch (FileNotFoundException e3) {
                fileOutputStream = null;
                assetFileDescriptor = openAssetFileDescriptor;
                a(fileOutputStream);
                a(assetFileDescriptor);
                return z;
            } catch (IOException e4) {
                a(closeable);
                a(openAssetFileDescriptor);
                return z;
            } catch (Throwable th3) {
                th = th3;
                a(closeable);
                a(openAssetFileDescriptor);
                throw th;
            }
        } catch (FileNotFoundException e5) {
            fileOutputStream = null;
            a(fileOutputStream);
            a(assetFileDescriptor);
            return z;
        } catch (IOException e6) {
            openAssetFileDescriptor = null;
            a(closeable);
            a(openAssetFileDescriptor);
            return z;
        } catch (Throwable th4) {
            th = th4;
            openAssetFileDescriptor = null;
            a(closeable);
            a(openAssetFileDescriptor);
            throw th;
        }
        return z;
    }

    public static boolean a(FileDescriptor fileDescriptor, long j, FileDescriptor fileDescriptor2, int i, int i2) {
        if (a()) {
            return nativeResize(fileDescriptor, j, fileDescriptor2, i, i2);
        }
        return false;
    }

    public static boolean a(Context context, Uri uri, File file, int i, int i2) {
        AssetFileDescriptor openAssetFileDescriptor;
        AssetFileDescriptor assetFileDescriptor;
        Throwable th;
        Closeable closeable = null;
        boolean z = false;
        try {
            openAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, "r");
            try {
                Closeable fileOutputStream = new FileOutputStream(file);
                try {
                    z = a(openAssetFileDescriptor.getFileDescriptor(), openAssetFileDescriptor.getStartOffset(), fileOutputStream.getFD(), i, i2);
                    a(fileOutputStream);
                    a(openAssetFileDescriptor);
                } catch (FileNotFoundException e) {
                    closeable = fileOutputStream;
                    assetFileDescriptor = openAssetFileDescriptor;
                    a(closeable);
                    a(assetFileDescriptor);
                    return z;
                } catch (IOException e2) {
                    closeable = fileOutputStream;
                    a(closeable);
                    a(openAssetFileDescriptor);
                    return z;
                } catch (Throwable th2) {
                    th = th2;
                    closeable = fileOutputStream;
                    a(closeable);
                    a(openAssetFileDescriptor);
                    throw th;
                }
            } catch (FileNotFoundException e3) {
                assetFileDescriptor = openAssetFileDescriptor;
                a(closeable);
                a(assetFileDescriptor);
                return z;
            } catch (IOException e4) {
                a(closeable);
                a(openAssetFileDescriptor);
                return z;
            } catch (Throwable th3) {
                th = th3;
                a(closeable);
                a(openAssetFileDescriptor);
                throw th;
            }
        } catch (FileNotFoundException e5) {
            assetFileDescriptor = null;
            a(closeable);
            a(assetFileDescriptor);
            return z;
        } catch (IOException e6) {
            openAssetFileDescriptor = null;
            a(closeable);
            a(openAssetFileDescriptor);
            return z;
        } catch (Throwable th4) {
            th = th4;
            openAssetFileDescriptor = null;
            a(closeable);
            a(openAssetFileDescriptor);
            throw th;
        }
        return z;
    }

    public static int a(FileDescriptor fileDescriptor, long j, FileDescriptor fileDescriptor2, long j2, FileDescriptor fileDescriptor3, int i, int i2, int i3) throws VireoNativeException {
        if (a()) {
            return nativeMux(fileDescriptor, j, fileDescriptor2, j2, fileDescriptor3, i, i2, i3);
        }
        throw new VireoNativeException(7);
    }

    public static int a(File file, File file2, File file3, int i, int i2, int i3) throws VireoNativeException, FileNotFoundException, IOException {
        Closeable fileInputStream;
        Closeable fileInputStream2;
        Closeable fileOutputStream;
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        Closeable closeable = null;
        Closeable closeable2 = null;
        Closeable closeable3 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileInputStream2 = new FileInputStream(file2);
                try {
                    fileOutputStream = new FileOutputStream(file3);
                } catch (FileNotFoundException e3) {
                    e = e3;
                    closeable2 = fileInputStream2;
                    closeable = fileInputStream;
                    try {
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = closeable3;
                        fileInputStream2 = closeable2;
                        fileInputStream = closeable;
                    }
                } catch (IOException e4) {
                    e2 = e4;
                    fileOutputStream = null;
                    try {
                        throw e2;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                    a(fileInputStream);
                    a(fileInputStream2);
                    a(fileOutputStream);
                    throw th;
                }
                try {
                    int a = a(fileInputStream.getFD(), 0, fileInputStream2.getFD(), 0, fileOutputStream.getFD(), i, i2, i3);
                    if (a != 0) {
                        throw new VireoNativeException(a);
                    }
                    a(fileInputStream);
                    a(fileInputStream2);
                    a(fileOutputStream);
                    return 0;
                } catch (FileNotFoundException e5) {
                    e = e5;
                    closeable3 = fileOutputStream;
                    closeable2 = fileInputStream2;
                    closeable = fileInputStream;
                    throw e;
                } catch (IOException e6) {
                    e2 = e6;
                    throw e2;
                }
            } catch (FileNotFoundException e7) {
                e = e7;
                closeable = fileInputStream;
                throw e;
            } catch (IOException e8) {
                e2 = e8;
                fileOutputStream = null;
                fileInputStream2 = null;
                throw e2;
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream = null;
                fileInputStream2 = null;
                a(fileInputStream);
                a(fileInputStream2);
                a(fileOutputStream);
                throw th;
            }
        } catch (FileNotFoundException e9) {
            e = e9;
            throw e;
        } catch (IOException e10) {
            e2 = e10;
            fileOutputStream = null;
            fileInputStream2 = null;
            fileInputStream = null;
            throw e2;
        } catch (Throwable th6) {
            th = th6;
            fileOutputStream = null;
            fileInputStream2 = null;
            fileInputStream = null;
            a(fileInputStream);
            a(fileInputStream2);
            a(fileOutputStream);
            throw th;
        }
    }

    public static int[] a(FileDescriptor fileDescriptor, long j, FileDescriptor fileDescriptor2, long j2, long j3) throws VireoNativeException {
        if (a()) {
            return nativeTrim(fileDescriptor, j, fileDescriptor2, j2, j3);
        }
        throw new VireoNativeException(7);
    }

    public static int[] a(File file, File file2, long j, long j2) throws VireoNativeException, FileNotFoundException, IOException {
        FileNotFoundException e;
        Closeable closeable;
        Throwable th;
        IOException e2;
        Closeable closeable2 = null;
        Closeable fileInputStream;
        Closeable randomAccessFile;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                randomAccessFile = new RandomAccessFile(file2, "rw");
                try {
                    int[] a = a(fileInputStream.getFD(), 0, randomAccessFile.getFD(), j, j2);
                    if (a[0] == -1) {
                        throw new VireoNativeException(a[1]);
                    }
                    a(fileInputStream);
                    a(randomAccessFile);
                    return a;
                } catch (FileNotFoundException e3) {
                    e = e3;
                    closeable2 = randomAccessFile;
                    closeable = fileInputStream;
                    try {
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                        randomAccessFile = closeable2;
                        fileInputStream = closeable;
                    }
                } catch (IOException e4) {
                    e2 = e4;
                    try {
                        throw e2;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            } catch (FileNotFoundException e5) {
                e = e5;
                closeable = fileInputStream;
                throw e;
            } catch (IOException e6) {
                e2 = e6;
                randomAccessFile = null;
                throw e2;
            } catch (Throwable th4) {
                th = th4;
                randomAccessFile = null;
                a(fileInputStream);
                a(randomAccessFile);
                throw th;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            closeable = null;
            throw e;
        } catch (IOException e8) {
            e2 = e8;
            randomAccessFile = null;
            fileInputStream = null;
            throw e2;
        } catch (Throwable th5) {
            th = th5;
            randomAccessFile = null;
            fileInputStream = null;
            a(fileInputStream);
            a(randomAccessFile);
            throw th;
        }
    }

    public static int[] a(Context context, Uri uri, File file, long j, long j2) throws VireoNativeException, FileNotFoundException, IOException {
        AssetFileDescriptor openAssetFileDescriptor;
        Closeable randomAccessFile;
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        AssetFileDescriptor assetFileDescriptor = null;
        Closeable closeable = null;
        try {
            openAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, "r");
            try {
                randomAccessFile = new RandomAccessFile(file, "rw");
            } catch (FileNotFoundException e3) {
                e = e3;
                assetFileDescriptor = openAssetFileDescriptor;
                try {
                    throw e;
                } catch (Throwable th2) {
                    th = th2;
                    randomAccessFile = closeable;
                    openAssetFileDescriptor = assetFileDescriptor;
                }
            } catch (IOException e4) {
                e2 = e4;
                randomAccessFile = null;
                try {
                    throw e2;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                randomAccessFile = null;
                a(randomAccessFile);
                a(openAssetFileDescriptor);
                throw th;
            }
            try {
                int[] a = a(openAssetFileDescriptor.getFileDescriptor(), openAssetFileDescriptor.getStartOffset(), randomAccessFile.getFD(), j, j2);
                if (a[0] == -1) {
                    throw new VireoNativeException(a[1]);
                }
                a(randomAccessFile);
                a(openAssetFileDescriptor);
                return a;
            } catch (FileNotFoundException e5) {
                e = e5;
                closeable = randomAccessFile;
                assetFileDescriptor = openAssetFileDescriptor;
                throw e;
            } catch (IOException e6) {
                e2 = e6;
                throw e2;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            throw e;
        } catch (IOException e8) {
            e2 = e8;
            randomAccessFile = null;
            openAssetFileDescriptor = null;
            throw e2;
        } catch (Throwable th5) {
            th = th5;
            randomAccessFile = null;
            openAssetFileDescriptor = null;
            a(randomAccessFile);
            a(openAssetFileDescriptor);
            throw th;
        }
    }

    public static int a(ArrayList<FileDescriptor> arrayList, long[] jArr, FileDescriptor fileDescriptor) throws VireoNativeException {
        if (arrayList.size() == jArr.length && a()) {
            return nativeStitch(arrayList, jArr, fileDescriptor);
        }
        throw new VireoNativeException(7);
    }

    public static int a(ArrayList<File> arrayList, File file, long j, long j2) throws VireoNativeException, FileNotFoundException, IOException {
        Closeable fileOutputStream;
        Iterator it;
        FileNotFoundException e;
        Throwable th;
        IOException e2;
        ArrayList arrayList2 = new ArrayList();
        Closeable closeable = null;
        try {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new FileInputStream((File) it2.next()));
            }
            ArrayList arrayList3 = new ArrayList();
            it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                arrayList3.add(((FileInputStream) it2.next()).getFD());
            }
            fileOutputStream = new FileOutputStream(file);
            try {
                int a = a(arrayList3, new long[arrayList2.size()], fileOutputStream.getFD());
                if (a != 0) {
                    throw new VireoNativeException(a);
                }
                it = arrayList2.iterator();
                while (it.hasNext()) {
                    a((FileInputStream) it.next());
                }
                a(fileOutputStream);
                return 0;
            } catch (FileNotFoundException e3) {
                e = e3;
                closeable = fileOutputStream;
                try {
                    throw e;
                } catch (Throwable th2) {
                    fileOutputStream = closeable;
                    th = th2;
                }
            } catch (IOException e4) {
                e2 = e4;
                closeable = fileOutputStream;
                throw e2;
            } catch (Throwable th22) {
                th = th22;
                it = arrayList2.iterator();
                while (it.hasNext()) {
                    a((FileInputStream) it.next());
                }
                a(fileOutputStream);
                throw th;
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            throw e;
        } catch (IOException e6) {
            e2 = e6;
            throw e2;
        } catch (Throwable th222) {
            fileOutputStream = null;
            th = th222;
            it = arrayList2.iterator();
            while (it.hasNext()) {
                a((FileInputStream) it.next());
            }
            a(fileOutputStream);
            throw th;
        }
    }

    public static int a(int i, float f) {
        return (((int) (((float) i) * f)) + 1) & -2;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static void a(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor != null) {
            try {
                assetFileDescriptor.close();
            } catch (IOException e) {
            }
        }
    }
}
