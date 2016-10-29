package defpackage;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import bun;
import buo;
import com.twitter.util.math.Size;
import cqs;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bum */
public class bum {
    private final ImageView a;
    private final cqs b;
    private final ViewGroup c;
    private final Rect d;
    private final int[] e;

    public bum(FrameLayout frameLayout) {
        this.d = new Rect();
        this.e = new int[2];
        this.c = frameLayout;
        this.a = new ImageView(frameLayout.getContext());
        this.a.setLayoutParams(new LayoutParams(-2, -2));
        this.a.setVisibility(8);
        this.c.addView(this.a);
        this.b = new cqs(this.c);
    }

    public void a(List<Integer> list) {
        this.b.a(list);
    }

    public void b(List<String> list) {
        this.b.b(list);
    }

    public void a(View view) {
        int[] iArr = new int[2];
        this.c.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        Size b = this.b.b();
        int width = iArr2[0] + (view.getWidth() / 2);
        width = (width - iArr[0]) - (b.a() / 2);
        int height = ((iArr2[1] + (view.getHeight() / 2)) - iArr[1]) - (b.b() / 2);
        if (((float) width) != this.a.getX() || ((float) height) != this.a.getY()) {
            this.a.setX((float) width);
            this.a.setY((float) height);
        }
    }

    public void b(View view) {
        a(view);
        this.a.setVisibility(0);
        this.a.setOnTouchListener(new bun(this, view));
        this.b.a(new buo(this, view)).a();
    }

    public void c(View view) {
        this.b.e();
        view.setVisibility(0);
    }

    public View a() {
        return this.a;
    }

    public void b() {
        this.b.f();
    }

    private boolean a(View view, int i, int i2) {
        view.getDrawingRect(this.d);
        view.getLocationOnScreen(this.e);
        this.d.offset(this.e[0], this.e[1]);
        return this.d.contains(i, i2);
    }
}
