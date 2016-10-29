package defpackage;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* compiled from: Twttr */
/* renamed from: dcr */
public class dcr {
    public static void a(View view) {
        if (view != null) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static void b(View view) {
        if (view != null) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
        }
    }
}
