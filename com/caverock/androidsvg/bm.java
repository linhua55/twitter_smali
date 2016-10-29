package com.caverock.androidsvg;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.PathMeasure;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.util.Base64;
import android.util.Log;
import com.caverock.androidsvg.PreserveAspectRatio.Alignment;
import com.caverock.androidsvg.PreserveAspectRatio.Scale;
import com.caverock.androidsvg.SVG.GradientSpread;
import com.caverock.androidsvg.SVG.Style;
import com.caverock.androidsvg.SVG.Style.FillRule;
import com.caverock.androidsvg.SVG.Style.FontStyle;
import com.caverock.androidsvg.SVG.Style.LineCaps;
import com.caverock.androidsvg.SVG.Style.LineJoin;
import com.caverock.androidsvg.SVG.Style.TextAnchor;
import com.caverock.androidsvg.SVG.Style.TextDecoration;
import com.caverock.androidsvg.SVG.Style.TextDirection;
import com.caverock.androidsvg.SVG.Style.VectorEffect;
import com.caverock.androidsvg.SVG.Unit;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.Stack;

/* compiled from: Twttr */
public class bm {
    private static HashSet<String> l;
    private static /* synthetic */ int[] m;
    private static /* synthetic */ int[] n;
    private static /* synthetic */ int[] o;
    private static /* synthetic */ int[] p;
    private Canvas a;
    private k b;
    private float c;
    private boolean d;
    private SVG e;
    private bt f;
    private Stack<bt> g;
    private Stack<aq> h;
    private Stack<Matrix> i;
    private Stack<Canvas> j;
    private Stack<Bitmap> k;

