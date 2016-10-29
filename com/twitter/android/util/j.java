package com.twitter.android.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.Camera.Size;
import android.os.Build;
import android.support.v4.widget.AutoScrollHelper;
import android.view.View;
import com.twitter.config.d;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import java.util.List;

/* compiled from: Twttr */
public class j {
    public static final float[] a;

    static {
        a = new float[]{0.0f, 0.2f, AutoScrollHelper.NO_MAX};
    }

    public static void a(View view, int i, int i2, int i3) {
        view.clearAnimation();
        if (view.getRotation() != ((float) i)) {
            if (view.getVisibility() != 0 || i2 == 0) {
                view.setRotation((float) i);
            } else {
                view.post(new k(i, view, i2, i3));
            }
        }
    }

    private static float a(int i, Size size) {
        int min = Math.min(size.width, size.height);
        if (min >= i) {
            return (float) (min - i);
        }
        if (((float) min) / ((float) i) < 0.9f) {
            return ((float) (i - min)) * 5.0f;
        }
        return (float) (i - min);
    }

    public static float a(Size size) {
        float f = (float) size.width;
        float f2 = (float) size.height;
        return f < f2 ? f / f2 : f2 / f;
    }

    public static Size a(List<Size> list, int i, float f) {
        if (list == null) {
            return null;
        }
        float[] fArr = a;
        int length = fArr.length;
        int i2 = 0;
        float f2 = Float.MAX_VALUE;
        Size size = null;
        while (i2 < length) {
            float f3 = fArr[i2];
            Size size2 = size;
            float f4 = f2;
            for (Size size3 : list) {
                float a = a(size3);
                if (Math.abs(a - f) <= f3) {
                    if (size2 == null) {
                        f4 = a(i, size3);
                        size2 = size3;
                    } else {
                        float a2 = a(size2);
                        float abs = Math.abs(a - f);
                        float abs2 = Math.abs(a2 - f);
                        Object obj = Math.abs(a - a2) < a2 * 0.05f ? 1 : null;
                        a2 = a(i, size3);
                        if (abs < abs2 || (obj != null && a2 < f4)) {
                            size = size3;
                            f2 = a2;
                        } else {
                            f2 = f4;
                            size = size2;
                        }
                        size2 = size;
                        f4 = f2;
                    }
                }
            }
            if (size2 != null) {
                return size2;
            }
            i2++;
            f2 = f4;
            size = size2;
        }
        return size;
    }

    public static int[] a(List<int[]> list) {
        int[] iArr = null;
        if (list != null) {
            int i = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            int i2 = 0;
            for (int[] iArr2 : list) {
                int[] iArr22;
                int i3;
                int i4 = iArr22[0];
                int i5 = iArr22[1];
                if (i5 < 30000 || i4 > 30000 || (i4 >= i && (i4 != i || i5 <= i2))) {
                    iArr22 = iArr;
                    i3 = i2;
                    i2 = i;
                } else {
                    i3 = i5;
                    i2 = i4;
                }
                i = i2;
                i2 = i3;
                iArr = iArr22;
            }
        }
        return iArr;
    }

    public static int a(int i, int i2) {
        Object obj = 1;
        if (i2 != -1) {
            int abs = Math.abs(i - i2);
            if (Math.min(abs, 360 - abs) < 50) {
                obj = null;
            }
        }
        return obj != null ? (((i + 45) / 90) * 90) % 360 : i2;
    }

    public static void a(int i, String str, long j) {
        String str2 = (i == 0 || i == 180) ? "portrait" : "landscape";
        bbu.a((TwitterScribeLog) new TwitterScribeLog(j).b("twitter_camera::" + str + ":rotate:" + str2));
    }

    public static boolean a(View view, int i, int i2) {
        return i >= 0 && i < view.getWidth() && i2 >= 0 && i2 < view.getHeight();
    }

    public static boolean a() {
        return d.a("video_compose_enabled", true) && d.a("video_compose_capture_enabled", true);
    }

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        return packageManager.hasSystemFeature("android.hardware.camera") || packageManager.hasSystemFeature("android.hardware.camera.front");
    }

    public static boolean b() {
        return Build.MANUFACTURER.equals("samsung") && (Build.DEVICE.equals("d2att") || Build.DEVICE.equals("d2cri") || Build.DEVICE.equals("d2lte") || Build.DEVICE.equals("d2mtr") || Build.DEVICE.equals("d2spr") || Build.DEVICE.equals("d2mo") || Build.DEVICE.equals("d2usc") || Build.DEVICE.equals("d2vzw"));
    }

    public static boolean c() {
        return Build.MANUFACTURER.equals("samsung") && (Build.DEVICE.equals("galaxys2") || Build.DEVICE.equals("galaxys2att") || Build.DEVICE.equals("d710"));
    }

    public static boolean d() {
        return d.a("video_compose_capture_landscape_enabled");
    }
}
