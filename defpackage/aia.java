package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.VisibleForTesting;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.twitter.media.request.b;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.moments.a;
import com.twitter.model.moments.ab;
import com.twitter.util.collection.ar;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: aia */
public class aia {
    private final Resources a;
    private final View b;
    private final TextView c;
    private final MediaImageView d;
    private final ImageView e;
    private final TextView f;
    @ColorInt
    private final int g;
    @ColorInt
    private final int h;

    public static aia a(View view) {
        Context context = view.getContext();
        return new aia(view.getResources(), view, ContextCompat.getColor(context, 2131886089), ContextCompat.getColor(context, 2131886180), 2130839985);
    }

    public static aia b(View view) {
        Context context = view.getContext();
        return new aia(view.getResources(), view, ContextCompat.getColor(context, 2131886429), ContextCompat.getColor(context, 2131886411), 2130839506);
    }

    @VisibleForTesting
    aia(Resources resources, View view, @ColorInt int i, @ColorInt int i2, @DrawableRes int i3) {
        this.a = resources;
        this.b = view;
        this.g = i;
        this.h = i2;
        this.c = (TextView) view.findViewById(2131952744);
        this.d = (MediaImageView) view.findViewById(2131952743);
        this.e = (ImageView) view.findViewById(2131952745);
        this.e.setVisibility(8);
        this.e.setImageResource(i3);
        this.f = (TextView) view.findViewById(2131952601);
    }

    public void a(a aVar) {
        this.b.setVisibility(0);
        this.d.setVisibility(0);
        this.d.a(new b(aVar.f));
        this.b.getViewTreeObserver().addOnGlobalLayoutListener(new aib(this));
        this.c.setText(aVar.d);
        this.c.setTextColor(this.g);
        this.c.setAllCaps(false);
        this.f.setVisibility(0);
        this.f.setText(this.a.getString(2131364279, new Object[]{aVar.e}));
        if (aVar.c) {
            this.e.setVisibility(0);
        } else {
            this.e.setVisibility(8);
        }
    }

    private void e() {
        if (a() >= b()) {
            int b = (int) (((float) b()) * 0.25f);
            this.c.setMaxWidth((int) (((float) b()) * 0.65f));
            this.f.setMaxWidth(b);
        }
    }

    protected int a() {
        return c(this.c) + c(this.f);
    }

    protected int b() {
        return (((View) this.d.getParent()).getWidth() - c(this.d)) - c(this.e);
    }

    private int c(View view) {
        int i;
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof MarginLayoutParams) {
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) layoutParams;
            i = marginLayoutParams.rightMargin + marginLayoutParams.leftMargin;
        } else {
            i = 0;
        }
        return i + view.getWidth();
    }

    public void a(String str) {
        this.d.setVisibility(8);
        this.c.setText(str);
        this.c.setAllCaps(true);
        this.c.setTextSize(0, (float) this.c.getResources().getDimensionPixelSize(2131690219));
        this.c.setTextColor(this.h);
        this.f.setVisibility(8);
        this.e.setVisibility(8);
    }

    public void a(ab abVar) {
        if (abVar.o != null) {
            a(abVar.o);
        } else {
            a(abVar.g);
        }
    }

    public Set<View> c() {
        return ar.a(this.c, this.f);
    }

    public void d() {
        this.b.setVisibility(8);
    }

    public void a(OnClickListener onClickListener) {
        this.b.setOnClickListener(onClickListener);
    }
}
