package defpackage;

import android.support.v7.widget.RecyclerView.ItemAnimator;
import com.twitter.platform.PlatformContext;
import com.twitter.util.collection.n;
import com.twitter.util.j;
import cuo;
import cuq;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInput;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* compiled from: Twttr */
/* renamed from: cun */
public class cun {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static Iterable<File> a(File file, boolean z) {
        Object[] list = file.list();
        if (list == null) {
            return n.g();
        }
        return z ? new cuo(file, list) : cto.b(cto.a(list), new cuq(file));
    }

    public static void a(File file) throws IOException {
        j.c();
        if (!file.exists() || file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        cun.a(file2);
                    } else {
                        cun.c(file2);
                    }
                }
            }
            cun.c(file);
            return;
        }
        throw new IllegalArgumentException("not a directory: " + file);
    }

    public static void b(File file) {
        j.c();
        if (file != null && file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isDirectory()) {
                        cun.b(file2);
                    } else {
                        cun.d(file2);
                    }
                }
            }
            cun.d(file);
        }
    }

    public static void c(File file) throws IOException {
        j.c();
        if (file.exists() && !file.delete()) {
            throw new IOException("failed to delete file: " + file);
        }
    }

    public static void d(File file) {
        j.c();
        if (file != null) {
            file.delete();
        }
    }

    public static void a(File file, File file2) throws IOException {
        j.c();
        if (!file.renameTo(file2)) {
            throw new IOException("file not renamed " + file + " " + file2);
        }
    }

    public static boolean a(InputStream inputStream, File file) {
        Closeable fileOutputStream;
        Throwable e;
        Throwable th;
        boolean z;
        Throwable th2;
        boolean z2 = false;
        j.c();
        if (cun.e(file)) {
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    if (cun.a(inputStream, (OutputStream) fileOutputStream, (int) ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT) != 0) {
                        z2 = true;
                    }
                    fileOutputStream.flush();
                    cun.a(fileOutputStream);
                    if (!z2) {
                        cun.d(file);
                    }
                } catch (IOException e2) {
                    e = e2;
                    try {
                        bbn.a(e);
                        cun.a(fileOutputStream);
                        if (null == null) {
                            cun.d(file);
                        }
                        return z2;
                    } catch (Throwable e3) {
                        th = e3;
                        z = false;
                        th2 = th;
                        cun.a(fileOutputStream);
                        if (!z) {
                            cun.d(file);
                        }
                        throw th2;
                    }
                }
            } catch (IOException e4) {
                e3 = e4;
                fileOutputStream = null;
                bbn.a(e3);
                cun.a(fileOutputStream);
                if (null == null) {
                    cun.d(file);
                }
                return z2;
            } catch (Throwable e32) {
                fileOutputStream = null;
                th = e32;
                z = false;
                th2 = th;
                cun.a(fileOutputStream);
                if (z) {
                    cun.d(file);
                }
                throw th2;
            }
        }
        return z2;
    }

    public static boolean b(File file, File file2) {
        Closeable fileInputStream;
        Throwable e;
        j.c();
        try {
            fileInputStream = new FileInputStream(file);
            try {
                boolean a = cun.a((InputStream) fileInputStream, file2);
                cun.a(fileInputStream);
                return a;
            } catch (IOException e2) {
                e = e2;
                try {
                    bbn.a(e);
                    cun.a(fileInputStream);
                    return false;
                } catch (Throwable th) {
                    e = th;
                    cun.a(fileInputStream);
                    throw e;
                }
            }
        } catch (IOException e3) {
            e = e3;
            fileInputStream = null;
            bbn.a(e);
            cun.a(fileInputStream);
            return false;
        } catch (Throwable th2) {
            e = th2;
            fileInputStream = null;
            cun.a(fileInputStream);
            throw e;
        }
    }

    public static boolean c(File file, File file2) {
        j.c();
        return cun.e(file2) && (file.renameTo(file2) || (cun.b(file, file2) && file.delete()));
    }

    public static List<String> a(File file, Charset charset) {
        Closeable fileInputStream;
        List<String> arrayList;
        Throwable e;
        j.c();
        try {
            fileInputStream = new FileInputStream(file);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, charset));
                arrayList = new ArrayList();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    arrayList.add(readLine);
                }
                cun.a(fileInputStream);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            e = e3;
            fileInputStream = null;
            try {
                bbn.a(e);
                arrayList = n.g();
                cun.a(fileInputStream);
                return arrayList;
            } catch (Throwable th) {
                e = th;
                cun.a(fileInputStream);
                throw e;
            }
        } catch (Throwable th2) {
            e = th2;
            fileInputStream = null;
            cun.a(fileInputStream);
            throw e;
        }
        return arrayList;
    }

    public static int a(InputStream inputStream, OutputStream outputStream, int i) throws IOException {
        j.c();
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return i2;
            }
            if (outputStream != null) {
                outputStream.write(bArr, 0, read);
            }
            i2 += read;
        }
    }

    public static int a(InputStream inputStream) {
        j.c();
        try {
            return cun.a(inputStream, null, (int) ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);
        } catch (IOException e) {
            return 0;
        }
    }

    public static byte[] b(InputStream inputStream) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            cun.a(inputStream, byteArrayOutputStream, (int) ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT);
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    public static void a(byte[] bArr, ObjectInput objectInput) throws IOException {
        int length = bArr.length;
        int i = 0;
        while (length > 0) {
            int read = objectInput.read(bArr, i, length);
            if (read != -1) {
                i += read;
                length -= read;
            } else {
                return;
            }
        }
    }

    public static boolean a(byte[] bArr, File file) {
        Closeable fileOutputStream;
        Throwable e;
        Throwable th;
        if (!cun.e(file)) {
            return false;
        }
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr, 0, bArr.length);
                fileOutputStream.flush();
                cun.a(fileOutputStream);
                return true;
            } catch (IOException e2) {
                e = e2;
                try {
                    bbn.a(e);
                    cun.d(file);
                    cun.a(fileOutputStream);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    cun.a(fileOutputStream);
                    throw th;
                }
            }
        } catch (IOException e3) {
            e = e3;
            fileOutputStream = null;
            bbn.a(e);
            cun.d(file);
            cun.a(fileOutputStream);
            return false;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            cun.a(fileOutputStream);
            throw th;
        }
    }

    public static boolean a(String str, File file) {
        return cun.a(str, Charset.forName("UTF-8"), file);
    }

    public static boolean a(String str, Charset charset, File file) {
        Throwable e;
        j.c();
        Closeable closeable = null;
        Closeable outputStreamWriter;
        try {
            outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), charset);
            try {
                outputStreamWriter.write(str);
                cun.a(outputStreamWriter);
                return true;
            } catch (IOException e2) {
                e = e2;
                try {
                    bbn.a(e);
                    cun.a(outputStreamWriter);
                    return false;
                } catch (Throwable th) {
                    e = th;
                    closeable = outputStreamWriter;
                    cun.a(closeable);
                    throw e;
                }
            }
        } catch (IOException e3) {
            e = e3;
            outputStreamWriter = null;
            bbn.a(e);
            cun.a(outputStreamWriter);
            return false;
        } catch (Throwable th2) {
            e = th2;
            cun.a(closeable);
            throw e;
        }
    }

    public static boolean e(File file) {
        j.c();
        File parentFile = file.getParentFile();
        return parentFile == null || parentFile.exists() || parentFile.mkdirs();
    }

    public static String a(String str) {
        if (str == null) {
            return null;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf <= 0 || lastIndexOf >= str.length() - 1) {
            return null;
        }
        return str.substring(lastIndexOf + 1).toLowerCase();
    }

    public static File a(InputStream inputStream, String str) {
        j.c();
        File a = PlatformContext.f().e().a(str);
        if (a == null) {
            return null;
        }
        if (!cun.a(inputStream, a)) {
            a = null;
        }
        return a;
    }

    public static boolean f(File file) {
        Closeable zipInputStream;
        Throwable e;
        Throwable th;
        j.c();
        try {
            String absolutePath = file.getAbsolutePath();
            absolutePath = absolutePath.substring(0, absolutePath.lastIndexOf(File.separator));
            zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(file)));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        File file2 = new File(absolutePath + File.separator + nextEntry.getName());
                        if (nextEntry.isDirectory()) {
                            cun.e(file2);
                        } else {
                            byte[] b = cun.b((InputStream) zipInputStream);
                            if (b != null) {
                                cun.a(b, file2);
                            }
                            zipInputStream.closeEntry();
                        }
                    } else {
                        cun.a(zipInputStream);
                        return true;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            }
        } catch (IOException e3) {
            e = e3;
            zipInputStream = null;
            try {
                bbn.a(e);
                cun.a(zipInputStream);
                return false;
            } catch (Throwable th2) {
                th = th2;
                cun.a(zipInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            zipInputStream = null;
            cun.a(zipInputStream);
            throw th;
        }
    }
}
