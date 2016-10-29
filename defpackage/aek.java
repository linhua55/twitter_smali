package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.StringRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.android.moments.viewmodels.j;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.model.moments.a;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: aek */
public class aek {
    private final ViewGroup a;
    private final TextView b;
    private final aia c;
    private final ViewGroup d;
    private final Resources e;
    private final TextView f;
    private final ViewGroup g;

    public aek(Context context) {
        this.a = a(context);
        this.g = (ViewGroup) this.a.findViewById(2131952884);
        this.c = aia.b(this.a);
        this.e = this.a.getResources();
        this.b = (TextView) this.a.findViewById(2131952748);
        ((TextView) this.a.findViewById(2131952750)).setText(2131363113);
        ((ImageView) this.a.findViewById(2131952749)).setVisibility(0);
        this.d = (ViewGroup) this.a.findViewById(2131952885);
        this.f = (TextView) this.a.findViewById(2131952883);
    }

    public View a() {
        return this.a;
    }

    public void a(j jVar) {
        this.f.setVisibility(8);
        this.b.setText(jVar.c());
    }

    public void a(a aVar) {
        this.c.a(aVar);
    }

    public void a(String str) {
        this.c.a(str);
    }

    public void a(View view) {
        this.d.removeAllViews();
        this.d.addView(view);
    }

    public void b(String str) {
        d(a(2131363086, 2131363085, str));
    }

    public void c(String str) {
        d(a(2131363088, 2131363087, str));
    }

    private ViewGroup a(Context context) {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(2130969092, null, true);
        ViewGroup aspectRatioFrameLayout = new AspectRatioFrameLayout(context);
        aspectRatioFrameLayout.setAspectRatio(1.0f);
        aspectRatioFrameLayout.setScaleMode(2);
        viewGroup.addView((ViewGroup) LayoutInflater.from(context).inflate(2130969093, aspectRatioFrameLayout, true));
        return viewGroup;
    }

    private void d(String str) {
        this.g.setVisibility(8);
        this.f.setVisibility(0);
        this.f.setText(str);
    }

    private String a(@StringRes int i, @StringRes int i2, String str) {
        if (aj.a((CharSequence) str)) {
            return this.e.getString(i);
        }
        return this.e.getString(i2, new Object[]{str});
    }
}
