package com.twitter.util.ui;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.support.v4.view.ViewCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListView;
import android.widget.Toast;
import com.twitter.util.af;
import com.twitter.util.aj;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import com.twitter.util.h;
import com.twitter.util.math.Size;
import defpackage.bbn;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: Twttr */
public class r {
    private static final Handler a;
    private static final AtomicInteger b;
    private static Runnable c;
    private static Constructor d;
    private static Object e;
    private static boolean f;
    private static final Set<String> g;

    static {
        a = new Handler(Looper.getMainLooper());
        b = new AtomicInteger(1);
        g = ar.a((Object) "DROID RAZR HD", "XT907", "XT1049", "XT1052", "XT1056", "XT1058", "XT1060");
    }

    public static boolean a(View view) {
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof ListView) {
                return true;
            }
        }
        return false;
    }

    public static void a(Context context, int i) {
        Toast makeText = Toast.makeText(context, i, 1);
        makeText.setGravity(17, 0, 0);
        makeText.show();
    }

    public static void a(Context context, CharSequence charSequence) {
        Toast makeText = Toast.makeText(context, charSequence, 1);
        makeText.setGravity(17, 0, 0);
        makeText.show();
    }

    public static void a(Context context, View view, boolean z) {
        view.postDelayed(new s(context, view, z), 100);
    }

    public static void b(Context context, View view, boolean z) {
        a(context, view, z, null);
    }

    public static void a(Context context, View view, boolean z, ResultReceiver resultReceiver) {
        h.a();
        if (c != null) {
            a.removeCallbacks(c);
            c = null;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager != null && !b(inputMethodManager, view, z, resultReceiver)) {
            c = new t(inputMethodManager, view, z, resultReceiver);
            a.post(c);
        }
    }

    private static boolean b(InputMethodManager inputMethodManager, View view, boolean z, ResultReceiver resultReceiver) {
        c = null;
        if (z) {
            return inputMethodManager.showSoftInput(view, 0, resultReceiver);
        }
        return inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0, resultReceiver);
    }

    public static StaticLayout a(CharSequence charSequence, int i, int i2, TextPaint textPaint, int i3, Alignment alignment, float f, float f2, boolean z, TruncateAt truncateAt, int i4, int i5) {
        if (!f) {
            f = true;
            b();
        }
        if (!(e == null || d == null)) {
            try {
                return (StaticLayout) d.newInstance(new Object[]{charSequence, Integer.valueOf(i), Integer.valueOf(i2), textPaint, Integer.valueOf(i3), alignment, e, Float.valueOf(f), Float.valueOf(f2), Boolean.valueOf(z), truncateAt, Integer.valueOf(i4), Integer.valueOf(i5)});
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
        return null;
    }

    @TargetApi(18)
    private static void b() {
        try {
            Class cls;
            if (VERSION.SDK_INT < 18) {
                cls = Class.forName("android.text.TextDirectionHeuristic");
                e = Class.forName("android.text.TextDirectionHeuristics").getField("FIRSTSTRONG_LTR").get(null);
            } else {
                e = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                cls = TextDirectionHeuristic.class;
            }
            d = StaticLayout.class.getConstructor(new Class[]{CharSequence.class, Integer.TYPE, Integer.TYPE, TextPaint.class, Integer.TYPE, Alignment.class, cls, Float.TYPE, Float.TYPE, Boolean.TYPE, TruncateAt.class, Integer.TYPE, Integer.TYPE});
        } catch (Throwable e) {
            bbn.a(e);
        }
    }

    public static int a(CharSequence charSequence, TextPaint textPaint) {
        return (int) Math.ceil((double) Layout.getDesiredWidth(charSequence, textPaint));
    }

    public static int a(int i, int i2) {
        if (i > i2) {
            return (int) Math.ceil((double) ((i - i2) / 2));
        }
        return (int) Math.ceil((double) ((i2 - i) / 2));
    }

    public static int b(int i, int i2) {
        return (int) Math.ceil((double) ((i - i2) / 2));
    }

    public static Point a(WindowManager windowManager) {
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point;
    }

    public static int a(Activity activity) {
        View decorView = activity.getWindow().getDecorView();
        return decorView.getHeight() - b(decorView.findViewById(16908290), decorView);
    }

    public static int a(View view, View view2) {
        int i = 0;
        while (view != view2) {
            int left = view.getLeft() + i;
            view = (View) view.getParent();
            i = left;
        }
        return i;
    }

    public static int b(View view, View view2) {
        int i = 0;
        while (view != view2) {
            int top = view.getTop() + i;
            view = (View) view.getParent();
            i = top;
        }
        return i;
    }

    public static Size a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return Size.a(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public static Size b(Activity activity) {
        if (VERSION.SDK_INT < 17) {
            return a((Context) activity);
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        return Size.a(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public static RectF a(Activity activity, View view) {
        int[] iArr = new int[2];
        Rect rect = new Rect();
        if (activity != null) {
            activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        }
        if (view == null) {
            return null;
        }
        view.getLocationOnScreen(iArr);
        PointF pointF = new PointF((float) iArr[0], (float) (iArr[1] - rect.top));
        return new RectF(pointF.x, pointF.y, pointF.x + ((float) view.getWidth()), pointF.y + ((float) view.getHeight()));
    }

    public static int a() {
        int i;
        int i2;
        do {
            i = b.get();
            i2 = i + 1;
            if (i2 > ViewCompat.MEASURED_SIZE_MASK) {
                i2 = 1;
            }
        } while (!b.compareAndSet(i, i2));
        return i;
    }

    public static List<View> b(View view) {
        n d = n.d();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                d.c(b(viewGroup.getChildAt(i)));
            }
        } else {
            d.c((Object) view);
        }
        return (List) d.q();
    }

    public static boolean c(View view) {
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            return false;
        }
        ((ViewGroup) parent).removeView(view);
        return true;
    }

    public static Bitmap d(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap drawingCache;
        try {
            drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                Bitmap createBitmap = Bitmap.createBitmap(drawingCache, 0, 0, drawingCache.getWidth(), drawingCache.getHeight(), null, false);
                drawingCache.recycle();
                view.setDrawingCacheEnabled(false);
                return createBitmap;
            }
            view.setDrawingCacheEnabled(false);
            return null;
        } catch (OutOfMemoryError e) {
            view.setDrawingCacheEnabled(false);
        } catch (Throwable th) {
            view.setDrawingCacheEnabled(false);
        }
    }

    public static void a(View view, OnGlobalLayoutListener onGlobalLayoutListener) {
        view.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static String a(View view, boolean z) {
        StringBuilder stringBuilder = new StringBuilder();
        a(stringBuilder, view, z, BuildConfig.VERSION_NAME);
        return stringBuilder.toString();
    }

    public static String a(Object obj) {
        StringBuilder stringBuilder = new StringBuilder();
        Class cls = obj.getClass();
        do {
            for (Field field : cls.getDeclaredFields()) {
                try {
                    field.getType();
                    if (field.isAnnotationPresent(ExportedProperty.class)) {
                        field.setAccessible(true);
                        try {
                            stringBuilder.append(field.getName()).append("=").append(field.get(obj)).append(aj.a());
                        } catch (IllegalAccessException e) {
                        }
                    }
                } catch (NoClassDefFoundError e2) {
                }
            }
            cls = cls.getSuperclass();
        } while (cls != Object.class);
        return stringBuilder.toString();
    }

    private static void a(StringBuilder stringBuilder, View view, boolean z, String str) {
        stringBuilder.append(str);
        if (z) {
            stringBuilder.append(view);
        } else {
            stringBuilder.append(view.getClass().getName()).append(":").append(" id:").append(b(view.getContext(), view.getId())).append(" tag:").append(view.getTag());
        }
        stringBuilder.append(aj.a());
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            String str2 = str + "    ";
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt != null) {
                    a(stringBuilder, childAt, z, str2);
                }
            }
        }
    }

    public static Object b(Context context, int i) {
        Resources resources = context.getResources();
        if (i < 0) {
            return "NO_ID";
        }
        try {
            return resources.getResourceTypeName(i) + '/' + resources.getResourceEntryName(i);
        } catch (NotFoundException e) {
            return "id/" + b(i);
        }
    }

    public static void a(View view, float f) {
        int i = ((double) f) == 1.0d ? 1 : 0;
        view.setAlpha(f);
        if (i != 0) {
            view.setLayerType(0, null);
        } else if (VERSION.SDK_INT == 19 && g.contains(Build.MODEL)) {
            view.setLayerType(0, null);
        } else {
            view.setLayerType(2, null);
        }
    }

    public static void a(View view, int i) {
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
    }

    private static String b(int i) {
        return "0x" + Integer.toHexString(i).toUpperCase();
    }

    public static LayoutParams a(Context context, ViewGroup viewGroup) {
        Throwable e;
        try {
            AttributeSet layout = context.getResources().getLayout(af.params);
            do {
            } while (layout.nextToken() != 2);
            return viewGroup.generateLayoutParams(layout);
        } catch (XmlPullParserException e2) {
            e = e2;
            bbn.a(e);
            return null;
        } catch (IOException e3) {
            e = e3;
            bbn.a(e);
            return null;
        }
    }

    public static int a(int i) {
        int i2 = i % 360;
        return i2 >= 0 ? i2 : i2 + 360;
    }
}
