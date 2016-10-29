package com.twitter.android.media.camera;

import android.app.Activity;
import android.content.Context;
import android.view.OrientationEventListener;
import android.view.WindowManager;
import com.twitter.android.util.j;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
public class aa {
    private static int a;
    private static int b;
    private final OrientationEventListener c;
    private int d;
    private int e;
    private int f;
    private ac g;

    static {
        a = -1;
        b = -1;
    }

    public aa(Context context) {
        this.d = -1;
        this.e = -1;
        ab abVar = new ab(this, context.getApplicationContext());
        if (abVar.canDetectOrientation()) {
            abVar.enable();
            this.c = abVar;
            return;
        }
        this.c = null;
    }

    void a(int i) {
        if (i != -1) {
            int a = j.a(i, this.d);
            if (a == this.d) {
                return;
            }
            if (a == this.e) {
                this.f++;
                if (this.f == 3) {
                    this.d = a;
                    if (this.g != null) {
                        this.g.d_(a);
                        return;
                    }
                    return;
                }
                return;
            }
            this.e = a;
            this.f = 1;
        }
    }

    public void a(ac acVar) {
        this.g = acVar;
    }

    public void a() {
        if (this.c != null) {
            this.c.enable();
        }
    }

    public void b() {
        if (this.c != null) {
            this.c.disable();
        }
    }

    public static int a(Context context, int i) {
        return r.a(a(context) - i);
    }

    public static int a(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation() * 90;
    }

    public static int b(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = context.getResources().getConfiguration().orientation;
        if (((rotation == 0 || rotation == 2) && i == 1) || ((rotation == 1 || rotation == 3) && i == 2)) {
            return 1;
        }
        return 2;
    }

    public static void a(Activity activity) {
        if (a == -1) {
            int requestedOrientation = activity.getRequestedOrientation();
            activity.setRequestedOrientation(0);
            a = a((Context) activity);
            activity.setRequestedOrientation(1);
            b = a((Context) activity);
            activity.setRequestedOrientation(requestedOrientation);
        }
    }

    public static int c(Context context) {
        int a = a(context);
        if (a == b) {
            return 1;
        }
        if (a == a) {
            return 0;
        }
        if (Math.abs(a - b) == 180) {
            return 9;
        }
        if (Math.abs(a - a) == 180) {
            return 8;
        }
        return -1;
    }
}
