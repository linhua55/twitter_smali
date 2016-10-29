package defpackage;

import android.app.Activity;
import android.support.annotation.StringRes;
import android.widget.Toast;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
/* renamed from: afo */
public class afo {
    private final WeakReference<Activity> a;

    public afo(Activity activity) {
        this.a = new WeakReference(activity);
    }

    public void a(@StringRes int i) {
        Activity activity = (Activity) this.a.get();
        if (activity != null) {
            Toast.makeText(activity, i, 0).show();
            activity.findViewById(16908290).postDelayed(new afp(this, activity), 1500);
        }
    }
}
