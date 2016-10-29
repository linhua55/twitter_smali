package defpackage;

import android.content.res.Resources;
import android.support.annotation.IdRes;
import android.support.annotation.StringRes;
import android.view.View;
import android.widget.TextView;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: ced */
public class ced {
    private final Resources a;
    @StringRes
    private final int b;
    private final View c;
    private final TextView d;

    public ced(Resources resources, @StringRes int i, View view, @IdRes int i2) {
        this.a = resources;
        this.b = i;
        this.c = view;
        this.d = (TextView) view.findViewById(i2);
    }

    public void a(Tweet tweet) {
        this.d.setText(this.a.getString(this.b, new Object[]{tweet.d()}));
    }
}
