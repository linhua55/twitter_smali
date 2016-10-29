package defpackage;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import bdj;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: sa */
public class sa {
    public static AlertDialog a(Context context, OnClickListener onClickListener) {
        AlertDialog create = new Builder(context).setTitle(2131362407).setPositiveButton(2131363218, onClickListener).setNegativeButton(2131362041, onClickListener).setCancelable(false).create();
        View inflate = LayoutInflater.from(context).inflate(2130968730, null, false);
        Object f = bdj.a(context).f();
        if (aj.b(f)) {
            TextView textView = (TextView) inflate.findViewById(2131952309);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            textView.setText(Html.fromHtml(f));
        }
        create.setView(inflate);
        return create;
    }
}
