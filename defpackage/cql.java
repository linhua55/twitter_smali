package defpackage;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import cqm;

/* compiled from: Twttr */
/* renamed from: cql */
public class cql {
    private static boolean a;

    public static boolean a(Intent intent) {
        return intent.hasExtra("pending_transition_compat");
    }

    public static Bundle a(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        Bundle bundle = new Bundle();
        int i = iArr[0];
        int i2 = iArr[1];
        int width = (int) (((float) view.getWidth()) * view.getScaleX());
        int height = (int) (((float) view.getHeight()) * view.getScaleY());
        bundle.putInt("left", i);
        bundle.putInt("top", i2);
        bundle.putInt("width", width);
        bundle.putInt("height", height);
        return bundle;
    }

    public static cqm b(Intent intent) {
        Bundle bundle = (Bundle) intent.getParcelableExtra("view_info");
        if (bundle != null) {
            return new cqm(bundle);
        }
        throw new IllegalArgumentException("Intent does not contain VIEW_INFO_EXTRA");
    }

    public static void a(Activity activity, Intent intent, View view) {
        cql.b(activity, intent, view, -1);
    }

    public static void a(Activity activity, Intent intent, View view, int i) {
        if (a) {
            cql.b(activity, intent, view, i);
        } else {
            cql.a(activity, intent, i);
        }
    }

    private static void b(Activity activity, Intent intent, View view, int i) {
        cql.a(intent, view);
        cql.a(activity, intent, i);
        activity.overridePendingTransition(0, 0);
    }

    private static void a(Intent intent, View view) {
        intent.putExtra("view_info", cql.a(view));
        intent.putExtra("pending_transition_compat", true);
    }

    private static void a(Activity activity, Intent intent, int i) {
        if (i > 0) {
            activity.startActivityForResult(intent, i);
        } else {
            activity.startActivity(intent);
        }
    }

    public static void a(boolean z) {
        a = z;
    }
}