    static /* synthetic */ int[] e() {
        int[] iArr = m;
        if (iArr == null) {
            iArr = new int[Alignment.values().length];
            try {
                iArr[Alignment.None.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[Alignment.XMaxYMax.ordinal()] = 10;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[Alignment.XMaxYMid.ordinal()] = 7;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[Alignment.XMaxYMin.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[Alignment.XMidYMax.ordinal()] = 9;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[Alignment.XMidYMid.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[Alignment.XMidYMin.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[Alignment.XMinYMax.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[Alignment.XMinYMid.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[Alignment.XMinYMin.ordinal()] = 2;
            } catch (NoSuchFieldError e10) {
            }
            m = iArr;
        }
        return iArr;
    }

    static /* synthetic */ int[] f() {
        int[] iArr = n;
        if (iArr == null) {
            iArr = new int[LineCaps.values().length];
            try {
                iArr[LineCaps.Butt.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[LineCaps.Round.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[LineCaps.Square.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            n = iArr;
        }
        return iArr;
    }

    static /* synthetic */ int[] g() {
        int[] iArr = o;
        if (iArr == null) {
            iArr = new int[LineJoin.values().length];
            try {
                iArr[LineJoin.Bevel.ordinal()] = 3;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[LineJoin.Miter.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[LineJoin.Round.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            o = iArr;
        }
        return iArr;
    }

    static /* synthetic */ int[] h() {
        int[] iArr = p;
        if (iArr == null) {
            iArr = new int[FillRule.values().length];
            try {
                iArr[FillRule.EvenOdd.ordinal()] = 2;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[FillRule.NonZero.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            p = iArr;
        }
        return iArr;
    }

    static {
        l = null;
    }

    private void i() {
        this.f = new bt(this);
        this.g = new Stack();
        a(this.f, Style.a());
        this.f.f = this.b;
        this.f.h = false;
        this.f.i = this.d;
        this.g.push((bt) this.f.clone());
        this.j = new Stack();
        this.k = new Stack();
        this.i = new Stack();
        this.h = new Stack();
    }

    protected bm(Canvas canvas, k kVar, float f) {
        this.a = canvas;
        this.c = f;
        this.b = kVar;
    }

    protected float a() {
        return this.c;
    }

    protected float b() {
        return this.f.d.getTextSize();
    }

    protected float c() {
        return this.f.d.getTextSize() / 2.0f;
    }

    protected k d() {
        if (this.f.g != null) {
            return this.f.g;
        }
        return this.f.f;
    }

    protected void a(SVG svg, k kVar, PreserveAspectRatio preserveAspectRatio, boolean z) {
        this.e = svg;
        this.d = z;
        au b = svg.b();
        if (b == null) {
            d("Nothing to render. Document is empty.", new Object[0]);
            return;
        }
        i();
        b(b);
        a(b, b.c, b.d, kVar != null ? kVar : b.x, preserveAspectRatio != null ? preserveAspectRatio : b.w);
    }

    private void a(au auVar) {
        if (!(auVar instanceof ab)) {
            j();
            b(auVar);
            if (auVar instanceof am) {
                a((am) auVar);
            } else if (auVar instanceof bk) {
                a((bk) auVar);
            } else if (auVar instanceof az) {
                a((az) auVar);
            } else if (auVar instanceof u) {
                a((u) auVar);
            } else if (auVar instanceof w) {
                a((w) auVar);
            } else if (auVar instanceof ad) {
                a((ad) auVar);
            } else if (auVar instanceof aj) {
                a((aj) auVar);
            } else if (auVar instanceof m) {
                a((m) auVar);
            } else if (auVar instanceof r) {
                a((r) auVar);
            } else if (auVar instanceof y) {
                a((y) auVar);
            } else if (auVar instanceof ai) {
                a((ai) auVar);
            } else if (auVar instanceof ah) {
                a((ah) auVar);
            } else if (auVar instanceof bd) {
                a((bd) auVar);
            }
            k();
        }
    }

    private void a(aq aqVar, boolean z) {
        if (z) {
            a(aqVar);
        }
        for (au a : aqVar.a()) {
            a(a);
        }
        if (z) {
            l();
        }
    }

    private void j() {
        this.a.save();
        this.g.push(this.f);
        this.f = (bt) this.f.clone();
    }

    private void k() {
        this.a.restore();
        this.f = (bt) this.g.pop();
    }

    private void a(aq aqVar) {
        this.h.push(aqVar);
        this.i.push(this.a.getMatrix());
    }

    private void l() {
        this.h.pop();
        this.i.pop();
    }

    private void a(bt btVar, as asVar) {
        btVar.a.a(asVar.v == null);
        if (asVar.r != null) {
            a(btVar, asVar.r);
        }
        if (this.e.d()) {
            for (c cVar : this.e.c()) {
                if (CSSParser.a(cVar.a, asVar)) {
                    a(btVar, cVar.b);
                }
            }
        }
        if (asVar.s != null) {
            a(btVar, asVar.s);
        }
    }

    private void b(au auVar) {
        if (auVar instanceof as) {
            as asVar = (as) auVar;
            if (asVar.q != null) {
                this.f.h = asVar.q.booleanValue();
            }
        }
    }

    private void a(ar arVar, Path path) {
        if (this.f.a.b instanceof ac) {
            au a = this.e.a(((ac) this.f.a.b).a);
            if (a instanceof ag) {
                a(arVar, path, (ag) a);
                return;
            }
        }
        this.a.drawPath(path, this.f.d);
    }

    private void a(Path path) {
        if (this.f.a.L == VectorEffect.NonScalingStroke) {
            Matrix matrix = this.a.getMatrix();
            Path path2 = new Path();
            path.transform(matrix, path2);
            this.a.setMatrix(new Matrix());
            Shader shader = this.f.e.getShader();
            Matrix matrix2 = new Matrix();
            if (shader != null) {
                shader.getLocalMatrix(matrix2);
                Matrix matrix3 = new Matrix(matrix2);
                matrix3.postConcat(matrix);
                shader.setLocalMatrix(matrix3);
            }
            this.a.drawPath(path2, this.f.e);
            this.a.setMatrix(matrix);
            if (shader != null) {
                shader.setLocalMatrix(matrix2);
                return;
            }
            return;
        }
        this.a.drawPath(path, this.f.e);
    }

    private static void d(String str, Object... objArr) {
        Log.w("SVGAndroidRenderer", String.format(str, objArr));
    }

    private static void e(String str, Object... objArr) {
        Log.e("SVGAndroidRenderer", String.format(str, objArr));
    }

    private static void f(String str, Object... objArr) {
    }

    private void a(am amVar) {
        a(amVar, amVar.c, amVar.d);
    }

    private void a(am amVar, x xVar, x xVar2) {
        a(amVar, xVar, xVar2, amVar.x, amVar.w);
    }

    private void a(am amVar, x xVar, x xVar2, k kVar, PreserveAspectRatio preserveAspectRatio) {
        float f = 0.0f;
        f("Svg render", new Object[0]);
        if (xVar != null && xVar.b()) {
            return;
        }
        if (xVar2 == null || !xVar2.b()) {
            PreserveAspectRatio preserveAspectRatio2 = preserveAspectRatio == null ? amVar.w != null ? amVar.w : PreserveAspectRatio.c : preserveAspectRatio;
            a(this.f, (as) amVar);
            if (s()) {
                float a;
                if (amVar.v != null) {
                    a = amVar.a != null ? amVar.a.a(this) : 0.0f;
                    if (amVar.b != null) {
                        f = amVar.b.b(this);
                    }
                } else {
                    a = 0.0f;
                }
                k d = d();
                this.f.f = new k(a, f, xVar != null ? xVar.a(this) : d.c, xVar2 != null ? xVar2.b(this) : d.d);
                if (!this.f.a.v.booleanValue()) {
                    a(this.f.f.a, this.f.f.b, this.f.f.c, this.f.f.d);
                }
                a((ar) amVar, this.f.f);
                if (kVar != null) {
                    this.a.concat(a(this.f.f, kVar, preserveAspectRatio2));
                    this.f.g = amVar.x;
                } else {
                    this.a.translate(a, f);
                }
                boolean m = m();
                v();
                a((aq) amVar, true);
                if (m) {
                    b((ar) amVar);
                }
                a((ar) amVar);
            }
        }
    }

    private void a(u uVar) {
        f("Group render", new Object[0]);
        a(this.f, (as) uVar);
        if (s()) {
            if (uVar.b != null) {
                this.a.concat(uVar.b);
            }
            d(uVar);
            boolean m = m();
            a((aq) uVar, true);
            if (m) {
                b((ar) uVar);
            }
            a((ar) uVar);
        }
    }

    private void a(ar arVar) {
        if (arVar.v != null && arVar.o != null) {
            Matrix matrix = new Matrix();
            if (((Matrix) this.i.peek()).invert(matrix)) {
                float[] fArr = new float[]{arVar.o.a, arVar.o.b, arVar.o.a(), arVar.o.b, arVar.o.a(), arVar.o.b(), arVar.o.a, arVar.o.b()};
                matrix.preConcat(this.a.getMatrix());
                matrix.mapPoints(fArr);
                RectF rectF = new RectF(fArr[0], fArr[1], fArr[0], fArr[1]);
                for (int i = 2; i <= 6; i += 2) {
                    if (fArr[i] < rectF.left) {
                        rectF.left = fArr[i];
                    }
                    if (fArr[i] > rectF.right) {
                        rectF.right = fArr[i];
                    }
                    if (fArr[i + 1] < rectF.top) {
                        rectF.top = fArr[i + 1];
                    }
                    if (fArr[i + 1] > rectF.bottom) {
                        rectF.bottom = fArr[i + 1];
                    }
                }
                ar arVar2 = (ar) this.h.peek();
                if (arVar2.o == null) {
                    arVar2.o = k.a(rectF.left, rectF.top, rectF.right, rectF.bottom);
                } else {
                    arVar2.o.a(k.a(rectF.left, rectF.top, rectF.right, rectF.bottom));
                }
            }
        }
    }

    private boolean m() {
        if (!n()) {
            return false;
        }
        this.a.saveLayerAlpha(null, a(this.f.a.m.floatValue()), 4);
        this.g.push(this.f);
        this.f = (bt) this.f.clone();
        if (this.f.a.G != null && this.f.i) {
            au a = this.e.a(this.f.a.G);
            if (a == null || !(a instanceof aa)) {
                e("Mask reference '%s' not found", this.f.a.G);
                this.f.a.G = null;
                return true;
            }
            this.j.push(this.a);
            o();
        }
        return true;
    }

    private void b(ar arVar) {
        if (this.f.a.G != null && this.f.i) {
            au a = this.e.a(this.f.a.G);
            o();
            a((aa) a, arVar);
            Bitmap p = p();
            this.a = (Canvas) this.j.pop();
            this.a.save();
            this.a.setMatrix(new Matrix());
            this.a.drawBitmap(p, 0.0f, 0.0f, this.f.d);
            p.recycle();
            this.a.restore();
        }
        k();
    }

    private boolean n() {
        if (!(this.f.a.G == null || this.f.i)) {
            d("Masks are not supported when using getPicture()", new Object[0]);
        }
        if (this.f.a.m.floatValue() < 1.0f || (this.f.a.G != null && this.f.i)) {
            return true;
        }
        return false;
    }

    private void o() {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(this.a.getWidth(), this.a.getHeight(), Config.ARGB_8888);
            this.k.push(createBitmap);
            Canvas canvas = new Canvas(createBitmap);
            canvas.setMatrix(this.a.getMatrix());
            this.a = canvas;
        } catch (OutOfMemoryError e) {
            e("Not enough memory to create temporary bitmaps for mask processing", new Object[0]);
            throw e;
        }
    }

    private Bitmap p() {
        Bitmap bitmap = (Bitmap) this.k.pop();
        Bitmap bitmap2 = (Bitmap) this.k.pop();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width];
        int[] iArr2 = new int[width];
        for (int i = 0; i < height; i++) {
            bitmap.getPixels(iArr, 0, width, 0, i, width, 1);
            bitmap2.getPixels(iArr2, 0, width, 0, i, width, 1);
            for (int i2 = 0; i2 < width; i2++) {
                int i3 = iArr[i2];
                int i4 = i3 & NalUnitUtil.EXTENDED_SAR;
                int i5 = (i3 >> 8) & NalUnitUtil.EXTENDED_SAR;
                int i6 = (i3 >> 16) & NalUnitUtil.EXTENDED_SAR;
                i3 = (i3 >> 24) & NalUnitUtil.EXTENDED_SAR;
                if (i3 == 0) {
                    iArr2[i2] = 0;
                } else {
                    i4 *= 2362;
                    i3 = (i3 * (i4 + ((i5 * 23442) + (i6 * 6963)))) / 8355840;
                    i4 = iArr2[i2];
                    iArr2[i2] = (((i3 * ((i4 >> 24) & NalUnitUtil.EXTENDED_SAR)) / NalUnitUtil.EXTENDED_SAR) << 24) | (i4 & 16777215);
                }
            }
            bitmap2.setPixels(iArr2, 0, width, 0, i, width, 1);
        }
        bitmap.recycle();
        return bitmap2;
    }

    private void a(az azVar) {
        f("Switch render", new Object[0]);
        a(this.f, (as) azVar);
        if (s()) {
            if (azVar.b != null) {
                this.a.concat(azVar.b);
            }
            d(azVar);
            boolean m = m();
            b(azVar);
            if (m) {
                b((ar) azVar);
            }
            a((ar) azVar);
        }
    }

    private void b(az azVar) {
        String language = Locale.getDefault().getLanguage();
        bx e = this.e.e();
        for (au auVar : azVar.a()) {
            if (auVar instanceof an) {
                an anVar = (an) auVar;
                if (anVar.c() == null) {
                    Set d = anVar.d();
                    if (d == null || (!d.isEmpty() && d.contains(language))) {
                        Collection b = anVar.b();
                        if (b != null) {
                            if (l == null) {
                                q();
                            }
                            if (b.isEmpty()) {
                                continue;
                            } else if (!l.containsAll(b)) {
                                continue;
                            }
                        }
                        Set<String> e2 = anVar.e();
                        if (e2 != null) {
                            if (!(e2.isEmpty() || e == null)) {
                                for (String b2 : e2) {
                                    if (!e.b(b2)) {
                                        break;
                                    }
                                }
                            }
                        }
                        Set<String> f = anVar.f();
                        if (f != null) {
                            if (!(f.isEmpty() || e == null)) {
                                for (String a : f) {
                                    if (e.a(a, this.f.a.q.intValue(), String.valueOf(this.f.a.r)) == null) {
                                    }
                                }
                            }
                        }
                        a(auVar);
                        return;
                    }
                }
                continue;
            }
        }
    }

    private static synchronized void q() {
        synchronized (bm.class) {
            l = new HashSet();
            l.add("Structure");
            l.add("BasicStructure");
            l.add("ConditionalProcessing");
            l.add("Image");
            l.add("Style");
            l.add("ViewportAttribute");
            l.add("Shape");
            l.add("BasicText");
            l.add("PaintAttribute");
            l.add("BasicPaintAttribute");
            l.add("OpacityAttribute");
            l.add("BasicGraphicsAttribute");
            l.add("Marker");
            l.add("Gradient");
            l.add("Pattern");
            l.add("Clip");
            l.add("BasicClip");
            l.add("Mask");
            l.add("View");
        }
    }

    private void a(bk bkVar) {
        float f = 0.0f;
        f("Use render", new Object[0]);
        if (bkVar.e != null && bkVar.e.b()) {
            return;
        }
        if (bkVar.f == null || !bkVar.f.b()) {
            a(this.f, (as) bkVar);
            if (s()) {
                au a = bkVar.u.a(bkVar.a);
                if (a == null) {
                    e("Use reference '%s' not found", bkVar.a);
                    return;
                }
                if (bkVar.b != null) {
                    this.a.concat(bkVar.b);
                }
                Matrix matrix = new Matrix();
                float a2 = bkVar.c != null ? bkVar.c.a(this) : 0.0f;
                if (bkVar.d != null) {
                    f = bkVar.d.b(this);
                }
                matrix.preTranslate(a2, f);
                this.a.concat(matrix);
                d(bkVar);
                boolean m = m();
                a((aq) bkVar);
                if (a instanceof am) {
                    j();
                    am amVar = (am) a;
                    a(amVar, bkVar.e != null ? bkVar.e : amVar.c, bkVar.f != null ? bkVar.f : amVar.d);
                    k();
                } else if (a instanceof ba) {
                    x xVar = bkVar.e != null ? bkVar.e : new x(100.0f, Unit.percent);
                    x xVar2 = bkVar.f != null ? bkVar.f : new x(100.0f, Unit.percent);
                    j();
                    a((ba) a, xVar, xVar2);
                    k();
                } else {
                    a(a);
                }
                l();
                if (m) {
                    b((ar) bkVar);
                }
                a((ar) bkVar);
            }
        }
    }

    private void a(ad adVar) {
        f("Path render", new Object[0]);
        if (adVar.a != null) {
            a(this.f, (as) adVar);
            if (!s() || !t()) {
                return;
            }
            if (this.f.c || this.f.b) {
                if (adVar.e != null) {
                    this.a.concat(adVar.e);
                }
                Path a = new bp(this, adVar.a).a();
                if (adVar.o == null) {
                    adVar.o = b(a);
                }
                a((ar) adVar);
                c((ar) adVar);
                d(adVar);
                boolean m = m();
                if (this.f.b) {
                    a.setFillType(u());
                    a((ar) adVar, a);
                }
                if (this.f.c) {
                    a(a);
                }
                a((t) adVar);
                if (m) {
                    b((ar) adVar);
                }
            }
        }
    }

    private k b(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        return new k(rectF.left, rectF.top, rectF.width(), rectF.height());
    }

    private void a(aj ajVar) {
        f("Rect render", new Object[0]);
        if (ajVar.c != null && ajVar.d != null && !ajVar.c.b() && !ajVar.d.b()) {
            a(this.f, (as) ajVar);
            if (s() && t()) {
                if (ajVar.e != null) {
                    this.a.concat(ajVar.e);
                }
                Path b = b(ajVar);
                a((ar) ajVar);
                c((ar) ajVar);
                d(ajVar);
                boolean m = m();
                if (this.f.b) {
                    a((ar) ajVar, b);
                }
                if (this.f.c) {
                    a(b);
                }
                if (m) {
                    b((ar) ajVar);
                }
            }
        }
    }

    private void a(m mVar) {
        f("Circle render", new Object[0]);
        if (mVar.c != null && !mVar.c.b()) {
            a(this.f, (as) mVar);
            if (s() && t()) {
                if (mVar.e != null) {
                    this.a.concat(mVar.e);
                }
                Path b = b(mVar);
                a((ar) mVar);
                c((ar) mVar);
                d(mVar);
                boolean m = m();
                if (this.f.b) {
                    a((ar) mVar, b);
                }
                if (this.f.c) {
                    a(b);
                }
                if (m) {
                    b((ar) mVar);
                }
            }
        }
    }

    private void a(r rVar) {
        f("Ellipse render", new Object[0]);
        if (rVar.c != null && rVar.d != null && !rVar.c.b() && !rVar.d.b()) {
            a(this.f, (as) rVar);
            if (s() && t()) {
                if (rVar.e != null) {
                    this.a.concat(rVar.e);
                }
                Path b = b(rVar);
                a((ar) rVar);
                c((ar) rVar);
                d(rVar);
                boolean m = m();
                if (this.f.b) {
                    a((ar) rVar, b);
                }
                if (this.f.c) {
                    a(b);
                }
                if (m) {
                    b((ar) rVar);
                }
            }
        }
    }

    private void a(y yVar) {
        f("Line render", new Object[0]);
        a(this.f, (as) yVar);
        if (s() && t() && this.f.c) {
            if (yVar.e != null) {
                this.a.concat(yVar.e);
            }
            Path c = c(yVar);
            a((ar) yVar);
            c((ar) yVar);
            d(yVar);
            boolean m = m();
            a(c);
            a((t) yVar);
            if (m) {
                b((ar) yVar);
            }
        }
    }

    private List<bo> b(y yVar) {
        float b;
        float a;
        float b2;
        float a2 = yVar.a != null ? yVar.a.a(this) : 0.0f;
        if (yVar.b != null) {
            b = yVar.b.b(this);
        } else {
            b = 0.0f;
        }
        if (yVar.c != null) {
            a = yVar.c.a(this);
        } else {
            a = 0.0f;
        }
        if (yVar.d != null) {
            b2 = yVar.d.b(this);
        } else {
            b2 = 0.0f;
        }
        List<bo> arrayList = new ArrayList(2);
        arrayList.add(new bo(this, a2, b, a - a2, b2 - b));
        arrayList.add(new bo(this, a, b2, a - a2, b2 - b));
        return arrayList;
    }

    private void a(ah ahVar) {
        f("PolyLine render", new Object[0]);
        a(this.f, (as) ahVar);
        if (!s() || !t()) {
            return;
        }
        if (this.f.c || this.f.b) {
            if (ahVar.e != null) {
                this.a.concat(ahVar.e);
            }
            if (ahVar.a.length >= 2) {
                Path c = c(ahVar);
                a((ar) ahVar);
                c((ar) ahVar);
                d(ahVar);
                boolean m = m();
                if (this.f.b) {
                    a((ar) ahVar, c);
                }
                if (this.f.c) {
                    a(c);
                }
                a((t) ahVar);
                if (m) {
                    b((ar) ahVar);
                }
            }
        }
    }

    private List<bo> b(ah ahVar) {
        int i = 2;
        float f = 0.0f;
        int length = ahVar.a.length;
        if (length < 2) {
            return null;
        }
        List<bo> arrayList = new ArrayList();
        bo boVar = new bo(this, ahVar.a[0], ahVar.a[1], 0.0f, 0.0f);
        float f2 = 0.0f;
        bo boVar2 = boVar;
        while (i < length) {
            f2 = ahVar.a[i];
            float f3 = ahVar.a[i + 1];
            boVar2.a(f2, f3);
            arrayList.add(boVar2);
            boVar = new bo(this, f2, f3, f2 - boVar2.a, f3 - boVar2.b);
            i += 2;
            f = f3;
            boVar2 = boVar;
        }
        if (!(ahVar instanceof ai)) {
            arrayList.add(boVar2);
        } else if (!(f2 == ahVar.a[0] || r4 == ahVar.a[1])) {
            f2 = ahVar.a[0];
            f3 = ahVar.a[1];
            boVar2.a(f2, f3);
            arrayList.add(boVar2);
            boVar = new bo(this, f2, f3, f2 - boVar2.a, f3 - boVar2.b);
            boVar.a((bo) arrayList.get(0));
            arrayList.add(boVar);
            arrayList.set(0, boVar);
        }
        return arrayList;
    }

    private void a(ai aiVar) {
        f("Polygon render", new Object[0]);
        a(this.f, (as) aiVar);
        if (!s() || !t()) {
            return;
        }
        if (this.f.c || this.f.b) {
            if (aiVar.e != null) {
                this.a.concat(aiVar.e);
            }
            if (aiVar.a.length >= 2) {
                Path c = c((ah) aiVar);
                a((ar) aiVar);
                c((ar) aiVar);
                d(aiVar);
                boolean m = m();
                if (this.f.b) {
                    a((ar) aiVar, c);
                }
                if (this.f.c) {
                    a(c);
                }
                a((t) aiVar);
                if (m) {
                    b((ar) aiVar);
                }
            }
        }
    }

    private void a(bd bdVar) {
        float f = 0.0f;
        f("Text render", new Object[0]);
        a(this.f, (as) bdVar);
        if (s()) {
            if (bdVar.a != null) {
                this.a.concat(bdVar.a);
            }
            float a = (bdVar.b == null || bdVar.b.size() == 0) ? 0.0f : ((x) bdVar.b.get(0)).a(this);
            float b = (bdVar.c == null || bdVar.c.size() == 0) ? 0.0f : ((x) bdVar.c.get(0)).b(this);
            float a2 = (bdVar.d == null || bdVar.d.size() == 0) ? 0.0f : ((x) bdVar.d.get(0)).a(this);
            if (!(bdVar.e == null || bdVar.e.size() == 0)) {
                f = ((x) bdVar.e.get(0)).b(this);
            }
            TextAnchor r = r();
            if (r != TextAnchor.Start) {
                float a3 = a((bf) bdVar);
                if (r == TextAnchor.Middle) {
                    a -= a3 / 2.0f;
                } else {
                    a -= a3;
                }
            }
            if (bdVar.o == null) {
                bv buVar = new bu(this, a, b);
                a((bf) bdVar, buVar);
                bdVar.o = new k(buVar.c.left, buVar.c.top, buVar.c.width(), buVar.c.height());
            }
            a((ar) bdVar);
            c((ar) bdVar);
            d(bdVar);
            boolean m = m();
            a((bf) bdVar, new br(this, a + a2, f + b));
            if (m) {
                b((ar) bdVar);
            }
        }
    }

    private TextAnchor r() {
        if (this.f.a.t == TextDirection.LTR || this.f.a.u == TextAnchor.Middle) {
            return this.f.a.u;
        }
        return this.f.a.u == TextAnchor.Start ? TextAnchor.End : TextAnchor.Start;
    }

    private void a(bf bfVar, bv bvVar) {
        if (s()) {
            Iterator it = bfVar.i.iterator();
            boolean z = true;
            while (it.hasNext()) {
                au auVar = (au) it.next();
                if (auVar instanceof bj) {
                    boolean z2;
                    String str = ((bj) auVar).a;
                    if (it.hasNext()) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    bvVar.a(a(str, z, z2));
                } else {
                    a(auVar, bvVar);
                }
                z = false;
            }
        }
    }

    private void a(au auVar, bv bvVar) {
        float f = 0.0f;
        if (!bvVar.a((bf) auVar)) {
            return;
        }
        if (auVar instanceof bg) {
            j();
            a((bg) auVar);
            k();
        } else if (auVar instanceof bc) {
            f("TSpan render", new Object[0]);
            j();
            ar arVar = (bc) auVar;
            a(this.f, (as) arVar);
            if (s()) {
                float a;
                float b;
                float a2;
                if (bvVar instanceof br) {
                    a = (arVar.b == null || arVar.b.size() == 0) ? ((br) bvVar).b : ((x) arVar.b.get(0)).a(this);
                    b = (arVar.c == null || arVar.c.size() == 0) ? ((br) bvVar).c : ((x) arVar.c.get(0)).b(this);
                    a2 = (arVar.d == null || arVar.d.size() == 0) ? 0.0f : ((x) arVar.d.get(0)).a(this);
                    if (!(arVar.e == null || arVar.e.size() == 0)) {
                        f = ((x) arVar.e.get(0)).b(this);
                    }
                } else {
                    a2 = 0.0f;
                    b = 0.0f;
                    a = 0.0f;
                }
                c((ar) arVar.g());
                if (bvVar instanceof br) {
                    ((br) bvVar).b = a + a2;
                    ((br) bvVar).c = b + f;
                }
                boolean m = m();
                a((bf) arVar, bvVar);
                if (m) {
                    b(arVar);
                }
            }
            k();
        } else if (auVar instanceof bb) {
            j();
            as asVar = (bb) auVar;
            a(this.f, asVar);
            if (s()) {
                c((ar) asVar.g());
                au a3 = auVar.u.a(asVar.a);
                if (a3 == null || !(a3 instanceof bf)) {
                    e("Tref reference '%s' not found", asVar.a);
                } else {
                    StringBuilder stringBuilder = new StringBuilder();
                    a((bf) a3, stringBuilder);
                    if (stringBuilder.length() > 0) {
                        bvVar.a(stringBuilder.toString());
                    }
                }
            }
            k();
        }
    }

    private void a(bg bgVar) {
        f("TextPath render", new Object[0]);
        a(this.f, (as) bgVar);
        if (s() && t()) {
            au a = bgVar.u.a(bgVar.a);
            if (a == null) {
                e("TextPath reference '%s' not found", bgVar.a);
                return;
            }
            float f;
            ad adVar = (ad) a;
            Path a2 = new bp(this, adVar.a).a();
            if (adVar.e != null) {
                a2.transform(adVar.e);
            }
            float a3 = bgVar.b != null ? bgVar.b.a(this, new PathMeasure(a2, false).getLength()) : 0.0f;
            TextAnchor r = r();
            if (r != TextAnchor.Start) {
                float a4 = a((bf) bgVar);
                f = r == TextAnchor.Middle ? a3 - (a4 / 2.0f) : a3 - a4;
            } else {
                f = a3;
            }
            c((ar) bgVar.g());
            boolean m = m();
            a((bf) bgVar, new bq(this, a2, f, 0.0f));
            if (m) {
                b((ar) bgVar);
            }
        }
    }

    private float a(bf bfVar) {
        bv bwVar = new bw();
        a(bfVar, bwVar);
        return bwVar.a;
    }

    private void a(bf bfVar, StringBuilder stringBuilder) {
        Iterator it = bfVar.i.iterator();
        boolean z = true;
        while (it.hasNext()) {
            au auVar = (au) it.next();
            if (auVar instanceof bf) {
                a((bf) auVar, stringBuilder);
            } else if (auVar instanceof bj) {
                stringBuilder.append(a(((bj) auVar).a, z, !it.hasNext()));
            }
            z = false;
        }
    }

    private String a(String str, boolean z, boolean z2) {
        if (this.f.h) {
            return str.replaceAll("[\\n\\t]", " ");
        }
        String replaceAll = str.replaceAll("\\n", TtmlNode.ANONYMOUS_REGION_ID).replaceAll("\\t", " ");
        if (z) {
            replaceAll = replaceAll.replaceAll("^\\s+", TtmlNode.ANONYMOUS_REGION_ID);
        }
        if (z2) {
            replaceAll = replaceAll.replaceAll("\\s+$", TtmlNode.ANONYMOUS_REGION_ID);
        }
        return replaceAll.replaceAll("\\s{2,}", " ");
    }

    private void a(ba baVar, x xVar, x xVar2) {
        f("Symbol render", new Object[0]);
        if (xVar != null && xVar.b()) {
            return;
        }
        if (xVar2 == null || !xVar2.b()) {
            PreserveAspectRatio preserveAspectRatio = baVar.w != null ? baVar.w : PreserveAspectRatio.c;
            a(this.f, (as) baVar);
            this.f.f = new k(0.0f, 0.0f, xVar != null ? xVar.a(this) : this.f.f.c, xVar2 != null ? xVar2.a(this) : this.f.f.d);
            if (!this.f.a.v.booleanValue()) {
                a(this.f.f.a, this.f.f.b, this.f.f.c, this.f.f.d);
            }
            if (baVar.x != null) {
                this.a.concat(a(this.f.f, baVar.x, preserveAspectRatio));
                this.f.g = baVar.x;
            }
            boolean m = m();
            a((aq) baVar, true);
            if (m) {
                b((ar) baVar);
            }
            a((ar) baVar);
        }
    }

    private void a(w wVar) {
        f("Image render", new Object[0]);
        if (wVar.d != null && !wVar.d.b() && wVar.e != null && !wVar.e.b() && wVar.a != null) {
            Bitmap a;
            PreserveAspectRatio preserveAspectRatio = wVar.w != null ? wVar.w : PreserveAspectRatio.c;
            Bitmap a2 = a(wVar.a);
            if (a2 == null) {
                bx e = this.e.e();
                if (e != null) {
                    a = e.a(wVar.a);
                } else {
                    return;
                }
            }
            a = a2;
            if (a == null) {
                e("Could not locate image '%s'", wVar.a);
                return;
            }
            a(this.f, (as) wVar);
            if (s() && t()) {
                float b;
                if (wVar.f != null) {
                    this.a.concat(wVar.f);
                }
                float a3 = wVar.b != null ? wVar.b.a(this) : 0.0f;
                if (wVar.c != null) {
                    b = wVar.c.b(this);
                } else {
                    b = 0.0f;
                }
                this.f.f = new k(a3, b, wVar.d.a(this), wVar.e.a(this));
                if (!this.f.a.v.booleanValue()) {
                    a(this.f.f.a, this.f.f.b, this.f.f.c, this.f.f.d);
                }
                wVar.o = new k(0.0f, 0.0f, (float) a.getWidth(), (float) a.getHeight());
                this.a.concat(a(this.f.f, wVar.o, preserveAspectRatio));
                a((ar) wVar);
                d(wVar);
                boolean m = m();
                v();
                this.a.drawBitmap(a, 0.0f, 0.0f, new Paint());
                if (m) {
                    b((ar) wVar);
                }
            }
        }
    }

    private Bitmap a(String str) {
        if (!str.startsWith("data:") || str.length() < 14) {
            return null;
        }
        int indexOf = str.indexOf(44);
        if (indexOf == -1 || indexOf < 12 || !";base64".equals(str.substring(indexOf - 7, indexOf))) {
            return null;
        }
        byte[] decode = Base64.decode(str.substring(indexOf + 1), 0);
        return BitmapFactory.decodeByteArray(decode, 0, decode.length);
    }

    private boolean s() {
        if (this.f.a.A != null) {
            return this.f.a.A.booleanValue();
        }
        return true;
    }

    private boolean t() {
        if (this.f.a.B != null) {
            return this.f.a.B.booleanValue();
        }
        return true;
    }

    private Matrix a(k kVar, k kVar2, PreserveAspectRatio preserveAspectRatio) {
        Matrix matrix = new Matrix();
        if (preserveAspectRatio == null || preserveAspectRatio.a() == null) {
            return matrix;
        }
        float f = kVar.c / kVar2.c;
        float f2 = kVar.d / kVar2.d;
        float f3 = -kVar2.a;
        float f4 = -kVar2.b;
        if (preserveAspectRatio.equals(PreserveAspectRatio.b)) {
            matrix.preTranslate(kVar.a, kVar.b);
            matrix.preScale(f, f2);
            matrix.preTranslate(f3, f4);
            return matrix;
        }
        f = preserveAspectRatio.b() == Scale.Slice ? Math.max(f, f2) : Math.min(f, f2);
        f2 = kVar.c / f;
        float f5 = kVar.d / f;
        switch (e()[preserveAspectRatio.a().ordinal()]) {
            case Util.TYPE_OTHER /*3*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                f3 -= (kVar2.c - f2) / 2.0f;
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case C.ENCODING_DTS /*7*/:
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                f3 -= kVar2.c - f2;
                break;
        }
        switch (e()[preserveAspectRatio.a().ordinal()]) {
            case EbmlReader.TYPE_FLOAT /*5*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
            case C.ENCODING_DTS /*7*/:
                f4 -= (kVar2.d - f5) / 2.0f;
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
            case b.ShimmerFrameLayout_fixed_height /*9*/:
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                f4 -= kVar2.d - f5;
                break;
        }
        matrix.preTranslate(kVar.a, kVar.b);
        matrix.preScale(f, f);
        matrix.preTranslate(f3, f4);
        return matrix;
    }

    private boolean a(Style style, long j) {
        return (style.a & j) != 0;
    }

    private void a(bt btVar, Style style) {
        float c;
        boolean z = true;
        if (a(style, 4096)) {
            btVar.a.n = style.n;
        }
        if (a(style, 2048)) {
            btVar.a.m = style.m;
        }
        if (a(style, 1)) {
            btVar.a.b = style.b;
            btVar.b = style.b != null;
        }
        if (a(style, 4)) {
            btVar.a.d = style.d;
        }
        if (a(style, 6149)) {
            a(btVar, true, btVar.a.b);
        }
        if (a(style, 2)) {
            btVar.a.c = style.c;
        }
        if (a(style, 8)) {
            btVar.a.e = style.e;
            btVar.c = style.e != null;
        }
        if (a(style, 16)) {
            btVar.a.f = style.f;
        }
        if (a(style, 6168)) {
            a(btVar, false, btVar.a.e);
        }
        if (a(style, 34359738368L)) {
            btVar.a.L = style.L;
        }
        if (a(style, 32)) {
            btVar.a.g = style.g;
            btVar.e.setStrokeWidth(btVar.a.g.c(this));
        }
        if (a(style, 64)) {
            btVar.a.h = style.h;
            switch (f()[style.h.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    btVar.e.setStrokeCap(Cap.BUTT);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    btVar.e.setStrokeCap(Cap.ROUND);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    btVar.e.setStrokeCap(Cap.SQUARE);
                    break;
            }
        }
        if (a(style, 128)) {
            btVar.a.i = style.i;
            switch (g()[style.i.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    btVar.e.setStrokeJoin(Join.MITER);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    btVar.e.setStrokeJoin(Join.ROUND);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    btVar.e.setStrokeJoin(Join.BEVEL);
                    break;
            }
        }
        if (a(style, 256)) {
            btVar.a.j = style.j;
            btVar.e.setStrokeMiter(style.j.floatValue());
        }
        if (a(style, 512)) {
            btVar.a.k = style.k;
        }
        if (a(style, 1024)) {
            btVar.a.l = style.l;
        }
        if (a(style, 1536)) {
            if (btVar.a.k == null) {
                btVar.e.setPathEffect(null);
            } else {
                int length = btVar.a.k.length;
                int i = length % 2 == 0 ? length : length * 2;
                float[] fArr = new float[i];
                float f = 0.0f;
                for (int i2 = 0; i2 < i; i2++) {
                    fArr[i2] = btVar.a.k[i2 % length].c(this);
                    f += fArr[i2];
                }
                if (f == 0.0f) {
                    btVar.e.setPathEffect(null);
                } else {
                    c = btVar.a.l.c(this);
                    if (c < 0.0f) {
                        c = (c % f) + f;
                    }
                    btVar.e.setPathEffect(new DashPathEffect(fArr, c));
                }
            }
        }
        if (a(style, 16384)) {
            c = b();
            btVar.a.p = style.p;
            btVar.d.setTextSize(style.p.a(this, c));
            btVar.e.setTextSize(style.p.a(this, c));
        }
        if (a(style, 8192)) {
            btVar.a.o = style.o;
        }
        if (a(style, 32768)) {
            Style style2;
            if (style.q.intValue() == -1 && btVar.a.q.intValue() > 100) {
                style2 = btVar.a;
                style2.q = Integer.valueOf(style2.q.intValue() - 100);
            } else if (style.q.intValue() != 1 || btVar.a.q.intValue() >= 900) {
                btVar.a.q = style.q;
            } else {
                style2 = btVar.a;
                style2.q = Integer.valueOf(style2.q.intValue() + 100);
            }
        }
        if (a(style, 65536)) {
            btVar.a.r = style.r;
        }
        if (a(style, 106496)) {
            Typeface typeface;
            if (btVar.a.o == null || this.e == null) {
                typeface = null;
            } else {
                bx e = this.e.e();
                typeface = null;
                for (String str : btVar.a.o) {
                    Typeface a = a(str, btVar.a.q, btVar.a.r);
                    if (a != null || e == null) {
                        typeface = a;
                        continue;
                    } else {
                        typeface = e.a(str, btVar.a.q.intValue(), String.valueOf(btVar.a.r));
                        continue;
                    }
                    if (typeface != null) {
                    }
                }
            }
            if (typeface == null) {
                typeface = a("sans-serif", btVar.a.q, btVar.a.r);
            }
            btVar.d.setTypeface(typeface);
            btVar.e.setTypeface(typeface);
        }
        if (a(style, 131072)) {
            boolean z2;
            btVar.a.s = style.s;
            btVar.d.setStrikeThruText(style.s == TextDecoration.LineThrough);
            Paint paint = btVar.d;
            if (style.s == TextDecoration.Underline) {
                z2 = true;
            } else {
                z2 = false;
            }
            paint.setUnderlineText(z2);
            if (VERSION.SDK_INT >= 17) {
                paint = btVar.e;
                if (style.s == TextDecoration.LineThrough) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                paint.setStrikeThruText(z2);
                Paint paint2 = btVar.e;
                if (style.s != TextDecoration.Underline) {
                    z = false;
                }
                paint2.setUnderlineText(z);
            }
        }
        if (a(style, 68719476736L)) {
            btVar.a.t = style.t;
        }
        if (a(style, 262144)) {
            btVar.a.u = style.u;
        }
        if (a(style, 524288)) {
            btVar.a.v = style.v;
        }
        if (a(style, 2097152)) {
            btVar.a.x = style.x;
        }
        if (a(style, 4194304)) {
            btVar.a.y = style.y;
        }
        if (a(style, 8388608)) {
            btVar.a.z = style.z;
        }
        if (a(style, 16777216)) {
            btVar.a.A = style.A;
        }
        if (a(style, 33554432)) {
            btVar.a.B = style.B;
        }
        if (a(style, 1048576)) {
            btVar.a.w = style.w;
        }
        if (a(style, 268435456)) {
            btVar.a.E = style.E;
        }
        if (a(style, 536870912)) {
            btVar.a.F = style.F;
        }
        if (a(style, 1073741824)) {
            btVar.a.G = style.G;
        }
        if (a(style, 67108864)) {
            btVar.a.C = style.C;
        }
        if (a(style, 134217728)) {
            btVar.a.D = style.D;
        }
        if (a(style, 8589934592L)) {
            btVar.a.J = style.J;
        }
        if (a(style, 17179869184L)) {
            btVar.a.K = style.K;
        }
    }

    private void a(bt btVar, boolean z, av avVar) {
        int i;
        float floatValue = (z ? btVar.a.d : btVar.a.f).floatValue();
        if (avVar instanceof o) {
            i = ((o) avVar).a;
        } else if (avVar instanceof p) {
            i = btVar.a.n.a;
        } else {
            return;
        }
        i |= a(floatValue) << 24;
        if (z) {
            btVar.d.setColor(i);
        } else {
            btVar.e.setColor(i);
        }
    }

    private Typeface a(String str, Integer num, FontStyle fontStyle) {
        int i = 1;
        int i2 = fontStyle == FontStyle.Italic ? 1 : 0;
        if (num.intValue() <= 500) {
            i = i2 != 0 ? 2 : 0;
        } else if (i2 != 0) {
            i = 3;
        }
        if (str.equals("serif")) {
            return Typeface.create(Typeface.SERIF, i);
        }
        if (str.equals("sans-serif")) {
            return Typeface.create(Typeface.SANS_SERIF, i);
        }
        if (str.equals("monospace")) {
            return Typeface.create(Typeface.MONOSPACE, i);
        }
        if (str.equals("cursive")) {
            return Typeface.create(Typeface.SANS_SERIF, i);
        }
        return str.equals("fantasy") ? Typeface.create(Typeface.SANS_SERIF, i) : null;
    }

    private int a(float f) {
        int i = (int) (256.0f * f);
        if (i < 0) {
            return 0;
        }
        if (i <= NalUnitUtil.EXTENDED_SAR) {
            return i;
        }
        return NalUnitUtil.EXTENDED_SAR;
    }

    private FillType u() {
        if (this.f.a.c == null) {
            return FillType.WINDING;
        }
        switch (h()[this.f.a.c.ordinal()]) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return FillType.EVEN_ODD;
            default:
                return FillType.WINDING;
        }
    }

    private void a(float f, float f2, float f3, float f4) {
        float f5 = f + f3;
        float f6 = f2 + f4;
        if (this.f.a.w != null) {
            f += this.f.a.w.d.a(this);
            f2 += this.f.a.w.a.b(this);
            f5 -= this.f.a.w.b.a(this);
            f6 -= this.f.a.w.c.b(this);
        }
        this.a.clipRect(f, f2, f5, f6);
    }

    private void v() {
        int i;
        if (this.f.a.J instanceof o) {
            i = ((o) this.f.a.J).a;
        } else if (this.f.a.J instanceof p) {
            i = this.f.a.n.a;
        } else {
            return;
        }
        if (this.f.a.K != null) {
            i |= a(this.f.a.K.floatValue()) << 24;
        }
        this.a.drawColor(i);
    }

    private static void b(float f, float f2, float f3, float f4, float f5, boolean z, boolean z2, float f6, float f7, af afVar) {
        if (f != f6 || f2 != f7) {
            if (f3 == 0.0f || f4 == 0.0f) {
                afVar.b(f6, f7);
                return;
            }
            float f8;
            float f9;
            double d;
            float abs = Math.abs(f3);
            float abs2 = Math.abs(f4);
            float toRadians = (float) Math.toRadians(((double) f5) % 360.0d);
            double cos = Math.cos((double) toRadians);
            double sin = Math.sin((double) toRadians);
            double d2 = ((double) (f - f6)) / 2.0d;
            double d3 = ((double) (f2 - f7)) / 2.0d;
            double d4 = (sin * d3) + (cos * d2);
            double d5 = (d2 * (-sin)) + (d3 * cos);
            d3 = (double) (abs * abs);
            d2 = (double) (abs2 * abs2);
            double d6 = d4 * d4;
            double d7 = d5 * d5;
            double d8 = (d6 / d3) + (d7 / d2);
            if (d8 > 1.0d) {
                abs *= (float) Math.sqrt(d8);
                abs2 *= (float) Math.sqrt(d8);
                f8 = abs2;
                f9 = abs;
                d = (double) (abs * abs);
                d3 = (double) (abs2 * abs2);
            } else {
                f8 = abs2;
                f9 = abs;
                d = d3;
                d3 = d2;
            }
            double d9 = (double) (z == z2 ? -1 : 1);
            d2 = (((d * d3) - (d * d7)) - (d3 * d6)) / ((d3 * d6) + (d * d7));
            if (d2 < 0.0d) {
                d2 = 0.0d;
            }
            d2 = Math.sqrt(d2) * d9;
            d3 = ((((double) f9) * d5) / ((double) f8)) * d2;
            d2 *= -((((double) f8) * d4) / ((double) f9));
            d = (((double) (f + f6)) / 2.0d) + ((cos * d3) - (sin * d2));
            cos = ((cos * d2) + (sin * d3)) + (((double) (f2 + f7)) / 2.0d);
            sin = (d4 - d3) / ((double) f9);
            d6 = (d5 - d2) / ((double) f8);
            d3 = ((-d4) - d3) / ((double) f9);
            d4 = ((-d5) - d2) / ((double) f8);
            d5 = Math.toDegrees((d6 < 0.0d ? -1.0d : 1.0d) * Math.acos(sin / Math.sqrt((sin * sin) + (d6 * d6))));
            d2 = Math.toDegrees(((sin * d4) - (d3 * d6) < 0.0d ? -1.0d : 1.0d) * Math.acos(((d6 * d4) + (sin * d3)) / Math.sqrt(((sin * sin) + (d6 * d6)) * ((d3 * d3) + (d4 * d4)))));
            if (!z2 && d2 > 0.0d) {
                d2 -= 360.0d;
            } else if (z2 && d2 < 0.0d) {
                d2 += 360.0d;
            }
            float[] a = a(d5 % 360.0d, d2 % 360.0d);
            Matrix matrix = new Matrix();
            matrix.postScale(f9, f8);
            matrix.postRotate(f5);
            matrix.postTranslate((float) d, (float) cos);
            matrix.mapPoints(a);
            a[a.length - 2] = f6;
            a[a.length - 1] = f7;
            for (int i = 0; i < a.length; i += 6) {
                afVar.a(a[i], a[i + 1], a[i + 2], a[i + 3], a[i + 4], a[i + 5]);
            }
        }
    }

    private static float[] a(double d, double d2) {
        int ceil = (int) Math.ceil(Math.abs(d2) / 90.0d);
        double toRadians = Math.toRadians(d);
        float toRadians2 = (float) (Math.toRadians(d2) / ((double) ceil));
        double sin = (1.3333333333333333d * Math.sin(((double) toRadians2) / 2.0d)) / (1.0d + Math.cos(((double) toRadians2) / 2.0d));
        float[] fArr = new float[(ceil * 6)];
        int i = 0;
        for (int i2 = 0; i2 < ceil; i2++) {
            double d3 = ((double) (((float) i2) * toRadians2)) + toRadians;
            double cos = Math.cos(d3);
            double sin2 = Math.sin(d3);
            int i3 = i + 1;
            fArr[i] = (float) (cos - (sin * sin2));
            i = i3 + 1;
            fArr[i3] = (float) ((cos * sin) + sin2);
            d3 += (double) toRadians2;
            cos = Math.cos(d3);
            d3 = Math.sin(d3);
            i3 = i + 1;
            fArr[i] = (float) ((sin * d3) + cos);
            i = i3 + 1;
            fArr[i3] = (float) (d3 - (sin * cos));
            i3 = i + 1;
            fArr[i] = (float) cos;
            i = i3 + 1;
            fArr[i3] = (float) d3;
        }
        return fArr;
    }

    private void a(t tVar) {
        if (this.f.a.x != null || this.f.a.y != null || this.f.a.z != null) {
            au a;
            z zVar;
            z zVar2;
            z zVar3;
            List a2;
            int size;
            Style style;
            Style style2;
            int i;
            if (this.f.a.x != null) {
                a = tVar.u.a(this.f.a.x);
                if (a != null) {
                    zVar = (z) a;
                    if (this.f.a.y != null) {
                        a = tVar.u.a(this.f.a.y);
                        if (a == null) {
                            zVar2 = (z) a;
                            if (this.f.a.z != null) {
                                a = tVar.u.a(this.f.a.z);
                                if (a == null) {
                                    zVar3 = (z) a;
                                    if (!(tVar instanceof ad)) {
                                        a2 = new bn(this, ((ad) tVar).a).a();
                                    } else if (tVar instanceof y) {
                                        a2 = b((ah) tVar);
                                    } else {
                                        a2 = b((y) tVar);
                                    }
                                    if (a2 == null) {
                                        size = a2.size();
                                        if (size == 0) {
                                            style = this.f.a;
                                            style2 = this.f.a;
                                            this.f.a.z = null;
                                            style2.y = null;
                                            style.x = null;
                                            if (zVar != null) {
                                                a(zVar, (bo) a2.get(0));
                                            }
                                            if (zVar2 != null) {
                                                for (i = 1; i < size - 1; i++) {
                                                    a(zVar2, (bo) a2.get(i));
                                                }
                                            }
                                            if (zVar3 == null) {
                                                a(zVar3, (bo) a2.get(size - 1));
                                            }
                                        }
                                    }
                                }
                                e("Marker reference '%s' not found", this.f.a.z);
                            }
                            zVar3 = null;
                            if (!(tVar instanceof ad)) {
                                a2 = new bn(this, ((ad) tVar).a).a();
                            } else if (tVar instanceof y) {
                                a2 = b((ah) tVar);
                            } else {
                                a2 = b((y) tVar);
                            }
                            if (a2 == null) {
                                size = a2.size();
                                if (size == 0) {
                                    style = this.f.a;
                                    style2 = this.f.a;
                                    this.f.a.z = null;
                                    style2.y = null;
                                    style.x = null;
                                    if (zVar != null) {
                                        a(zVar, (bo) a2.get(0));
                                    }
                                    if (zVar2 != null) {
                                        for (i = 1; i < size - 1; i++) {
                                            a(zVar2, (bo) a2.get(i));
                                        }
                                    }
                                    if (zVar3 == null) {
                                        a(zVar3, (bo) a2.get(size - 1));
                                    }
                                }
                            }
                        }
                        e("Marker reference '%s' not found", this.f.a.y);
                    }
                    zVar2 = null;
                    if (this.f.a.z != null) {
                        a = tVar.u.a(this.f.a.z);
                        if (a == null) {
                            e("Marker reference '%s' not found", this.f.a.z);
                        } else {
                            zVar3 = (z) a;
                            if (!(tVar instanceof ad)) {
                                a2 = new bn(this, ((ad) tVar).a).a();
                            } else if (tVar instanceof y) {
                                a2 = b((y) tVar);
                            } else {
                                a2 = b((ah) tVar);
                            }
                            if (a2 == null) {
                                size = a2.size();
                                if (size == 0) {
                                    style = this.f.a;
                                    style2 = this.f.a;
                                    this.f.a.z = null;
                                    style2.y = null;
                                    style.x = null;
                                    if (zVar != null) {
                                        a(zVar, (bo) a2.get(0));
                                    }
                                    if (zVar2 != null) {
                                        for (i = 1; i < size - 1; i++) {
                                            a(zVar2, (bo) a2.get(i));
                                        }
                                    }
                                    if (zVar3 == null) {
                                        a(zVar3, (bo) a2.get(size - 1));
                                    }
                                }
                            }
                        }
                    }
                    zVar3 = null;
                    if (!(tVar instanceof ad)) {
                        a2 = new bn(this, ((ad) tVar).a).a();
                    } else if (tVar instanceof y) {
                        a2 = b((ah) tVar);
                    } else {
                        a2 = b((y) tVar);
                    }
                    if (a2 == null) {
                        size = a2.size();
                        if (size == 0) {
                            style = this.f.a;
                            style2 = this.f.a;
                            this.f.a.z = null;
                            style2.y = null;
                            style.x = null;
                            if (zVar != null) {
                                a(zVar, (bo) a2.get(0));
                            }
                            if (zVar2 != null) {
                                for (i = 1; i < size - 1; i++) {
                                    a(zVar2, (bo) a2.get(i));
                                }
                            }
                            if (zVar3 == null) {
                                a(zVar3, (bo) a2.get(size - 1));
                            }
                        }
                    }
                }
                e("Marker reference '%s' not found", this.f.a.x);
            }
            zVar = null;
            if (this.f.a.y != null) {
                a = tVar.u.a(this.f.a.y);
                if (a == null) {
                    e("Marker reference '%s' not found", this.f.a.y);
                } else {
                    zVar2 = (z) a;
                    if (this.f.a.z != null) {
                        a = tVar.u.a(this.f.a.z);
                        if (a == null) {
                            zVar3 = (z) a;
                            if (!(tVar instanceof ad)) {
                                a2 = new bn(this, ((ad) tVar).a).a();
                            } else if (tVar instanceof y) {
                                a2 = b((y) tVar);
                            } else {
                                a2 = b((ah) tVar);
                            }
                            if (a2 == null) {
                                size = a2.size();
                                if (size == 0) {
                                    style = this.f.a;
                                    style2 = this.f.a;
                                    this.f.a.z = null;
                                    style2.y = null;
                                    style.x = null;
                                    if (zVar != null) {
                                        a(zVar, (bo) a2.get(0));
                                    }
                                    if (zVar2 != null) {
                                        for (i = 1; i < size - 1; i++) {
                                            a(zVar2, (bo) a2.get(i));
                                        }
                                    }
                                    if (zVar3 == null) {
                                        a(zVar3, (bo) a2.get(size - 1));
                                    }
                                }
                            }
                        }
                        e("Marker reference '%s' not found", this.f.a.z);
                    }
                    zVar3 = null;
                    if (!(tVar instanceof ad)) {
                        a2 = new bn(this, ((ad) tVar).a).a();
                    } else if (tVar instanceof y) {
                        a2 = b((ah) tVar);
                    } else {
                        a2 = b((y) tVar);
                    }
                    if (a2 == null) {
                        size = a2.size();
                        if (size == 0) {
                            style = this.f.a;
                            style2 = this.f.a;
                            this.f.a.z = null;
                            style2.y = null;
                            style.x = null;
                            if (zVar != null) {
                                a(zVar, (bo) a2.get(0));
                            }
                            if (zVar2 != null) {
                                for (i = 1; i < size - 1; i++) {
                                    a(zVar2, (bo) a2.get(i));
                                }
                            }
                            if (zVar3 == null) {
                                a(zVar3, (bo) a2.get(size - 1));
                            }
                        }
                    }
                }
            }
            zVar2 = null;
            if (this.f.a.z != null) {
                a = tVar.u.a(this.f.a.z);
                if (a == null) {
                    e("Marker reference '%s' not found", this.f.a.z);
                } else {
                    zVar3 = (z) a;
                    if (!(tVar instanceof ad)) {
                        a2 = new bn(this, ((ad) tVar).a).a();
                    } else if (tVar instanceof y) {
                        a2 = b((y) tVar);
                    } else {
                        a2 = b((ah) tVar);
                    }
                    if (a2 == null) {
                        size = a2.size();
                        if (size == 0) {
                            style = this.f.a;
                            style2 = this.f.a;
                            this.f.a.z = null;
                            style2.y = null;
                            style.x = null;
                            if (zVar != null) {
                                a(zVar, (bo) a2.get(0));
                            }
                            if (zVar2 != null) {
                                for (i = 1; i < size - 1; i++) {
                                    a(zVar2, (bo) a2.get(i));
                                }
                            }
                            if (zVar3 == null) {
                                a(zVar3, (bo) a2.get(size - 1));
                            }
                        }
                    }
                }
            }
            zVar3 = null;
            if (!(tVar instanceof ad)) {
                a2 = new bn(this, ((ad) tVar).a).a();
            } else if (tVar instanceof y) {
                a2 = b((ah) tVar);
            } else {
                a2 = b((y) tVar);
            }
            if (a2 == null) {
                size = a2.size();
                if (size == 0) {
                    style = this.f.a;
                    style2 = this.f.a;
                    this.f.a.z = null;
                    style2.y = null;
                    style.x = null;
                    if (zVar != null) {
                        a(zVar, (bo) a2.get(0));
                    }
                    if (zVar2 != null) {
                        for (i = 1; i < size - 1; i++) {
                            a(zVar2, (bo) a2.get(i));
                        }
                    }
                    if (zVar3 == null) {
                        a(zVar3, (bo) a2.get(size - 1));
                    }
                }
            }
        }
    }

    private void a(z zVar, bo boVar) {
        float floatValue;
        float a;
        Matrix matrix;
        float a2;
        float f;
        float f2;
        PreserveAspectRatio preserveAspectRatio;
        boolean m;
        float f3 = 3.0f;
        float f4 = 0.0f;
        j();
        if (zVar.f != null) {
            if (!Float.isNaN(zVar.f.floatValue())) {
                floatValue = zVar.f.floatValue();
            } else if (!(boVar.c == 0.0f && boVar.d == 0.0f)) {
                floatValue = (float) Math.toDegrees(Math.atan2((double) boVar.d, (double) boVar.c));
            }
            if (zVar.a) {
                a = this.f.a.g.a(this.c);
            } else {
                a = 1.0f;
            }
            this.f = c((au) zVar);
            matrix = new Matrix();
            matrix.preTranslate(boVar.a, boVar.b);
            matrix.preRotate(floatValue);
            matrix.preScale(a, a);
            floatValue = zVar.b == null ? zVar.b.a(this) : 0.0f;
            if (zVar.c == null) {
                a = zVar.c.b(this);
            } else {
                a = 0.0f;
            }
            if (zVar.d == null) {
                a2 = zVar.d.a(this);
            } else {
                a2 = 3.0f;
            }
            if (zVar.e != null) {
                f3 = zVar.e.b(this);
            }
            if (zVar.x == null) {
                f = a2 / zVar.x.c;
                f2 = f3 / zVar.x.d;
                preserveAspectRatio = zVar.w == null ? zVar.w : PreserveAspectRatio.c;
                if (!preserveAspectRatio.equals(PreserveAspectRatio.b)) {
                    f2 = preserveAspectRatio.b() != Scale.Slice ? Math.max(f, f2) : Math.min(f, f2);
                    f = f2;
                }
                matrix.preTranslate((-floatValue) * f, (-a) * f2);
                this.a.concat(matrix);
                floatValue = zVar.x.c * f;
                a = zVar.x.d * f2;
                switch (e()[preserveAspectRatio.a().ordinal()]) {
                    case Util.TYPE_OTHER /*3*/:
                    case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    case b.ShimmerFrameLayout_fixed_height /*9*/:
                        floatValue = 0.0f - ((a2 - floatValue) / 2.0f);
                        break;
                    case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    case C.ENCODING_DTS /*7*/:
                    case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                        floatValue = 0.0f - (a2 - floatValue);
                        break;
                    default:
                        floatValue = 0.0f;
                        break;
                }
                switch (e()[preserveAspectRatio.a().ordinal()]) {
                    case EbmlReader.TYPE_FLOAT /*5*/:
                    case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    case C.ENCODING_DTS /*7*/:
                        f4 = 0.0f - ((f3 - a) / 2.0f);
                        break;
                    case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    case b.ShimmerFrameLayout_fixed_height /*9*/:
                    case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                        f4 = 0.0f - (f3 - a);
                        break;
                }
                if (!this.f.a.v.booleanValue()) {
                    a(floatValue, f4, a2, f3);
                }
                matrix.reset();
                matrix.preScale(f, f2);
                this.a.concat(matrix);
            } else {
                matrix.preTranslate(-floatValue, -a);
                this.a.concat(matrix);
                if (!this.f.a.v.booleanValue()) {
                    a(0.0f, 0.0f, a2, f3);
                }
            }
            m = m();
            a((aq) zVar, false);
            if (m) {
                b((ar) zVar);
            }
            k();
        }
        floatValue = 0.0f;
        if (zVar.a) {
            a = this.f.a.g.a(this.c);
        } else {
            a = 1.0f;
        }
        this.f = c((au) zVar);
        matrix = new Matrix();
        matrix.preTranslate(boVar.a, boVar.b);
        matrix.preRotate(floatValue);
        matrix.preScale(a, a);
        if (zVar.b == null) {
        }
        if (zVar.c == null) {
            a = 0.0f;
        } else {
            a = zVar.c.b(this);
        }
        if (zVar.d == null) {
            a2 = 3.0f;
        } else {
            a2 = zVar.d.a(this);
        }
        if (zVar.e != null) {
            f3 = zVar.e.b(this);
        }
        if (zVar.x == null) {
            matrix.preTranslate(-floatValue, -a);
            this.a.concat(matrix);
            if (this.f.a.v.booleanValue()) {
                a(0.0f, 0.0f, a2, f3);
            }
        } else {
            f = a2 / zVar.x.c;
            f2 = f3 / zVar.x.d;
            if (zVar.w == null) {
            }
            if (preserveAspectRatio.equals(PreserveAspectRatio.b)) {
                if (preserveAspectRatio.b() != Scale.Slice) {
                }
                f = f2;
            }
            matrix.preTranslate((-floatValue) * f, (-a) * f2);
            this.a.concat(matrix);
            floatValue = zVar.x.c * f;
            a = zVar.x.d * f2;
            switch (e()[preserveAspectRatio.a().ordinal()]) {
                case Util.TYPE_OTHER /*3*/:
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    floatValue = 0.0f - ((a2 - floatValue) / 2.0f);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                case C.ENCODING_DTS /*7*/:
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    floatValue = 0.0f - (a2 - floatValue);
                    break;
                default:
                    floatValue = 0.0f;
                    break;
            }
            switch (e()[preserveAspectRatio.a().ordinal()]) {
                case EbmlReader.TYPE_FLOAT /*5*/:
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                case C.ENCODING_DTS /*7*/:
                    f4 = 0.0f - ((f3 - a) / 2.0f);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    f4 = 0.0f - (f3 - a);
                    break;
            }
            if (this.f.a.v.booleanValue()) {
                a(floatValue, f4, a2, f3);
            }
            matrix.reset();
            matrix.preScale(f, f2);
            this.a.concat(matrix);
        }
        m = m();
        a((aq) zVar, false);
        if (m) {
            b((ar) zVar);
        }
        k();
    }

    private bt c(au auVar) {
        bt btVar = new bt(this);
        a(btVar, Style.a());
        return a(auVar, btVar);
    }

    private bt a(au auVar, bt btVar) {
        List<as> arrayList = new ArrayList();
        au auVar2 = auVar;
        while (true) {
            if (auVar2 instanceof as) {
                arrayList.add(0, (as) auVar2);
            }
            if (auVar2.v == null) {
                break;
            }
            auVar2 = (au) auVar2.v;
        }
        for (as a : arrayList) {
            a(btVar, a);
        }
        btVar.g = this.e.b().x;
        if (btVar.g == null) {
            btVar.g = this.b;
        }
        btVar.f = this.b;
        btVar.i = this.f.i;
        return btVar;
    }

    private void c(ar arVar) {
        if (this.f.a.b instanceof ac) {
            a(true, arVar.o, (ac) this.f.a.b);
        }
        if (this.f.a.e instanceof ac) {
            a(false, arVar.o, (ac) this.f.a.e);
        }
    }

    private void a(boolean z, k kVar, ac acVar) {
        au a = this.e.a(acVar.a);
        if (a == null) {
            String str = "%s reference '%s' not found";
            Object[] objArr = new Object[2];
            objArr[0] = z ? "Fill" : "Stroke";
            objArr[1] = acVar.a;
            e(str, objArr);
            if (acVar.b != null) {
                a(this.f, z, acVar.b);
                return;
            } else if (z) {
                this.f.b = false;
                return;
            } else {
                this.f.c = false;
                return;
            }
        }
        if (a instanceof at) {
            a(z, kVar, (at) a);
        }
        if (a instanceof ax) {
            a(z, kVar, (ax) a);
        }
        if (a instanceof ak) {
            a(z, (ak) a);
        }
    }

    private void a(boolean z, k kVar, at atVar) {
        float b;
        float a;
        float b2;
        float f;
        if (atVar.e != null) {
            a((s) atVar, atVar.e);
        }
        Object obj = (atVar.b == null || !atVar.b.booleanValue()) ? null : 1;
        Paint paint = z ? this.f.d : this.f.e;
        if (obj != null) {
            k d = d();
            float a2 = atVar.f != null ? atVar.f.a(this) : 0.0f;
            b = atVar.g != null ? atVar.g.b(this) : 0.0f;
            a = atVar.h != null ? atVar.h.a(this) : d.c;
            if (atVar.i != null) {
                b2 = atVar.i.b(this);
            } else {
                b2 = 0.0f;
            }
            f = b2;
            b2 = a;
            a = b;
            b = a2;
        } else {
            f = atVar.i != null ? atVar.i.a(this, 1.0f) : 0.0f;
            b2 = atVar.h != null ? atVar.h.a(this, 1.0f) : 1.0f;
            a = atVar.g != null ? atVar.g.a(this, 1.0f) : 0.0f;
            b = atVar.f != null ? atVar.f.a(this, 1.0f) : 0.0f;
        }
        j();
        this.f = c((au) atVar);
        Matrix matrix = new Matrix();
        if (obj == null) {
            matrix.preTranslate(kVar.a, kVar.b);
            matrix.preScale(kVar.c, kVar.d);
        }
        if (atVar.c != null) {
            matrix.preConcat(atVar.c);
        }
        int size = atVar.a.size();
        if (size == 0) {
            k();
            if (z) {
                this.f.b = false;
                return;
            } else {
                this.f.c = false;
                return;
            }
        }
        int[] iArr = new int[size];
        float[] fArr = new float[size];
        int i = 0;
        float f2 = -1.0f;
        for (au auVar : atVar.a) {
            as asVar = (al) auVar;
            if (i == 0 || asVar.a.floatValue() >= f2) {
                fArr[i] = asVar.a.floatValue();
                f2 = asVar.a.floatValue();
            } else {
                fArr[i] = f2;
            }
            j();
            a(this.f, asVar);
            o oVar = (o) this.f.a.C;
            if (oVar == null) {
                oVar = o.b;
            }
            iArr[i] = oVar.a | (a(this.f.a.D.floatValue()) << 24);
            int i2 = i + 1;
            k();
            i = i2;
        }
        if ((b == b2 && a == f) || size == 1) {
            k();
            paint.setColor(iArr[size - 1]);
            return;
        }
        TileMode tileMode = TileMode.CLAMP;
        if (atVar.d != null) {
            if (atVar.d == GradientSpread.reflect) {
                tileMode = TileMode.MIRROR;
            } else if (atVar.d == GradientSpread.repeat) {
                tileMode = TileMode.REPEAT;
            }
        }
        k();
        Shader linearGradient = new LinearGradient(b, a, b2, f, iArr, fArr, tileMode);
        linearGradient.setLocalMatrix(matrix);
        paint.setShader(linearGradient);
    }

    private void a(boolean z, k kVar, ax axVar) {
        float b;
        float c;
        float f;
        if (axVar.e != null) {
            a((s) axVar, axVar.e);
        }
        Object obj = (axVar.b == null || !axVar.b.booleanValue()) ? null : 1;
        Paint paint = z ? this.f.d : this.f.e;
        if (obj != null) {
            x xVar = new x(50.0f, Unit.percent);
            float a = axVar.f != null ? axVar.f.a(this) : xVar.a(this);
            b = axVar.g != null ? axVar.g.b(this) : xVar.b(this);
            if (axVar.h != null) {
                c = axVar.h.c(this);
            } else {
                c = xVar.c(this);
            }
            f = c;
            c = b;
            b = a;
        } else {
            f = axVar.h != null ? axVar.h.a(this, 1.0f) : 0.5f;
            c = axVar.g != null ? axVar.g.a(this, 1.0f) : 0.5f;
            b = axVar.f != null ? axVar.f.a(this, 1.0f) : 0.5f;
        }
        j();
        this.f = c((au) axVar);
        Matrix matrix = new Matrix();
        if (obj == null) {
            matrix.preTranslate(kVar.a, kVar.b);
            matrix.preScale(kVar.c, kVar.d);
        }
        if (axVar.c != null) {
            matrix.preConcat(axVar.c);
        }
        int size = axVar.a.size();
        if (size == 0) {
            k();
            if (z) {
                this.f.b = false;
                return;
            } else {
                this.f.c = false;
                return;
            }
        }
        int[] iArr = new int[size];
        float[] fArr = new float[size];
        int i = 0;
        float f2 = -1.0f;
        for (au auVar : axVar.a) {
            as asVar = (al) auVar;
            if (i == 0 || asVar.a.floatValue() >= f2) {
                fArr[i] = asVar.a.floatValue();
                f2 = asVar.a.floatValue();
            } else {
                fArr[i] = f2;
            }
            j();
            a(this.f, asVar);
            o oVar = (o) this.f.a.C;
            if (oVar == null) {
                oVar = o.b;
            }
            iArr[i] = oVar.a | (a(this.f.a.D.floatValue()) << 24);
            int i2 = i + 1;
            k();
            i = i2;
        }
        if (f == 0.0f || size == 1) {
            k();
            paint.setColor(iArr[size - 1]);
            return;
        }
        TileMode tileMode = TileMode.CLAMP;
        if (axVar.d != null) {
            if (axVar.d == GradientSpread.reflect) {
                tileMode = TileMode.MIRROR;
            } else if (axVar.d == GradientSpread.repeat) {
                tileMode = TileMode.REPEAT;
            }
        }
        k();
        Shader radialGradient = new RadialGradient(b, c, f, iArr, fArr, tileMode);
        radialGradient.setLocalMatrix(matrix);
        paint.setShader(radialGradient);
    }

    private void a(s sVar, String str) {
        au a = sVar.u.a(str);
        if (a == null) {
            d("Gradient reference '%s' not found", str);
        } else if (!(a instanceof s)) {
            e("Gradient href attributes must point to other gradient elements", new Object[0]);
        } else if (a == sVar) {
            e("Circular reference in gradient href attribute '%s'", str);
        } else {
            s sVar2 = (s) a;
            if (sVar.b == null) {
                sVar.b = sVar2.b;
            }
            if (sVar.c == null) {
                sVar.c = sVar2.c;
            }
            if (sVar.d == null) {
                sVar.d = sVar2.d;
            }
            if (sVar.a.isEmpty()) {
                sVar.a = sVar2.a;
            }
            try {
                if (sVar instanceof at) {
                    a((at) sVar, (at) a);
                } else {
                    a((ax) sVar, (ax) a);
                }
            } catch (ClassCastException e) {
            }
            if (sVar2.e != null) {
                a(sVar, sVar2.e);
            }
        }
    }

    private void a(at atVar, at atVar2) {
        if (atVar.f == null) {
            atVar.f = atVar2.f;
        }
        if (atVar.g == null) {
            atVar.g = atVar2.g;
        }
        if (atVar.h == null) {
            atVar.h = atVar2.h;
        }
        if (atVar.i == null) {
            atVar.i = atVar2.i;
        }
    }

    private void a(ax axVar, ax axVar2) {
        if (axVar.f == null) {
            axVar.f = axVar2.f;
        }
        if (axVar.g == null) {
            axVar.g = axVar2.g;
        }
        if (axVar.h == null) {
            axVar.h = axVar2.h;
        }
        if (axVar.i == null) {
            axVar.i = axVar2.i;
        }
        if (axVar.j == null) {
            axVar.j = axVar2.j;
        }
    }

    private void a(boolean z, ak akVar) {
        boolean z2 = true;
        if (z) {
            if (a(akVar.r, 2147483648L)) {
                this.f.a.b = akVar.r.H;
                bt btVar = this.f;
                if (akVar.r.H == null) {
                    z2 = false;
                }
                btVar.b = z2;
            }
            if (a(akVar.r, 4294967296L)) {
                this.f.a.d = akVar.r.I;
            }
            if (a(akVar.r, 6442450944L)) {
                a(this.f, z, this.f.a.b);
                return;
            }
            return;
        }
        if (a(akVar.r, 2147483648L)) {
            this.f.a.e = akVar.r.H;
            btVar = this.f;
            if (akVar.r.H == null) {
                z2 = false;
            }
            btVar.c = z2;
        }
        if (a(akVar.r, 4294967296L)) {
            this.f.a.f = akVar.r.I;
        }
        if (a(akVar.r, 6442450944L)) {
            a(this.f, z, this.f.a.e);
        }
    }

    private void d(ar arVar) {
        a(arVar, arVar.o);
    }

    private void a(ar arVar, k kVar) {
        if (this.f.a.E != null) {
            au a = arVar.u.a(this.f.a.E);
            if (a == null) {
                e("ClipPath reference '%s' not found", this.f.a.E);
                return;
            }
            a = (n) a;
            if (a.i.isEmpty()) {
                this.a.clipRect(0, 0, 0, 0);
                return;
            }
            int i;
            if (a.a == null || a.a.booleanValue()) {
                boolean z = true;
            } else {
                i = 0;
            }
            if ((arVar instanceof u) && i == 0) {
                d("<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)", arVar.getClass().getSimpleName());
                return;
            }
            w();
            if (i == 0) {
                Matrix matrix = new Matrix();
                matrix.preTranslate(kVar.a, kVar.b);
                matrix.preScale(kVar.c, kVar.d);
                this.a.concat(matrix);
            }
            if (a.b != null) {
                this.a.concat(a.b);
            }
            this.f = c(a);
            d(a);
            Path path = new Path();
            for (au a2 : a2.i) {
                a(a2, true, path, new Matrix());
            }
            this.a.clipPath(path);
            x();
        }
    }

    private void a(au auVar, boolean z, Path path, Matrix matrix) {
        if (s()) {
            w();
            if (auVar instanceof bk) {
                if (z) {
                    a((bk) auVar, path, matrix);
                } else {
                    e("<use> elements inside a <clipPath> cannot reference another <use>", new Object[0]);
                }
            } else if (auVar instanceof ad) {
                a((ad) auVar, path, matrix);
            } else if (auVar instanceof bd) {
                a((bd) auVar, path, matrix);
            } else if (auVar instanceof t) {
                a((t) auVar, path, matrix);
            } else {
                e("Invalid %s element found in clipPath definition", auVar.getClass().getSimpleName());
            }
            x();
        }
    }

    private void w() {
        this.a.save(1);
        this.g.push(this.f);
        this.f = (bt) this.f.clone();
    }

    private void x() {
        this.a.restore();
        this.f = (bt) this.g.pop();
    }

    private FillType y() {
        if (this.f.a.F == null) {
            return FillType.WINDING;
        }
        switch (h()[this.f.a.F.ordinal()]) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return FillType.EVEN_ODD;
            default:
                return FillType.WINDING;
        }
    }

    private void a(ad adVar, Path path, Matrix matrix) {
        a(this.f, (as) adVar);
        if (s() && t()) {
            if (adVar.e != null) {
                matrix.preConcat(adVar.e);
            }
            Path a = new bp(this, adVar.a).a();
            if (adVar.o == null) {
                adVar.o = b(a);
            }
            d(adVar);
            path.setFillType(y());
            path.addPath(a, matrix);
        }
    }

    private void a(t tVar, Path path, Matrix matrix) {
        a(this.f, (as) tVar);
        if (s() && t()) {
            Path b;
            if (tVar.e != null) {
                matrix.preConcat(tVar.e);
            }
            if (tVar instanceof aj) {
                b = b((aj) tVar);
            } else if (tVar instanceof m) {
                b = b((m) tVar);
            } else if (tVar instanceof r) {
                b = b((r) tVar);
            } else if (tVar instanceof ah) {
                b = c((ah) tVar);
            } else {
                return;
            }
            d(tVar);
            path.setFillType(b.getFillType());
            path.addPath(b, matrix);
        }
    }

    private void a(bk bkVar, Path path, Matrix matrix) {
        a(this.f, (as) bkVar);
        if (s() && t()) {
            if (bkVar.b != null) {
                matrix.preConcat(bkVar.b);
            }
            au a = bkVar.u.a(bkVar.a);
            if (a == null) {
                e("Use reference '%s' not found", bkVar.a);
                return;
            }
            d(bkVar);
            a(a, false, path, matrix);
        }
    }

    private void a(bd bdVar, Path path, Matrix matrix) {
        float f = 0.0f;
        a(this.f, (as) bdVar);
        if (s()) {
            if (bdVar.a != null) {
                matrix.preConcat(bdVar.a);
            }
            float a = (bdVar.b == null || bdVar.b.size() == 0) ? 0.0f : ((x) bdVar.b.get(0)).a(this);
            float b = (bdVar.c == null || bdVar.c.size() == 0) ? 0.0f : ((x) bdVar.c.get(0)).b(this);
            float a2 = (bdVar.d == null || bdVar.d.size() == 0) ? 0.0f : ((x) bdVar.d.get(0)).a(this);
            if (!(bdVar.e == null || bdVar.e.size() == 0)) {
                f = ((x) bdVar.e.get(0)).b(this);
            }
            if (this.f.a.u != TextAnchor.Start) {
                float a3 = a((bf) bdVar);
                if (this.f.a.u == TextAnchor.Middle) {
                    a -= a3 / 2.0f;
                } else {
                    a -= a3;
                }
            }
            if (bdVar.o == null) {
                bv buVar = new bu(this, a, b);
                a((bf) bdVar, buVar);
                bdVar.o = new k(buVar.c.left, buVar.c.top, buVar.c.width(), buVar.c.height());
            }
            d(bdVar);
            Path path2 = new Path();
            a((bf) bdVar, new bs(this, a + a2, f + b, path2));
            path.setFillType(y());
            path.addPath(path2, matrix);
        }
    }

    private Path c(y yVar) {
        float f = 0.0f;
        float a = yVar.a == null ? 0.0f : yVar.a.a(this);
        float b = yVar.b == null ? 0.0f : yVar.b.b(this);
        float a2 = yVar.c == null ? 0.0f : yVar.c.a(this);
        if (yVar.d != null) {
            f = yVar.d.b(this);
        }
        if (yVar.o == null) {
            yVar.o = new k(Math.min(a, b), Math.min(b, f), Math.abs(a2 - a), Math.abs(f - b));
        }
        Path path = new Path();
        path.moveTo(a, b);
        path.lineTo(a2, f);
        return path;
    }

    private Path b(aj ajVar) {
        float f;
        float f2;
        if (ajVar.f == null && ajVar.g == null) {
            f = 0.0f;
            f2 = 0.0f;
        } else if (ajVar.f == null) {
            f2 = ajVar.g.b(this);
            f = f2;
        } else if (ajVar.g == null) {
            f2 = ajVar.f.a(this);
            f = f2;
        } else {
            f = ajVar.f.a(this);
            f2 = ajVar.g.b(this);
        }
        float min = Math.min(f, ajVar.c.a(this) / 2.0f);
        float min2 = Math.min(f2, ajVar.d.b(this) / 2.0f);
        f = ajVar.a != null ? ajVar.a.a(this) : 0.0f;
        float b = ajVar.b != null ? ajVar.b.b(this) : 0.0f;
        f2 = ajVar.c.a(this);
        float b2 = ajVar.d.b(this);
        if (ajVar.o == null) {
            ajVar.o = new k(f, b, f2, b2);
        }
        float f3 = f + f2;
        float f4 = b + b2;
        Path path = new Path();
        if (min == 0.0f || min2 == 0.0f) {
            path.moveTo(f, b);
            path.lineTo(f3, b);
            path.lineTo(f3, f4);
            path.lineTo(f, f4);
            path.lineTo(f, b);
        } else {
            float f5 = min * 0.5522848f;
            float f6 = min2 * 0.5522848f;
            path.moveTo(f, b + min2);
            path.cubicTo(f, (b + min2) - f6, (f + min) - f5, b, f + min, b);
            path.lineTo(f3 - min, b);
            path.cubicTo((f3 - min) + f5, b, f3, (b + min2) - f6, f3, b + min2);
            path.lineTo(f3, f4 - min2);
            path.cubicTo(f3, (f4 - min2) + f6, (f3 - min) + f5, f4, f3 - min, f4);
            path.lineTo(f + min, f4);
            path.cubicTo((f + min) - f5, f4, f, (f4 - min2) + f6, f, f4 - min2);
            path.lineTo(f, b + min2);
        }
        path.close();
        return path;
    }

    private Path b(m mVar) {
        float a = mVar.a != null ? mVar.a.a(this) : 0.0f;
        float b = mVar.b != null ? mVar.b.b(this) : 0.0f;
        float c = mVar.c.c(this);
        float f = a - c;
        float f2 = b - c;
        float f3 = a + c;
        float f4 = b + c;
        if (mVar.o == null) {
            mVar.o = new k(f, f2, 2.0f * c, 2.0f * c);
        }
        float f5 = c * 0.5522848f;
        Path path = new Path();
        path.moveTo(a, f2);
        path.cubicTo(a + f5, f2, f3, b - f5, f3, b);
        path.cubicTo(f3, b + f5, a + f5, f4, a, f4);
        path.cubicTo(a - f5, f4, f, b + f5, f, b);
        path.cubicTo(f, b - f5, a - f5, f2, a, f2);
        path.close();
        return path;
    }

    private Path b(r rVar) {
        float a = rVar.a != null ? rVar.a.a(this) : 0.0f;
        float b = rVar.b != null ? rVar.b.b(this) : 0.0f;
        float a2 = rVar.c.a(this);
        float b2 = rVar.d.b(this);
        float f = a - a2;
        float f2 = b - b2;
        float f3 = a + a2;
        float f4 = b + b2;
        if (rVar.o == null) {
            rVar.o = new k(f, f2, 2.0f * a2, 2.0f * b2);
        }
        float f5 = a2 * 0.5522848f;
        float f6 = b2 * 0.5522848f;
        Path path = new Path();
        path.moveTo(a, f2);
        path.cubicTo(a + f5, f2, f3, b - f6, f3, b);
        path.cubicTo(f3, b + f6, a + f5, f4, a, f4);
        path.cubicTo(a - f5, f4, f, b + f6, f, b);
        path.cubicTo(f, b - f6, a - f5, f2, a, f2);
        path.close();
        return path;
    }

    private Path c(ah ahVar) {
        Path path = new Path();
        path.moveTo(ahVar.a[0], ahVar.a[1]);
        for (int i = 2; i < ahVar.a.length; i += 2) {
            path.lineTo(ahVar.a[i], ahVar.a[i + 1]);
        }
        if (ahVar instanceof ai) {
            path.close();
        }
        if (ahVar.o == null) {
            ahVar.o = b(path);
        }
        path.setFillType(y());
        return path;
    }

    private void a(ar arVar, Path path, ag agVar) {
        float a;
        float b;
        float f;
        float f2;
        Object obj = (agVar.a == null || !agVar.a.booleanValue()) ? null : 1;
        if (agVar.h != null) {
            a(agVar, agVar.h);
        }
        if (obj != null) {
            float a2 = agVar.d != null ? agVar.d.a(this) : 0.0f;
            float b2 = agVar.e != null ? agVar.e.b(this) : 0.0f;
            a = agVar.f != null ? agVar.f.a(this) : 0.0f;
            if (agVar.g != null) {
                b = agVar.g.b(this);
            } else {
                b = 0.0f;
            }
            f = b;
            f2 = a;
            a = b2;
            b = a2;
        } else {
            f = (agVar.g != null ? agVar.g.a(this, 1.0f) : 0.0f) * arVar.o.d;
            f2 = (agVar.f != null ? agVar.f.a(this, 1.0f) : 0.0f) * arVar.o.c;
            a = ((agVar.e != null ? agVar.e.a(this, 1.0f) : 0.0f) * arVar.o.d) + arVar.o.b;
            b = ((agVar.d != null ? agVar.d.a(this, 1.0f) : 0.0f) * arVar.o.c) + arVar.o.a;
        }
        if (f2 != 0.0f && f != 0.0f) {
            PreserveAspectRatio preserveAspectRatio = agVar.w != null ? agVar.w : PreserveAspectRatio.c;
            j();
            this.a.clipPath(path);
            bt btVar = new bt(this);
            a(btVar, Style.a());
            btVar.a.v = Boolean.valueOf(false);
            this.f = a((au) agVar, btVar);
            k kVar = arVar.o;
            if (agVar.c != null) {
                this.a.concat(agVar.c);
                Matrix matrix = new Matrix();
                if (agVar.c.invert(matrix)) {
                    float[] fArr = new float[]{arVar.o.a, arVar.o.b, arVar.o.a(), arVar.o.b, arVar.o.a(), arVar.o.b(), arVar.o.a, arVar.o.b()};
                    matrix.mapPoints(fArr);
                    RectF rectF = new RectF(fArr[0], fArr[1], fArr[0], fArr[1]);
                    for (int i = 2; i <= 6; i += 2) {
                        if (fArr[i] < rectF.left) {
                            rectF.left = fArr[i];
                        }
                        if (fArr[i] > rectF.right) {
                            rectF.right = fArr[i];
                        }
                        if (fArr[i + 1] < rectF.top) {
                            rectF.top = fArr[i + 1];
                        }
                        if (fArr[i + 1] > rectF.bottom) {
                            rectF.bottom = fArr[i + 1];
                        }
                    }
                    kVar = new k(rectF.left, rectF.top, rectF.right - rectF.left, rectF.bottom - rectF.top);
                }
            }
            b += ((float) Math.floor((double) ((kVar.a - b) / f2))) * f2;
            a += ((float) Math.floor((double) ((kVar.b - a) / f))) * f;
            float a3 = kVar.a();
            float b3 = kVar.b();
            k kVar2 = new k(0.0f, 0.0f, f2, f);
            for (float f3 = a; f3 < b3; f3 += f) {
                for (a = b; a < a3; a += f2) {
                    kVar2.a = a;
                    kVar2.b = f3;
                    j();
                    if (!this.f.a.v.booleanValue()) {
                        a(kVar2.a, kVar2.b, kVar2.c, kVar2.d);
                    }
                    if (agVar.x != null) {
                        this.a.concat(a(kVar2, agVar.x, preserveAspectRatio));
                    } else {
                        obj = (agVar.b == null || agVar.b.booleanValue()) ? 1 : null;
                        this.a.translate(a, f3);
                        if (obj == null) {
                            this.a.scale(arVar.o.c, arVar.o.d);
                        }
                    }
                    boolean m = m();
                    for (au a4 : agVar.i) {
                        a(a4);
                    }
                    if (m) {
                        b((ar) agVar);
                    }
                    k();
                }
            }
            k();
        }
    }

    private void a(ag agVar, String str) {
        au a = agVar.u.a(str);
        if (a == null) {
            d("Pattern reference '%s' not found", str);
        } else if (!(a instanceof ag)) {
            e("Pattern href attributes must point to other pattern elements", new Object[0]);
        } else if (a == agVar) {
            e("Circular reference in pattern href attribute '%s'", str);
        } else {
            ag agVar2 = (ag) a;
            if (agVar.a == null) {
                agVar.a = agVar2.a;
            }
            if (agVar.b == null) {
                agVar.b = agVar2.b;
            }
            if (agVar.c == null) {
                agVar.c = agVar2.c;
            }
            if (agVar.d == null) {
                agVar.d = agVar2.d;
            }
            if (agVar.e == null) {
                agVar.e = agVar2.e;
            }
            if (agVar.f == null) {
                agVar.f = agVar2.f;
            }
            if (agVar.g == null) {
                agVar.g = agVar2.g;
            }
            if (agVar.i.isEmpty()) {
                agVar.i = agVar2.i;
            }
            if (agVar.x == null) {
                agVar.x = agVar2.x;
            }
            if (agVar.w == null) {
                agVar.w = agVar2.w;
            }
            if (agVar2.h != null) {
                a(agVar, agVar2.h);
            }
        }
    }

    private void a(aa aaVar, ar arVar) {
        float a;
        float f = -0.1f;
        f("Mask render", new Object[0]);
        boolean z = aaVar.a != null && aaVar.a.booleanValue();
        if (z) {
            float f2;
            a = aaVar.e != null ? aaVar.e.a(this) : arVar.o.c;
            f = aaVar.f != null ? aaVar.f.b(this) : arVar.o.d;
            if (aaVar.c != null) {
                aaVar.c.a(this);
            } else {
                f2 = (float) (((double) arVar.o.a) - (((double) arVar.o.c) * 0.1d));
            }
            if (aaVar.d != null) {
                aaVar.d.b(this);
            } else {
                f2 = (float) (((double) arVar.o.b) - (((double) arVar.o.d) * 0.1d));
            }
        } else {
            a = aaVar.c != null ? aaVar.c.a(this, 1.0f) : -0.1f;
            if (aaVar.d != null) {
                f = aaVar.d.a(this, 1.0f);
            }
            a = (a * arVar.o.c) + arVar.o.a;
            a = arVar.o.b + (f * arVar.o.d);
            a = arVar.o.c * (aaVar.e != null ? aaVar.e.a(this, 1.0f) : 1.2f);
            f = arVar.o.d * (aaVar.f != null ? aaVar.f.a(this, 1.0f) : 1.2f);
        }
        if (a != 0.0f && r1 != 0.0f) {
            j();
            this.f = c((au) aaVar);
            this.f.a.m = Float.valueOf(1.0f);
            z = aaVar.b == null || aaVar.b.booleanValue();
            if (!z) {
                this.a.translate(arVar.o.a, arVar.o.b);
                this.a.scale(arVar.o.c, arVar.o.d);
            }
            a((aq) aaVar, false);
            k();
        }
    }
}
