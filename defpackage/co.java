package defpackage;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.os.Build.VERSION;
import cp;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;

/* compiled from: Twttr */
/* renamed from: co */
public class co {
    private static final FileFilter a;

    public static int a() {
        int i = -1;
        if (VERSION.SDK_INT <= 10) {
            return 1;
        }
        try {
            return new File("/sys/devices/system/cpu/").listFiles(a).length;
        } catch (SecurityException e) {
            return i;
        } catch (NullPointerException e2) {
            return i;
        }
    }

    static {
        a = new cp();
    }

    public static int b() {
        int i = -1;
        for (int i2 = 0; i2 < co.a(); i2++) {
            File file = new File("/sys/devices/system/cpu/cpu" + i2 + "/cpufreq/cpuinfo_max_freq");
            int i3;
            if (file.exists()) {
                byte[] bArr = new byte[128];
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    fileInputStream.read(bArr);
                    i3 = 0;
                    while (bArr[i3] >= 48 && bArr[i3] <= 57 && i3 < bArr.length) {
                        i3++;
                    }
                    Integer valueOf = Integer.valueOf(Integer.parseInt(new String(bArr, 0, i3)));
                    if (valueOf.intValue() > i) {
                        i = valueOf.intValue();
                    }
                    fileInputStream.close();
                } catch (NumberFormatException e) {
                    fileInputStream.close();
                } catch (IOException e2) {
                    return -1;
                } catch (Throwable th) {
                    fileInputStream.close();
                }
            }
        }
        if (i != -1) {
            return i;
        }
        FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
        i3 = co.a("cpu MHz", fileInputStream2) * ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
        if (i3 > i) {
            i = i3;
        }
        fileInputStream2.close();
        return i;
    }

    @TargetApi(16)
    public static long a(Context context) {
        if (VERSION.SDK_INT >= 16) {
            MemoryInfo memoryInfo = new MemoryInfo();
            ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
            if (memoryInfo != null) {
                return memoryInfo.totalMem;
            }
            return -1;
        }
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream("/proc/meminfo");
            long a = ((long) co.a("MemTotal", fileInputStream)) * 1024;
            try {
                fileInputStream.close();
                return a;
            } catch (IOException e) {
                return a;
            }
        } catch (IOException e2) {
            return -1;
        } catch (Throwable th) {
            fileInputStream.close();
        }
    }

    private static int a(String str, FileInputStream fileInputStream) {
        byte[] bArr = new byte[1024];
        try {
            int read = fileInputStream.read(bArr);
            int i = 0;
            while (i < read) {
                if (bArr[i] == (byte) 10 || i == 0) {
                    if (bArr[i] == (byte) 10) {
                        i++;
                    }
                    int i2 = i;
                    while (i2 < read) {
                        int i3 = i2 - i;
                        if (bArr[i2] != str.charAt(i3)) {
                            break;
                            continue;
                        } else if (i3 == str.length() - 1) {
                            return co.a(bArr, i2);
                        } else {
                            i2++;
                        }
                    }
                    continue;
                }
                i++;
            }
        } catch (IOException e) {
        } catch (NumberFormatException e2) {
        }
        return -1;
    }

    private static int a(byte[] bArr, int i) {
        while (i < bArr.length && bArr[i] != 10) {
            if (bArr[i] < (byte) 48 || bArr[i] > (byte) 57) {
                i++;
            } else {
                int i2 = i + 1;
                while (i2 < bArr.length && bArr[i2] >= (byte) 48 && bArr[i2] <= (byte) 57) {
                    i2++;
                }
                return Integer.parseInt(new String(bArr, 0, i, i2 - i));
            }
        }
        return -1;
    }
}
