package com.caverock.androidsvg;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.RectF;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class SVG {
    private static final List<au> a;
    private am b;
    private String c;
    private String d;
    private bx e;
    private float f;
    private d g;

    /* compiled from: Twttr */
    public enum GradientSpread {
        pad,
        reflect,
        repeat
    }

    /* compiled from: Twttr */
    public class Style implements Cloneable {
        public Boolean A;
        public Boolean B;
        public av C;
        public Float D;
        public String E;
        public FillRule F;
        public String G;
        public av H;
        public Float I;
        public av J;
        public Float K;
        public VectorEffect L;
        public long a;
        public av b;
        public FillRule c;
        public Float d;
        public av e;
        public Float f;
        public x g;
        public LineCaps h;
        public LineJoin i;
        public Float j;
        public x[] k;
        public x l;
        public Float m;
        public o n;
        public List<String> o;
        public x p;
        public Integer q;
        public FontStyle r;
        public TextDecoration s;
        public TextDirection t;
        public TextAnchor u;
        public Boolean v;
        public l w;
        public String x;
        public String y;
        public String z;

        /* compiled from: Twttr */
        public enum FillRule {
            NonZero,
            EvenOdd
        }

        /* compiled from: Twttr */
        public enum FontStyle {
            Normal,
            Italic,
            Oblique
        }

        /* compiled from: Twttr */
        public enum LineCaps {
            Butt,
            Round,
            Square
        }

        /* compiled from: Twttr */
        public enum LineJoin {
            Miter,
            Round,
            Bevel
        }

        /* compiled from: Twttr */
        public enum TextAnchor {
            Start,
            Middle,
            End
        }

        /* compiled from: Twttr */
        public enum TextDecoration {
            None,
            Underline,
            Overline,
            LineThrough,
            Blink
        }

        /* compiled from: Twttr */
        public enum TextDirection {
            LTR,
            RTL
        }

        /* compiled from: Twttr */
        public enum VectorEffect {
            None,
            NonScalingStroke
        }

        protected Style() {
            this.a = 0;
        }

        public static Style a() {
            Style style = new Style();
            style.a = -1;
            style.b = o.b;
            style.c = FillRule.NonZero;
            style.d = Float.valueOf(1.0f);
            style.e = null;
            style.f = Float.valueOf(1.0f);
            style.g = new x(1.0f);
            style.h = LineCaps.Butt;
            style.i = LineJoin.Miter;
            style.j = Float.valueOf(4.0f);
            style.k = null;
            style.l = new x(0.0f);
            style.m = Float.valueOf(1.0f);
            style.n = o.b;
            style.o = null;
            style.p = new x(12.0f, Unit.pt);
            style.q = Integer.valueOf(400);
            style.r = FontStyle.Normal;
            style.s = TextDecoration.None;
            style.t = TextDirection.LTR;
            style.u = TextAnchor.Start;
            style.v = Boolean.valueOf(true);
            style.w = null;
            style.x = null;
            style.y = null;
            style.z = null;
            style.A = Boolean.TRUE;
            style.B = Boolean.TRUE;
            style.C = o.b;
            style.D = Float.valueOf(1.0f);
            style.E = null;
            style.F = FillRule.NonZero;
            style.G = null;
            style.H = null;
            style.I = Float.valueOf(1.0f);
            style.J = null;
            style.K = Float.valueOf(1.0f);
            style.L = VectorEffect.None;
            return style;
        }

        public void a(boolean z) {
            this.A = Boolean.TRUE;
            this.v = z ? Boolean.TRUE : Boolean.FALSE;
            this.w = null;
            this.E = null;
            this.m = Float.valueOf(1.0f);
            this.C = o.b;
            this.D = Float.valueOf(1.0f);
            this.G = null;
            this.H = null;
            this.I = Float.valueOf(1.0f);
            this.J = null;
            this.K = Float.valueOf(1.0f);
            this.L = VectorEffect.None;
        }

        protected Object clone() {
            try {
                Style style = (Style) super.clone();
                if (this.k != null) {
                    style.k = (x[]) this.k.clone();
                }
                return style;
            } catch (CloneNotSupportedException e) {
                throw new InternalError(e.toString());
            }
        }
    }

    /* compiled from: Twttr */
    public enum Unit {
        px,
        em,
        ex,
        in,
        cm,
        mm,
        pt,
        pc,
        percent
    }

    static {
        a = new ArrayList(0);
    }

    protected SVG() {
        this.b = null;
        this.c = TtmlNode.ANONYMOUS_REGION_ID;
        this.d = TtmlNode.ANONYMOUS_REGION_ID;
        this.e = null;
        this.f = 96.0f;
        this.g = new d();
    }

    public static SVG a(InputStream inputStream) throws SVGParseException {
        return new SVGParser().a(inputStream);
    }

    public static SVG a(Context context, int i) throws SVGParseException {
        return a(context.getResources(), i);
    }

    public static SVG a(Resources resources, int i) throws SVGParseException {
        return new SVGParser().a(resources.openRawResource(i));
    }

    public static SVG a(AssetManager assetManager, String str) throws SVGParseException, IOException {
        SVGParser sVGParser = new SVGParser();
        InputStream open = assetManager.open(str);
        SVG a = sVGParser.a(open);
        open.close();
        return a;
    }

    public Picture a() {
        x xVar = this.b.c;
        if (xVar == null) {
            return a(512, 512);
        }
        float f;
        float a = xVar.a(this.f);
        k kVar = this.b.x;
        if (kVar != null) {
            f = (kVar.d * a) / kVar.c;
        } else {
            xVar = this.b.d;
            f = xVar != null ? xVar.a(this.f) : a;
        }
        return a((int) Math.ceil((double) a), (int) Math.ceil((double) f));
    }

    public Picture a(int i, int i2) {
        Picture picture = new Picture();
        new bm(picture.beginRecording(i, i2), new k(0.0f, 0.0f, (float) i, (float) i2), this.f).a(this, null, null, false);
        picture.endRecording();
        return picture;
    }

    public void a(Canvas canvas) {
        a(canvas, null);
    }

    public void a(Canvas canvas, RectF rectF) {
        k a;
        if (rectF != null) {
            a = k.a(rectF.left, rectF.top, rectF.right, rectF.bottom);
        } else {
            a = new k(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight());
        }
        new bm(canvas, a, this.f).a(this, null, null, true);
    }

    protected am b() {
        return this.b;
    }

    protected void a(am amVar) {
        this.b = amVar;
    }

    protected au a(String str) {
        if (str != null && str.length() > 1 && str.startsWith("#")) {
            return d(str.substring(1));
        }
        return null;
    }

    protected void a(d dVar) {
        this.g.a(dVar);
    }

    protected List<c> c() {
        return this.g.a();
    }

    protected boolean d() {
        return !this.g.b();
    }

    protected void b(String str) {
        this.c = str;
    }

    protected void c(String str) {
        this.d = str;
    }

    protected bx e() {
        return this.e;
    }

    protected au d(String str) {
        if (str.equals(this.b.p)) {
            return this.b;
        }
        return a(this.b, str);
    }

    private as a(aq aqVar, String str) {
        as asVar = (as) aqVar;
        if (str.equals(asVar.p)) {
            return asVar;
        }
        for (au auVar : aqVar.a()) {
            if (auVar instanceof as) {
                as asVar2 = (as) auVar;
                if (str.equals(asVar2.p)) {
                    return asVar2;
                }
                if (auVar instanceof aq) {
                    asVar = a((aq) auVar, str);
                    if (asVar != null) {
                        return asVar;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }
}
