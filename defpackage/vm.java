package defpackage;

import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.TextView;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.ui.widget.TwitterSelection;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: vm */
public class vm {
    private final DatePicker a;
    private final TwitterSelection b;
    private final TwitterSelection c;
    private final Button d;
    private final TwitterEditText e;
    private final TextView f;
    private final View g;

    public vm(View view) {
        this.a = (DatePicker) e.a((DatePicker) view.findViewById(2131952384));
        this.b = (TwitterSelection) e.a((TwitterSelection) view.findViewById(2131952386));
        this.c = (TwitterSelection) e.a((TwitterSelection) view.findViewById(2131952387));
        this.d = (Button) e.a((Button) view.findViewById(2131952391));
        this.e = (TwitterEditText) e.a((TwitterEditText) view.findViewById(2131952383));
        this.f = (TextView) e.a((TextView) view.findViewById(2131952389));
        this.g = (View) e.a(view.findViewById(2131952390));
    }
}
