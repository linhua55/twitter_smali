package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.widget.TextView;

@TargetApi(19)
/* compiled from: Twttr */
/* renamed from: dda */
public final class dda {
    public static boolean a(Context context) {
        if (context.getResources().getConfiguration().getLayoutDirection() == 1) {
            return true;
        }
        return false;
    }

    public static void a(TextView textView) {
        if ((textView.getGravity() & 7) != 1) {
            textView.setTextAlignment(5);
        }
    }
}
