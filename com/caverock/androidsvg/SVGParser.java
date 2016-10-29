package com.caverock.androidsvg;

import android.graphics.Matrix;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.util.Log;
import com.caverock.androidsvg.CSSParser.MediaType;
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
import com.google.android.exoplayer.extractor.ts.PsExtractor;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import defpackage.bdd;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DefaultHandler2;

/* compiled from: Twttr */
public class SVGParser extends DefaultHandler2 {
    private static HashMap<String, Integer> k;
    private static HashMap<String, x> l;
    private static HashMap<String, Integer> m;
    private static HashMap<String, Alignment> n;
    private static /* synthetic */ int[] o;
    private static /* synthetic */ int[] p;
    private SVG a;
    private aq b;
    private boolean c;
    private int d;
    private boolean e;
    private SVGElem f;
    private StringBuilder g;
    private boolean h;
    private StringBuilder i;
    private HashSet<String> j;

    /* compiled from: Twttr */
    enum SVGAttr {
        CLASS,
        clip,
        clip_path,
        clipPathUnits,
        clip_rule,
        color,
        cx,
        cy,
        direction,
        dx,
        dy,
        fx,
        fy,
        d,
        display,
        fill,
        fill_rule,
        fill_opacity,
        font,
        font_family,
        font_size,
        font_weight,
        font_style,
        gradientTransform,
        gradientUnits,
        height,
        href,
        id,
        marker,
        marker_start,
        marker_mid,
        marker_end,
        markerHeight,
        markerUnits,
        markerWidth,
        mask,
        maskContentUnits,
        maskUnits,
        media,
        offset,
        opacity,
        orient,
        overflow,
        pathLength,
        patternContentUnits,
        patternTransform,
        patternUnits,
        points,
        preserveAspectRatio,
        r,
        refX,
        refY,
        requiredFeatures,
        requiredExtensions,
        requiredFormats,
        requiredFonts,
        rx,
        ry,
        solid_color,
        solid_opacity,
        spreadMethod,
        startOffset,
        stop_color,
        stop_opacity,
        stroke,
        stroke_dasharray,
        stroke_dashoffset,
        stroke_linecap,
        stroke_linejoin,
        stroke_miterlimit,
        stroke_opacity,
        stroke_width,
        style,
        systemLanguage,
        text_anchor,
        text_decoration,
        transform,
        type,
        vector_effect,
        version,
        viewBox,
        width,
        x,
        y,
        x1,
        y1,
        x2,
        y2,
        viewport_fill,
        viewport_fill_opacity,
        visibility,
        UNSUPPORTED;
        
        private static HashMap<String, SVGAttr> aO;

        static {
            aO = new HashMap();
        }

        public static SVGAttr a(String str) {
            SVGAttr sVGAttr = (SVGAttr) aO.get(str);
            if (sVGAttr != null) {
                return sVGAttr;
            }
            if (str.equals("class")) {
                aO.put(str, CLASS);
                return CLASS;
            } else if (str.indexOf(95) != -1) {
                aO.put(str, UNSUPPORTED);
                return UNSUPPORTED;
            } else {
                try {
                    sVGAttr = valueOf(str.replace('-', '_'));
                    if (sVGAttr != CLASS) {
                        aO.put(str, sVGAttr);
                        return sVGAttr;
                    }
                } catch (IllegalArgumentException e) {
                }
                aO.put(str, UNSUPPORTED);
                return UNSUPPORTED;
            }
        }
    }

    /* compiled from: Twttr */
    enum SVGElem {
        svg,
        a,
        circle,
        clipPath,
        defs,
        desc,
        ellipse,
        g,
        image,
        line,
        linearGradient,
        marker,
        mask,
        path,
        pattern,
        polygon,
        polyline,
        radialGradient,
        rect,
        solidColor,
        stop,
        style,
        SWITCH,
        symbol,
        text,
        textPath,
        title,
        tref,
        tspan,
        use,
        view,
        UNSUPPORTED;
        
        private static HashMap<String, SVGElem> G;

        static {
            G = new HashMap();
        }

        public static SVGElem a(String str) {
            SVGElem sVGElem = (SVGElem) G.get(str);
            if (sVGElem != null) {
                return sVGElem;
            }
            if (str.equals("switch")) {
                G.put(str, SWITCH);
                return SWITCH;
            }
            try {
                sVGElem = valueOf(str);
                if (sVGElem != SWITCH) {
                    G.put(str, sVGElem);
                    return sVGElem;
                }
            } catch (IllegalArgumentException e) {
            }
            G.put(str, UNSUPPORTED);
            return UNSUPPORTED;
        }
    }

    public SVGParser() {
        this.a = null;
        this.b = null;
        this.c = false;
        this.e = false;
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = null;
        this.j = null;
    }

    static /* synthetic */ int[] a() {
        int[] iArr = o;
        if (iArr == null) {
            iArr = new int[SVGElem.values().length];
            try {
                iArr[SVGElem.SWITCH.ordinal()] = 23;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[SVGElem.UNSUPPORTED.ordinal()] = 32;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[SVGElem.a.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[SVGElem.circle.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[SVGElem.clipPath.ordinal()] = 4;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[SVGElem.defs.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[SVGElem.desc.ordinal()] = 6;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[SVGElem.ellipse.ordinal()] = 7;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[SVGElem.g.ordinal()] = 8;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[SVGElem.image.ordinal()] = 9;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[SVGElem.line.ordinal()] = 10;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[SVGElem.linearGradient.ordinal()] = 11;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr[SVGElem.marker.ordinal()] = 12;
            } catch (NoSuchFieldError e13) {
            }
            try {
                iArr[SVGElem.mask.ordinal()] = 13;
            } catch (NoSuchFieldError e14) {
            }
            try {
                iArr[SVGElem.path.ordinal()] = 14;
            } catch (NoSuchFieldError e15) {
            }
            try {
                iArr[SVGElem.pattern.ordinal()] = 15;
            } catch (NoSuchFieldError e16) {
            }
            try {
                iArr[SVGElem.polygon.ordinal()] = 16;
            } catch (NoSuchFieldError e17) {
            }
            try {
                iArr[SVGElem.polyline.ordinal()] = 17;
            } catch (NoSuchFieldError e18) {
            }
            try {
                iArr[SVGElem.radialGradient.ordinal()] = 18;
            } catch (NoSuchFieldError e19) {
            }
            try {
                iArr[SVGElem.rect.ordinal()] = 19;
            } catch (NoSuchFieldError e20) {
            }
            try {
                iArr[SVGElem.solidColor.ordinal()] = 20;
            } catch (NoSuchFieldError e21) {
            }
            try {
                iArr[SVGElem.stop.ordinal()] = 21;
            } catch (NoSuchFieldError e22) {
            }
            try {
                iArr[SVGElem.style.ordinal()] = 22;
            } catch (NoSuchFieldError e23) {
            }
            try {
                iArr[SVGElem.svg.ordinal()] = 1;
            } catch (NoSuchFieldError e24) {
            }
            try {
                iArr[SVGElem.symbol.ordinal()] = 24;
            } catch (NoSuchFieldError e25) {
            }
            try {
                iArr[SVGElem.text.ordinal()] = 25;
            } catch (NoSuchFieldError e26) {
            }
            try {
                iArr[SVGElem.textPath.ordinal()] = 26;
            } catch (NoSuchFieldError e27) {
            }
            try {
                iArr[SVGElem.title.ordinal()] = 27;
            } catch (NoSuchFieldError e28) {
            }
            try {
                iArr[SVGElem.tref.ordinal()] = 28;
            } catch (NoSuchFieldError e29) {
            }
            try {
                iArr[SVGElem.tspan.ordinal()] = 29;
            } catch (NoSuchFieldError e30) {
            }
            try {
                iArr[SVGElem.use.ordinal()] = 30;
            } catch (NoSuchFieldError e31) {
            }
            try {
                iArr[SVGElem.view.ordinal()] = 31;
            } catch (NoSuchFieldError e32) {
            }
            o = iArr;
        }
        return iArr;
    }

    static /* synthetic */ int[] b() {
        int[] iArr = p;
        if (iArr == null) {
            iArr = new int[SVGAttr.values().length];
            try {
                iArr[SVGAttr.CLASS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[SVGAttr.UNSUPPORTED.ordinal()] = 92;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[SVGAttr.clip.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[SVGAttr.clipPathUnits.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[SVGAttr.clip_path.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[SVGAttr.clip_rule.ordinal()] = 5;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[SVGAttr.color.ordinal()] = 6;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[SVGAttr.cx.ordinal()] = 7;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[SVGAttr.cy.ordinal()] = 8;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[SVGAttr.d.ordinal()] = 14;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[SVGAttr.direction.ordinal()] = 9;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[SVGAttr.display.ordinal()] = 15;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr[SVGAttr.dx.ordinal()] = 10;
            } catch (NoSuchFieldError e13) {
            }
            try {
                iArr[SVGAttr.dy.ordinal()] = 11;
            } catch (NoSuchFieldError e14) {
            }
            try {
                iArr[SVGAttr.fill.ordinal()] = 16;
            } catch (NoSuchFieldError e15) {
            }
            try {
                iArr[SVGAttr.fill_opacity.ordinal()] = 18;
            } catch (NoSuchFieldError e16) {
            }
            try {
                iArr[SVGAttr.fill_rule.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                iArr[SVGAttr.font.ordinal()] = 19;
            } catch (NoSuchFieldError e18) {
            }
            try {
                iArr[SVGAttr.font_family.ordinal()] = 20;
            } catch (NoSuchFieldError e19) {
            }
            try {
                iArr[SVGAttr.font_size.ordinal()] = 21;
            } catch (NoSuchFieldError e20) {
            }
            try {
                iArr[SVGAttr.font_style.ordinal()] = 23;
            } catch (NoSuchFieldError e21) {
            }
            try {
                iArr[SVGAttr.font_weight.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                iArr[SVGAttr.fx.ordinal()] = 12;
            } catch (NoSuchFieldError e23) {
            }
            try {
                iArr[SVGAttr.fy.ordinal()] = 13;
            } catch (NoSuchFieldError e24) {
            }
            try {
                iArr[SVGAttr.gradientTransform.ordinal()] = 24;
            } catch (NoSuchFieldError e25) {
            }
            try {
                iArr[SVGAttr.gradientUnits.ordinal()] = 25;
            } catch (NoSuchFieldError e26) {
            }
            try {
                iArr[SVGAttr.height.ordinal()] = 26;
            } catch (NoSuchFieldError e27) {
            }
            try {
                iArr[SVGAttr.href.ordinal()] = 27;
            } catch (NoSuchFieldError e28) {
            }
            try {
                iArr[SVGAttr.id.ordinal()] = 28;
            } catch (NoSuchFieldError e29) {
            }
            try {
                iArr[SVGAttr.marker.ordinal()] = 29;
            } catch (NoSuchFieldError e30) {
            }
            try {
                iArr[SVGAttr.markerHeight.ordinal()] = 33;
            } catch (NoSuchFieldError e31) {
            }
            try {
                iArr[SVGAttr.markerUnits.ordinal()] = 34;
            } catch (NoSuchFieldError e32) {
            }
            try {
                iArr[SVGAttr.markerWidth.ordinal()] = 35;
            } catch (NoSuchFieldError e33) {
            }
            try {
                iArr[SVGAttr.marker_end.ordinal()] = 32;
            } catch (NoSuchFieldError e34) {
            }
            try {
                iArr[SVGAttr.marker_mid.ordinal()] = 31;
            } catch (NoSuchFieldError e35) {
            }
            try {
                iArr[SVGAttr.marker_start.ordinal()] = 30;
            } catch (NoSuchFieldError e36) {
            }
            try {
                iArr[SVGAttr.mask.ordinal()] = 36;
            } catch (NoSuchFieldError e37) {
            }
            try {
                iArr[SVGAttr.maskContentUnits.ordinal()] = 37;
            } catch (NoSuchFieldError e38) {
            }
            try {
                iArr[SVGAttr.maskUnits.ordinal()] = 38;
            } catch (NoSuchFieldError e39) {
            }
            try {
                iArr[SVGAttr.media.ordinal()] = 39;
            } catch (NoSuchFieldError e40) {
            }
            try {
                iArr[SVGAttr.offset.ordinal()] = 40;
            } catch (NoSuchFieldError e41) {
            }
            try {
                iArr[SVGAttr.opacity.ordinal()] = 41;
            } catch (NoSuchFieldError e42) {
            }
            try {
                iArr[SVGAttr.orient.ordinal()] = 42;
            } catch (NoSuchFieldError e43) {
            }
            try {
                iArr[SVGAttr.overflow.ordinal()] = 43;
            } catch (NoSuchFieldError e44) {
            }
            try {
                iArr[SVGAttr.pathLength.ordinal()] = 44;
            } catch (NoSuchFieldError e45) {
            }
            try {
                iArr[SVGAttr.patternContentUnits.ordinal()] = 45;
            } catch (NoSuchFieldError e46) {
            }
            try {
                iArr[SVGAttr.patternTransform.ordinal()] = 46;
            } catch (NoSuchFieldError e47) {
            }
            try {
                iArr[SVGAttr.patternUnits.ordinal()] = 47;
            } catch (NoSuchFieldError e48) {
            }
            try {
                iArr[SVGAttr.points.ordinal()] = 48;
            } catch (NoSuchFieldError e49) {
            }
            try {
                iArr[SVGAttr.preserveAspectRatio.ordinal()] = 49;
            } catch (NoSuchFieldError e50) {
            }
            try {
                iArr[SVGAttr.r.ordinal()] = 50;
            } catch (NoSuchFieldError e51) {
            }
            try {
                iArr[SVGAttr.refX.ordinal()] = 51;
            } catch (NoSuchFieldError e52) {
            }
            try {
                iArr[SVGAttr.refY.ordinal()] = 52;
            } catch (NoSuchFieldError e53) {
            }
            try {
                iArr[SVGAttr.requiredExtensions.ordinal()] = 54;
            } catch (NoSuchFieldError e54) {
            }
            try {
                iArr[SVGAttr.requiredFeatures.ordinal()] = 53;
            } catch (NoSuchFieldError e55) {
            }
            try {
                iArr[SVGAttr.requiredFonts.ordinal()] = 56;
            } catch (NoSuchFieldError e56) {
            }
            try {
                iArr[SVGAttr.requiredFormats.ordinal()] = 55;
            } catch (NoSuchFieldError e57) {
            }
            try {
                iArr[SVGAttr.rx.ordinal()] = 57;
            } catch (NoSuchFieldError e58) {
            }
            try {
                iArr[SVGAttr.ry.ordinal()] = 58;
            } catch (NoSuchFieldError e59) {
            }
            try {
                iArr[SVGAttr.solid_color.ordinal()] = 59;
            } catch (NoSuchFieldError e60) {
            }
            try {
                iArr[SVGAttr.solid_opacity.ordinal()] = 60;
            } catch (NoSuchFieldError e61) {
            }
            try {
                iArr[SVGAttr.spreadMethod.ordinal()] = 61;
            } catch (NoSuchFieldError e62) {
            }
            try {
                iArr[SVGAttr.startOffset.ordinal()] = 62;
            } catch (NoSuchFieldError e63) {
            }
            try {
                iArr[SVGAttr.stop_color.ordinal()] = 63;
            } catch (NoSuchFieldError e64) {
            }
            try {
                iArr[SVGAttr.stop_opacity.ordinal()] = 64;
            } catch (NoSuchFieldError e65) {
            }
            try {
                iArr[SVGAttr.stroke.ordinal()] = 65;
            } catch (NoSuchFieldError e66) {
            }
            try {
                iArr[SVGAttr.stroke_dasharray.ordinal()] = 66;
            } catch (NoSuchFieldError e67) {
            }
            try {
                iArr[SVGAttr.stroke_dashoffset.ordinal()] = 67;
            } catch (NoSuchFieldError e68) {
            }
            try {
                iArr[SVGAttr.stroke_linecap.ordinal()] = 68;
            } catch (NoSuchFieldError e69) {
            }
            try {
                iArr[SVGAttr.stroke_linejoin.ordinal()] = 69;
            } catch (NoSuchFieldError e70) {
            }
            try {
                iArr[SVGAttr.stroke_miterlimit.ordinal()] = 70;
            } catch (NoSuchFieldError e71) {
            }
            try {
                iArr[SVGAttr.stroke_opacity.ordinal()] = 71;
            } catch (NoSuchFieldError e72) {
            }
            try {
                iArr[SVGAttr.stroke_width.ordinal()] = 72;
            } catch (NoSuchFieldError e73) {
            }
            try {
                iArr[SVGAttr.style.ordinal()] = 73;
            } catch (NoSuchFieldError e74) {
            }
            try {
                iArr[SVGAttr.systemLanguage.ordinal()] = 74;
            } catch (NoSuchFieldError e75) {
            }
            try {
                iArr[SVGAttr.text_anchor.ordinal()] = 75;
            } catch (NoSuchFieldError e76) {
            }
            try {
                iArr[SVGAttr.text_decoration.ordinal()] = 76;
            } catch (NoSuchFieldError e77) {
            }
            try {
                iArr[SVGAttr.transform.ordinal()] = 77;
            } catch (NoSuchFieldError e78) {
            }
            try {
                iArr[SVGAttr.type.ordinal()] = 78;
            } catch (NoSuchFieldError e79) {
            }
            try {
                iArr[SVGAttr.vector_effect.ordinal()] = 79;
            } catch (NoSuchFieldError e80) {
            }
            try {
                iArr[SVGAttr.version.ordinal()] = 80;
            } catch (NoSuchFieldError e81) {
            }
            try {
                iArr[SVGAttr.viewBox.ordinal()] = 81;
            } catch (NoSuchFieldError e82) {
            }
            try {
                iArr[SVGAttr.viewport_fill.ordinal()] = 89;
            } catch (NoSuchFieldError e83) {
            }
            try {
                iArr[SVGAttr.viewport_fill_opacity.ordinal()] = 90;
            } catch (NoSuchFieldError e84) {
            }
            try {
                iArr[SVGAttr.visibility.ordinal()] = 91;
            } catch (NoSuchFieldError e85) {
            }
            try {
                iArr[SVGAttr.width.ordinal()] = 82;
            } catch (NoSuchFieldError e86) {
            }
            try {
                iArr[SVGAttr.x.ordinal()] = 83;
            } catch (NoSuchFieldError e87) {
            }
            try {
                iArr[SVGAttr.x1.ordinal()] = 85;
            } catch (NoSuchFieldError e88) {
            }
            try {
                iArr[SVGAttr.x2.ordinal()] = 87;
            } catch (NoSuchFieldError e89) {
            }
            try {
                iArr[SVGAttr.y.ordinal()] = 84;
            } catch (NoSuchFieldError e90) {
            }
            try {
                iArr[SVGAttr.y1.ordinal()] = 86;
            } catch (NoSuchFieldError e91) {
            }
            try {
                iArr[SVGAttr.y2.ordinal()] = 88;
            } catch (NoSuchFieldError e92) {
            }
            p = iArr;
        }
        return iArr;
    }

    static {
        k = null;
        l = null;
        m = null;
        n = null;
    }

    protected SVG a(InputStream inputStream) throws SVGParseException {
        InputStream inputStream2;
        InputStream gZIPInputStream;
        if (inputStream.markSupported()) {
            inputStream2 = inputStream;
        } else {
            inputStream2 = new BufferedInputStream(inputStream);
        }
        try {
            inputStream2.mark(3);
            int read = inputStream2.read() + (inputStream2.read() << 8);
            inputStream2.reset();
            if (read == 35615) {
                gZIPInputStream = new GZIPInputStream(inputStream2);
            } else {
                gZIPInputStream = inputStream2;
            }
        } catch (IOException e) {
            gZIPInputStream = inputStream2;
        }
        try {
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            xMLReader.setContentHandler(this);
            xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", this);
            xMLReader.parse(new InputSource(gZIPInputStream));
            try {
                gZIPInputStream.close();
            } catch (IOException e2) {
                Log.e("SVGParser", "Exception thrown closing input stream");
            }
            return this.a;
        } catch (Throwable e3) {
            throw new SVGParseException("File error", e3);
        } catch (Throwable e32) {
            throw new SVGParseException("XML Parser problem", e32);
        } catch (Throwable e322) {
            throw new SVGParseException("SVG parse error: " + e322.getMessage(), e322);
        } catch (Throwable th) {
            try {
                gZIPInputStream.close();
            } catch (IOException e4) {
                Log.e("SVGParser", "Exception thrown closing input stream");
            }
        }
    }

    public void startDocument() throws SAXException {
        this.a = new SVG();
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (this.c) {
            this.d++;
        } else if ("http://www.w3.org/2000/svg".equals(str) || TtmlNode.ANONYMOUS_REGION_ID.equals(str)) {
            SVGElem a = SVGElem.a(str2);
            switch (a()[a.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    a(attributes);
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    b(attributes);
                case Util.TYPE_OTHER /*3*/:
                    h(attributes);
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    w(attributes);
                case EbmlReader.TYPE_FLOAT /*5*/:
                    c(attributes);
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                    this.e = true;
                    this.f = a;
                case C.ENCODING_DTS /*7*/:
                    i(attributes);
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    e(attributes);
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    j(attributes);
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    s(attributes);
                case Atom.FULL_HEADER_SIZE /*12*/:
                    r(attributes);
                case b.ShimmerFrameLayout_shape /*13*/:
                    A(attributes);
                case b.ShimmerFrameLayout_tilt /*14*/:
                    f(attributes);
                case bdd.TwitterButton_strokeWidth /*15*/:
                    y(attributes);
                case Atom.LONG_HEADER_SIZE /*16*/:
                    l(attributes);
                case bdd.TwitterButton_bounded /*17*/:
                    k(attributes);
                case bdd.TwitterButton_knockout /*18*/:
                    t(attributes);
                case bdd.TwitterButton_iconLayout /*19*/:
                    g(attributes);
                case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                    v(attributes);
                case bdd.TweetView_mediaTopMargin /*21*/:
                    u(attributes);
                case bdd.TweetView_mediaBottomMargin /*22*/:
                    B(attributes);
                case bdd.TweetView_mediaDivider /*23*/:
                    p(attributes);
                case bdd.TweetView_autoLink /*24*/:
                    q(attributes);
                case bdd.TweetView_linkSelectedColor /*25*/:
                    m(attributes);
                case bdd.TweetView_previewFlags /*26*/:
                    x(attributes);
                case bdd.TweetView_inlineActionBarPaddingNormal /*28*/:
                    o(attributes);
                case bdd.TweetView_tweetViewLayoutId /*29*/:
                    n(attributes);
                case bdd.AppCompatTheme_actionModeSplitBackground /*30*/:
                    d(attributes);
                case bdd.AppCompatTheme_actionModeCloseDrawable /*31*/:
                    z(attributes);
                default:
                    this.c = true;
                    this.d = 1;
            }
        }
    }

    public void characters(char[] cArr, int i, int i2) throws SAXException {
        if (!this.c) {
            if (this.e) {
                if (this.g == null) {
                    this.g = new StringBuilder(i2);
                }
                this.g.append(cArr, i, i2);
            } else if (this.h) {
                if (this.i == null) {
                    this.i = new StringBuilder(i2);
                }
                this.i.append(cArr, i, i2);
            } else if (this.b instanceof bf) {
                ao aoVar = (ao) this.b;
                int size = aoVar.i.size();
                au auVar = size == 0 ? null : (au) aoVar.i.get(size - 1);
                if (auVar instanceof bj) {
                    bj bjVar = (bj) auVar;
                    bjVar.a += new String(cArr, i, i2);
                    return;
                }
                ((ao) this.b).a(new bj(new String(cArr, i, i2)));
            }
        }
    }

    public void comment(char[] cArr, int i, int i2) throws SAXException {
        if (!this.c && this.h) {
            if (this.i == null) {
                this.i = new StringBuilder(i2);
            }
            this.i.append(cArr, i, i2);
        }
    }

    public void endElement(String str, String str2, String str3) throws SAXException {
        if (this.c) {
            int i = this.d - 1;
            this.d = i;
            if (i == 0) {
                this.c = false;
                return;
            }
        }
        if ("http://www.w3.org/2000/svg".equals(str) || TtmlNode.ANONYMOUS_REGION_ID.equals(str)) {
            switch (a()[SVGElem.a(str2).ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                case EbmlReader.TYPE_FLOAT /*5*/:
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                case b.ShimmerFrameLayout_relative_width /*11*/:
                case Atom.FULL_HEADER_SIZE /*12*/:
                case b.ShimmerFrameLayout_shape /*13*/:
                case bdd.TwitterButton_strokeWidth /*15*/:
                case bdd.TwitterButton_knockout /*18*/:
                case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                case bdd.TweetView_mediaTopMargin /*21*/:
                case bdd.TweetView_mediaDivider /*23*/:
                case bdd.TweetView_autoLink /*24*/:
                case bdd.TweetView_linkSelectedColor /*25*/:
                case bdd.TweetView_previewFlags /*26*/:
                case bdd.TweetView_tweetViewLayoutId /*29*/:
                case bdd.AppCompatTheme_actionModeSplitBackground /*30*/:
                case bdd.AppCompatTheme_actionModeCloseDrawable /*31*/:
                    this.b = ((au) this.b).v;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                    this.e = false;
                    if (this.f == SVGElem.title) {
                        this.a.b(this.g.toString());
                    } else if (this.f == SVGElem.desc) {
                        this.a.c(this.g.toString());
                    }
                    this.g.setLength(0);
                case bdd.TweetView_mediaBottomMargin /*22*/:
                    if (this.i != null) {
                        this.h = false;
                        D(this.i.toString());
                        this.i.setLength(0);
                    }
                default:
            }
        }
    }

    public void endDocument() throws SAXException {
    }

    private void a(String str, Object... objArr) {
    }

    private void a(Attributes attributes) throws SAXException {
        a("<svg>", new Object[0]);
        am amVar = new am();
        amVar.u = this.a;
        amVar.v = this.b;
        a((as) amVar, attributes);
        b((as) amVar, attributes);
        a((an) amVar, attributes);
        a((ay) amVar, attributes);
        a(amVar, attributes);
        if (this.b == null) {
            this.a.a(amVar);
        } else {
            this.b.a(amVar);
        }
        this.b = amVar;
    }

    private void a(am amVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.TweetView_previewFlags /*26*/:
                    amVar.d = a(trim);
                    if (!amVar.d.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <svg> element. height cannot be negative");
                case bdd.AppCompatTheme_panelMenuListTheme /*80*/:
                    amVar.e = trim;
                    break;
                case bdd.AppCompatTheme_colorPrimary /*82*/:
                    amVar.c = a(trim);
                    if (!amVar.c.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <svg> element. width cannot be negative");
                case bdd.AppCompatTheme_colorPrimaryDark /*83*/:
                    amVar.a = a(trim);
                    break;
                case bdd.AppCompatTheme_colorAccent /*84*/:
                    amVar.b = a(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void b(Attributes attributes) throws SAXException {
        a("<g>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        an uVar = new u();
        uVar.u = this.a;
        uVar.v = this.b;
        a((as) uVar, attributes);
        b((as) uVar, attributes);
        a((v) uVar, attributes);
        a(uVar, attributes);
        this.b.a(uVar);
        this.b = uVar;
    }

    private void c(Attributes attributes) throws SAXException {
        a("<defs>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        v qVar = new q();
        qVar.u = this.a;
        qVar.v = this.b;
        a((as) qVar, attributes);
        b((as) qVar, attributes);
        a(qVar, attributes);
        this.b.a(qVar);
        this.b = qVar;
    }

    private void d(Attributes attributes) throws SAXException {
        a("<use>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        bk bkVar = new bk();
        bkVar.u = this.a;
        bkVar.v = this.b;
        a((as) bkVar, attributes);
        b((as) bkVar, attributes);
        a((v) bkVar, attributes);
        a((an) bkVar, attributes);
        a(bkVar, attributes);
        this.b.a(bkVar);
        this.b = bkVar;
    }

    private void a(bk bkVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.TweetView_previewFlags /*26*/:
                    bkVar.f = a(trim);
                    if (!bkVar.f.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <use> element. height cannot be negative");
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                    if (!"http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                        break;
                    }
                    bkVar.a = trim;
                    break;
                case bdd.AppCompatTheme_colorPrimary /*82*/:
                    bkVar.e = a(trim);
                    if (!bkVar.e.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <use> element. width cannot be negative");
                case bdd.AppCompatTheme_colorPrimaryDark /*83*/:
                    bkVar.c = a(trim);
                    break;
                case bdd.AppCompatTheme_colorAccent /*84*/:
                    bkVar.d = a(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void e(Attributes attributes) throws SAXException {
        a("<image>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        w wVar = new w();
        wVar.u = this.a;
        wVar.v = this.b;
        a((as) wVar, attributes);
        b((as) wVar, attributes);
        a((v) wVar, attributes);
        a((an) wVar, attributes);
        a(wVar, attributes);
        this.b.a(wVar);
        this.b = wVar;
    }

    private void a(w wVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.TweetView_previewFlags /*26*/:
                    wVar.e = a(trim);
                    if (!wVar.e.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <use> element. height cannot be negative");
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                    if (!"http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                        break;
                    }
                    wVar.a = trim;
                    break;
                case bdd.AppCompatTheme_actionButtonStyle /*49*/:
                    a((aw) wVar, trim);
                    break;
                case bdd.AppCompatTheme_colorPrimary /*82*/:
                    wVar.d = a(trim);
                    if (!wVar.d.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <use> element. width cannot be negative");
                case bdd.AppCompatTheme_colorPrimaryDark /*83*/:
                    wVar.b = a(trim);
                    break;
                case bdd.AppCompatTheme_colorAccent /*84*/:
                    wVar.c = a(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void f(Attributes attributes) throws SAXException {
        a("<path>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        ad adVar = new ad();
        adVar.u = this.a;
        adVar.v = this.b;
        a((as) adVar, attributes);
        b((as) adVar, attributes);
        a((v) adVar, attributes);
        a((an) adVar, attributes);
        a(adVar, attributes);
        this.b.a(adVar);
    }

    private void a(ad adVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case b.ShimmerFrameLayout_tilt /*14*/:
                    adVar.a = z(trim);
                    break;
                case bdd.AppCompatTheme_listDividerAlertDialog /*44*/:
                    adVar.b = Float.valueOf(e(trim));
                    if (adVar.b.floatValue() >= 0.0f) {
                        break;
                    }
                    throw new SAXException("Invalid <path> element. pathLength cannot be negative");
                default:
                    break;
            }
        }
    }

    private void g(Attributes attributes) throws SAXException {
        a("<rect>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        aj ajVar = new aj();
        ajVar.u = this.a;
        ajVar.v = this.b;
        a((as) ajVar, attributes);
        b((as) ajVar, attributes);
        a((v) ajVar, attributes);
        a((an) ajVar, attributes);
        a(ajVar, attributes);
        this.b.a(ajVar);
    }

    private void a(aj ajVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.TweetView_previewFlags /*26*/:
                    ajVar.d = a(trim);
                    if (!ajVar.d.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <rect> element. height cannot be negative");
                case bdd.AppCompatTheme_activityChooserViewStyle /*57*/:
                    ajVar.f = a(trim);
                    if (!ajVar.f.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <rect> element. rx cannot be negative");
                case bdd.AppCompatTheme_toolbarStyle /*58*/:
                    ajVar.g = a(trim);
                    if (!ajVar.g.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <rect> element. ry cannot be negative");
                case bdd.AppCompatTheme_colorPrimary /*82*/:
                    ajVar.c = a(trim);
                    if (!ajVar.c.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <rect> element. width cannot be negative");
                case bdd.AppCompatTheme_colorPrimaryDark /*83*/:
                    ajVar.a = a(trim);
                    break;
                case bdd.AppCompatTheme_colorAccent /*84*/:
                    ajVar.b = a(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void h(Attributes attributes) throws SAXException {
        a("<circle>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        m mVar = new m();
        mVar.u = this.a;
        mVar.v = this.b;
        a((as) mVar, attributes);
        b((as) mVar, attributes);
        a((v) mVar, attributes);
        a((an) mVar, attributes);
        a(mVar, attributes);
        this.b.a(mVar);
    }

    private void a(m mVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case C.ENCODING_DTS /*7*/:
                    mVar.a = a(trim);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    mVar.b = a(trim);
                    break;
                case bdd.AppCompatTheme_buttonBarStyle /*50*/:
                    mVar.c = a(trim);
                    if (!mVar.c.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <circle> element. r cannot be negative");
                default:
                    break;
            }
        }
    }

    private void i(Attributes attributes) throws SAXException {
        a("<ellipse>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        r rVar = new r();
        rVar.u = this.a;
        rVar.v = this.b;
        a((as) rVar, attributes);
        b((as) rVar, attributes);
        a((v) rVar, attributes);
        a((an) rVar, attributes);
        a(rVar, attributes);
        this.b.a(rVar);
    }

    private void a(r rVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case C.ENCODING_DTS /*7*/:
                    rVar.a = a(trim);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    rVar.b = a(trim);
                    break;
                case bdd.AppCompatTheme_activityChooserViewStyle /*57*/:
                    rVar.c = a(trim);
                    if (!rVar.c.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <ellipse> element. rx cannot be negative");
                case bdd.AppCompatTheme_toolbarStyle /*58*/:
                    rVar.d = a(trim);
                    if (!rVar.d.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <ellipse> element. ry cannot be negative");
                default:
                    break;
            }
        }
    }

    private void j(Attributes attributes) throws SAXException {
        a("<line>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        y yVar = new y();
        yVar.u = this.a;
        yVar.v = this.b;
        a((as) yVar, attributes);
        b((as) yVar, attributes);
        a((v) yVar, attributes);
        a((an) yVar, attributes);
        a(yVar, attributes);
        this.b.a(yVar);
    }

    private void a(y yVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.AppCompatTheme_colorControlNormal /*85*/:
                    yVar.a = a(trim);
                    break;
                case bdd.AppCompatTheme_colorControlActivated /*86*/:
                    yVar.b = a(trim);
                    break;
                case bdd.AppCompatTheme_colorControlHighlight /*87*/:
                    yVar.c = a(trim);
                    break;
                case bdd.AppCompatTheme_colorButtonNormal /*88*/:
                    yVar.d = a(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void k(Attributes attributes) throws SAXException {
        a("<polyline>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        ah ahVar = new ah();
        ahVar.u = this.a;
        ahVar.v = this.b;
        a((as) ahVar, attributes);
        b((as) ahVar, attributes);
        a((v) ahVar, attributes);
        a((an) ahVar, attributes);
        a(ahVar, attributes, "polyline");
        this.b.a(ahVar);
    }

    private void a(ah ahVar, Attributes attributes, String str) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (SVGAttr.a(attributes.getLocalName(i)) == SVGAttr.points) {
                cb cbVar = new cb(attributes.getValue(i));
                List<Float> arrayList = new ArrayList();
                cbVar.d();
                while (!cbVar.c()) {
                    Float f = cbVar.f();
                    if (f == null) {
                        throw new SAXException("Invalid <" + str + "> points attribute. Non-coordinate content found in list.");
                    }
                    cbVar.e();
                    Float f2 = cbVar.f();
                    if (f2 == null) {
                        throw new SAXException("Invalid <" + str + "> points attribute. There should be an even number of coordinates.");
                    }
                    cbVar.e();
                    arrayList.add(f);
                    arrayList.add(f2);
                }
                ahVar.a = new float[arrayList.size()];
                int i2 = 0;
                for (Float floatValue : arrayList) {
                    int i3 = i2 + 1;
                    ahVar.a[i2] = floatValue.floatValue();
                    i2 = i3;
                }
            }
        }
    }

    private void l(Attributes attributes) throws SAXException {
        a("<polygon>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        ah aiVar = new ai();
        aiVar.u = this.a;
        aiVar.v = this.b;
        a((as) aiVar, attributes);
        b((as) aiVar, attributes);
        a((v) aiVar, attributes);
        a((an) aiVar, attributes);
        a(aiVar, attributes, "polygon");
        this.b.a(aiVar);
    }

    private void m(Attributes attributes) throws SAXException {
        a("<text>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        bh bdVar = new bd();
        bdVar.u = this.a;
        bdVar.v = this.b;
        a((as) bdVar, attributes);
        b((as) bdVar, attributes);
        a((v) bdVar, attributes);
        a((an) bdVar, attributes);
        a(bdVar, attributes);
        this.b.a(bdVar);
        this.b = bdVar;
    }

    private void a(bh bhVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    bhVar.d = d(trim);
                    break;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    bhVar.e = d(trim);
                    break;
                case bdd.AppCompatTheme_colorPrimaryDark /*83*/:
                    bhVar.b = d(trim);
                    break;
                case bdd.AppCompatTheme_colorAccent /*84*/:
                    bhVar.c = d(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void n(Attributes attributes) throws SAXException {
        a("<tspan>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        } else if (this.b instanceof bf) {
            bh bcVar = new bc();
            bcVar.u = this.a;
            bcVar.v = this.b;
            a((as) bcVar, attributes);
            b((as) bcVar, attributes);
            a((an) bcVar, attributes);
            a(bcVar, attributes);
            this.b.a(bcVar);
            this.b = bcVar;
            if (bcVar.v instanceof bi) {
                bcVar.a((bi) bcVar.v);
            } else {
                bcVar.a(((be) bcVar.v).g());
            }
        } else {
            throw new SAXException("Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements.");
        }
    }

    private void o(Attributes attributes) throws SAXException {
        a("<tref>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        } else if (this.b instanceof bf) {
            bb bbVar = new bb();
            bbVar.u = this.a;
            bbVar.v = this.b;
            a((as) bbVar, attributes);
            b((as) bbVar, attributes);
            a((an) bbVar, attributes);
            a(bbVar, attributes);
            this.b.a(bbVar);
            if (bbVar.v instanceof bi) {
                bbVar.a((bi) bbVar.v);
            } else {
                bbVar.a(((be) bbVar.v).g());
            }
        } else {
            throw new SAXException("Invalid document. <tref> elements are only valid inside <text> or <tspan> elements.");
        }
    }

    private void a(bb bbVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                    if (!"http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                        break;
                    }
                    bbVar.a = trim;
                    break;
                default:
                    break;
            }
        }
    }

    private void p(Attributes attributes) throws SAXException {
        a("<switch>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        an azVar = new az();
        azVar.u = this.a;
        azVar.v = this.b;
        a((as) azVar, attributes);
        b((as) azVar, attributes);
        a((v) azVar, attributes);
        a(azVar, attributes);
        this.b.a(azVar);
        this.b = azVar;
    }

    private void a(an anVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.AppCompatTheme_selectableItemBackgroundBorderless /*53*/:
                    anVar.a(A(trim));
                    break;
                case bdd.AppCompatTheme_borderlessButtonStyle /*54*/:
                    anVar.a(trim);
                    break;
                case bdd.AppCompatTheme_dividerVertical /*55*/:
                    anVar.c(C(trim));
                    break;
                case bdd.AppCompatTheme_dividerHorizontal /*56*/:
                    Set hashSet;
                    Collection k = k(trim);
                    if (k != null) {
                        hashSet = new HashSet(k);
                    } else {
                        hashSet = new HashSet(0);
                    }
                    anVar.d(hashSet);
                    break;
                case bdd.AppCompatTheme_dropDownListViewStyle /*74*/:
                    anVar.b(B(trim));
                    break;
                default:
                    break;
            }
        }
    }

    private void q(Attributes attributes) throws SAXException {
        a("<symbol>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        ay baVar = new ba();
        baVar.u = this.a;
        baVar.v = this.b;
        a((as) baVar, attributes);
        b((as) baVar, attributes);
        a((an) baVar, attributes);
        a(baVar, attributes);
        this.b.a(baVar);
        this.b = baVar;
    }

    private void r(Attributes attributes) throws SAXException {
        a("<marker>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        z zVar = new z();
        zVar.u = this.a;
        zVar.v = this.b;
        a((as) zVar, attributes);
        b((as) zVar, attributes);
        a((an) zVar, attributes);
        a((ay) zVar, attributes);
        a(zVar, attributes);
        this.b.a(zVar);
        this.b = zVar;
    }

    private void a(z zVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
                    zVar.e = a(trim);
                    if (!zVar.e.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <marker> element. markerHeight cannot be negative");
                case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                    if ("strokeWidth".equals(trim)) {
                        zVar.a = false;
                        break;
                    } else if ("userSpaceOnUse".equals(trim)) {
                        zVar.a = true;
                        break;
                    } else {
                        throw new SAXException("Invalid value for attribute markerUnits");
                    }
                case bdd.AppCompatTheme_actionModeSelectAllDrawable /*35*/:
                    zVar.d = a(trim);
                    if (!zVar.d.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <marker> element. markerWidth cannot be negative");
                case bdd.AppCompatTheme_dialogTheme /*42*/:
                    if (!"auto".equals(trim)) {
                        zVar.f = Float.valueOf(e(trim));
                        break;
                    } else {
                        zVar.f = Float.valueOf(Float.NaN);
                        break;
                    }
                case bdd.AppCompatTheme_buttonBarButtonStyle /*51*/:
                    zVar.b = a(trim);
                    break;
                case bdd.AppCompatTheme_selectableItemBackground /*52*/:
                    zVar.c = a(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void s(Attributes attributes) throws SAXException {
        a("<linearGradiant>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        at atVar = new at();
        atVar.u = this.a;
        atVar.v = this.b;
        a((as) atVar, attributes);
        b((as) atVar, attributes);
        a((s) atVar, attributes);
        a(atVar, attributes);
        this.b.a(atVar);
        this.b = atVar;
    }

    private void a(s sVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.TweetView_autoLink /*24*/:
                    sVar.c = c(trim);
                    break;
                case bdd.TweetView_linkSelectedColor /*25*/:
                    if ("objectBoundingBox".equals(trim)) {
                        sVar.b = Boolean.valueOf(false);
                        break;
                    } else if ("userSpaceOnUse".equals(trim)) {
                        sVar.b = Boolean.valueOf(true);
                        break;
                    } else {
                        throw new SAXException("Invalid value for attribute gradientUnits");
                    }
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                    if (!"http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                        break;
                    }
                    sVar.e = trim;
                    break;
                case bdd.AppCompatTheme_popupWindowStyle /*61*/:
                    try {
                        sVar.d = GradientSpread.valueOf(trim);
                        break;
                    } catch (IllegalArgumentException e) {
                        throw new SAXException("Invalid spreadMethod attribute. \"" + trim + "\" is not a valid value.");
                    }
                default:
                    break;
            }
        }
    }

    private void a(at atVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.AppCompatTheme_colorControlNormal /*85*/:
                    atVar.f = a(trim);
                    break;
                case bdd.AppCompatTheme_colorControlActivated /*86*/:
                    atVar.g = a(trim);
                    break;
                case bdd.AppCompatTheme_colorControlHighlight /*87*/:
                    atVar.h = a(trim);
                    break;
                case bdd.AppCompatTheme_colorButtonNormal /*88*/:
                    atVar.i = a(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void t(Attributes attributes) throws SAXException {
        a("<radialGradient>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        ax axVar = new ax();
        axVar.u = this.a;
        axVar.v = this.b;
        a((as) axVar, attributes);
        b((as) axVar, attributes);
        a((s) axVar, attributes);
        a(axVar, attributes);
        this.b.a(axVar);
        this.b = axVar;
    }

    private void a(ax axVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case C.ENCODING_DTS /*7*/:
                    axVar.f = a(trim);
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    axVar.g = a(trim);
                    break;
                case Atom.FULL_HEADER_SIZE /*12*/:
                    axVar.i = a(trim);
                    break;
                case b.ShimmerFrameLayout_shape /*13*/:
                    axVar.j = a(trim);
                    break;
                case bdd.AppCompatTheme_buttonBarStyle /*50*/:
                    axVar.h = a(trim);
                    if (!axVar.h.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <radialGradient> element. r cannot be negative");
                default:
                    break;
            }
        }
    }

    private void u(Attributes attributes) throws SAXException {
        a("<stop>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        } else if (this.b instanceof s) {
            al alVar = new al();
            alVar.u = this.a;
            alVar.v = this.b;
            a((as) alVar, attributes);
            b((as) alVar, attributes);
            a(alVar, attributes);
            this.b.a(alVar);
            this.b = alVar;
        } else {
            throw new SAXException("Invalid document. <stop> elements are only valid inside <linearGradiant> or <radialGradient> elements.");
        }
    }

    private void a(al alVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                    alVar.a = b(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private Float b(String str) throws SAXException {
        float f = 0.0f;
        if (str.length() == 0) {
            throw new SAXException("Invalid offset value in <stop> (empty string)");
        }
        int i;
        Object obj;
        int length = str.length();
        if (str.charAt(str.length() - 1) == '%') {
            i = length - 1;
            obj = 1;
        } else {
            i = length;
            obj = null;
        }
        try {
            float a = a(str, 0, i);
            if (obj != null) {
                a /= 100.0f;
            }
            if (a >= 0.0f) {
                f = a > 100.0f ? 100.0f : a;
            }
            return Float.valueOf(f);
        } catch (Exception e) {
            throw new SAXException("Invalid offset value in <stop>: " + str, e);
        }
    }

    private void v(Attributes attributes) throws SAXException {
        a("<solidColor>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        as akVar = new ak();
        akVar.u = this.a;
        akVar.v = this.b;
        a(akVar, attributes);
        b(akVar, attributes);
        this.b.a(akVar);
        this.b = akVar;
    }

    private void w(Attributes attributes) throws SAXException {
        a("<clipPath>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        n nVar = new n();
        nVar.u = this.a;
        nVar.v = this.b;
        a((as) nVar, attributes);
        b((as) nVar, attributes);
        a((v) nVar, attributes);
        a((an) nVar, attributes);
        a(nVar, attributes);
        this.b.a(nVar);
        this.b = nVar;
    }

    private void a(n nVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    if ("objectBoundingBox".equals(trim)) {
                        nVar.a = Boolean.valueOf(false);
                        break;
                    } else if ("userSpaceOnUse".equals(trim)) {
                        nVar.a = Boolean.valueOf(true);
                        break;
                    } else {
                        throw new SAXException("Invalid value for attribute clipPathUnits");
                    }
                default:
                    break;
            }
        }
    }

    private void x(Attributes attributes) throws SAXException {
        a("<textPath>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        bg bgVar = new bg();
        bgVar.u = this.a;
        bgVar.v = this.b;
        a((as) bgVar, attributes);
        b((as) bgVar, attributes);
        a((an) bgVar, attributes);
        a(bgVar, attributes);
        this.b.a(bgVar);
        this.b = bgVar;
        if (bgVar.v instanceof bi) {
            bgVar.a((bi) bgVar.v);
        } else {
            bgVar.a(((be) bgVar.v).g());
        }
    }

    private void a(bg bgVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                    if (!"http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                        break;
                    }
                    bgVar.a = trim;
                    break;
                case bdd.AppCompatTheme_editTextColor /*62*/:
                    bgVar.b = a(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void y(Attributes attributes) throws SAXException {
        a("<pattern>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        ag agVar = new ag();
        agVar.u = this.a;
        agVar.v = this.b;
        a((as) agVar, attributes);
        b((as) agVar, attributes);
        a((an) agVar, attributes);
        a((ay) agVar, attributes);
        a(agVar, attributes);
        this.b.a(agVar);
        this.b = agVar;
    }

    private void a(ag agVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.TweetView_previewFlags /*26*/:
                    agVar.g = a(trim);
                    if (!agVar.g.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <pattern> element. height cannot be negative");
                case OggUtil.PAGE_HEADER_SIZE /*27*/:
                    if (!"http://www.w3.org/1999/xlink".equals(attributes.getURI(i))) {
                        break;
                    }
                    agVar.h = trim;
                    break;
                case bdd.AppCompatTheme_actionDropDownStyle /*45*/:
                    if ("objectBoundingBox".equals(trim)) {
                        agVar.b = Boolean.valueOf(false);
                        break;
                    } else if ("userSpaceOnUse".equals(trim)) {
                        agVar.b = Boolean.valueOf(true);
                        break;
                    } else {
                        throw new SAXException("Invalid value for attribute patternContentUnits");
                    }
                case bdd.AppCompatTheme_dropdownListPreferredItemHeight /*46*/:
                    agVar.c = c(trim);
                    break;
                case bdd.AppCompatTheme_spinnerDropDownItemStyle /*47*/:
                    if ("objectBoundingBox".equals(trim)) {
                        agVar.a = Boolean.valueOf(false);
                        break;
                    } else if ("userSpaceOnUse".equals(trim)) {
                        agVar.a = Boolean.valueOf(true);
                        break;
                    } else {
                        throw new SAXException("Invalid value for attribute patternUnits");
                    }
                case bdd.AppCompatTheme_colorPrimary /*82*/:
                    agVar.f = a(trim);
                    if (!agVar.f.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <pattern> element. width cannot be negative");
                case bdd.AppCompatTheme_colorPrimaryDark /*83*/:
                    agVar.d = a(trim);
                    break;
                case bdd.AppCompatTheme_colorAccent /*84*/:
                    agVar.e = a(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void z(Attributes attributes) throws SAXException {
        a("<view>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        ay blVar = new bl();
        blVar.u = this.a;
        blVar.v = this.b;
        a((as) blVar, attributes);
        a((an) blVar, attributes);
        a(blVar, attributes);
        this.b.a(blVar);
        this.b = blVar;
    }

    private void A(Attributes attributes) throws SAXException {
        a("<mask>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        aa aaVar = new aa();
        aaVar.u = this.a;
        aaVar.v = this.b;
        a((as) aaVar, attributes);
        b((as) aaVar, attributes);
        a((an) aaVar, attributes);
        a(aaVar, attributes);
        this.b.a(aaVar);
        this.b = aaVar;
    }

    private void a(aa aaVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.TweetView_previewFlags /*26*/:
                    aaVar.f = a(trim);
                    if (!aaVar.f.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <mask> element. height cannot be negative");
                case bdd.AppCompatTheme_actionModeFindDrawable /*37*/:
                    if ("objectBoundingBox".equals(trim)) {
                        aaVar.b = Boolean.valueOf(false);
                        break;
                    } else if ("userSpaceOnUse".equals(trim)) {
                        aaVar.b = Boolean.valueOf(true);
                        break;
                    } else {
                        throw new SAXException("Invalid value for attribute maskContentUnits");
                    }
                case bdd.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                    if ("objectBoundingBox".equals(trim)) {
                        aaVar.a = Boolean.valueOf(false);
                        break;
                    } else if ("userSpaceOnUse".equals(trim)) {
                        aaVar.a = Boolean.valueOf(true);
                        break;
                    } else {
                        throw new SAXException("Invalid value for attribute maskUnits");
                    }
                case bdd.AppCompatTheme_colorPrimary /*82*/:
                    aaVar.e = a(trim);
                    if (!aaVar.e.c()) {
                        break;
                    }
                    throw new SAXException("Invalid <mask> element. width cannot be negative");
                case bdd.AppCompatTheme_colorPrimaryDark /*83*/:
                    aaVar.c = a(trim);
                    break;
                case bdd.AppCompatTheme_colorAccent /*84*/:
                    aaVar.d = a(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void a(as asVar, Attributes attributes) throws SAXException {
        int i = 0;
        while (i < attributes.getLength()) {
            String qName = attributes.getQName(i);
            if (qName.equals(TtmlNode.ATTR_ID) || qName.equals("xml:id")) {
                asVar.p = attributes.getValue(i).trim();
                return;
            } else if (qName.equals("xml:space")) {
                String trim = attributes.getValue(i).trim();
                if ("default".equals(trim)) {
                    asVar.q = Boolean.FALSE;
                    return;
                } else if ("preserve".equals(trim)) {
                    asVar.q = Boolean.TRUE;
                    return;
                } else {
                    throw new SAXException("Invalid value for \"xml:space\" attribute: " + trim);
                }
            } else {
                i++;
            }
        }
    }

    private void b(as asVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            if (trim.length() != 0) {
                switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                    case ModuleDescriptor.MODULE_VERSION /*1*/:
                        asVar.t = CSSParser.b(trim);
                        break;
                    case bdd.AppCompatTheme_listPreferredItemPaddingRight /*73*/:
                        a(asVar, trim);
                        break;
                    default:
                        if (asVar.r == null) {
                            asVar.r = new Style();
                        }
                        a(asVar.r, attributes.getLocalName(i), attributes.getValue(i).trim());
                        break;
                }
            }
        }
    }

    private static void a(as asVar, String str) throws SAXException {
        cb cbVar = new cb(str.replaceAll("/\\*.*?\\*/", TtmlNode.ANONYMOUS_REGION_ID));
        while (true) {
            String b = cbVar.b(':');
            cbVar.d();
            if (cbVar.a(':')) {
                cbVar.d();
                String b2 = cbVar.b(';');
                if (b2 != null) {
                    cbVar.d();
                    if (cbVar.c() || cbVar.a(';')) {
                        if (asVar.s == null) {
                            asVar.s = new Style();
                        }
                        a(asVar.s, b, b2);
                        cbVar.d();
                    }
                } else {
                    return;
                }
            }
            return;
        }
    }

    protected static void a(Style style, String str, String str2) throws SAXException {
        if (str2.length() != 0 && !str2.equals("inherit")) {
            switch (b()[SVGAttr.a(str).ordinal()]) {
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    style.w = x(str2);
                    style.a |= 1048576;
                case Util.TYPE_OTHER /*3*/:
                    style.E = b(str2, str);
                    style.a |= 268435456;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    style.F = r(str2);
                    style.a |= 536870912;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    style.n = i(str2);
                    style.a |= 4096;
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                    style.t = q(str2);
                    style.a |= 68719476736L;
                case bdd.TwitterButton_strokeWidth /*15*/:
                    if (str2.indexOf(124) >= 0 || "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|".indexOf(new StringBuilder(String.valueOf('|')).append(str2).append('|').toString()) == -1) {
                        throw new SAXException("Invalid value for \"display\" attribute: " + str2);
                    }
                    style.A = Boolean.valueOf(!str2.equals("none"));
                    style.a |= 16777216;
                case Atom.LONG_HEADER_SIZE /*16*/:
                    style.b = a(str2, "fill");
                    style.a |= 1;
                case bdd.TwitterButton_bounded /*17*/:
                    style.c = r(str2);
                    style.a |= 2;
                case bdd.TwitterButton_knockout /*18*/:
                    style.d = Float.valueOf(f(str2));
                    style.a |= 4;
                case bdd.TwitterButton_iconLayout /*19*/:
                    a(style, str2);
                case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                    style.o = k(str2);
                    style.a |= 8192;
                case bdd.TweetView_mediaTopMargin /*21*/:
                    style.p = l(str2);
                    style.a |= 16384;
                case bdd.TweetView_mediaBottomMargin /*22*/:
                    style.q = m(str2);
                    style.a |= 32768;
                case bdd.TweetView_mediaDivider /*23*/:
                    style.r = n(str2);
                    style.a |= 65536;
                case bdd.TweetView_tweetViewLayoutId /*29*/:
                    style.x = b(str2, str);
                    style.y = style.x;
                    style.z = style.x;
                    style.a |= 14680064;
                case bdd.AppCompatTheme_actionModeSplitBackground /*30*/:
                    style.x = b(str2, str);
                    style.a |= 2097152;
                case bdd.AppCompatTheme_actionModeCloseDrawable /*31*/:
                    style.y = b(str2, str);
                    style.a |= 4194304;
                case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                    style.z = b(str2, str);
                    style.a |= 8388608;
                case bdd.AppCompatTheme_actionModeShareDrawable /*36*/:
                    style.G = b(str2, str);
                    style.a |= 1073741824;
                case bdd.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                    style.m = Float.valueOf(f(str2));
                    style.a |= 2048;
                case bdd.AppCompatTheme_dialogPreferredPadding /*43*/:
                    style.v = w(str2);
                    style.a |= 524288;
                case bdd.AppCompatTheme_toolbarNavigationButtonStyle /*59*/:
                    if (str2.equals("currentColor")) {
                        style.H = p.a();
                    } else {
                        style.H = i(str2);
                    }
                    style.a |= 2147483648L;
                case bdd.AppCompatTheme_popupMenuStyle /*60*/:
                    style.I = Float.valueOf(f(str2));
                    style.a |= 4294967296L;
                case bdd.AppCompatTheme_editTextBackground /*63*/:
                    if (str2.equals("currentColor")) {
                        style.C = p.a();
                    } else {
                        style.C = i(str2);
                    }
                    style.a |= 67108864;
                case bdd.AppCompatTheme_imageButtonStyle /*64*/:
                    style.D = Float.valueOf(f(str2));
                    style.a |= 134217728;
                case bdd.AppCompatTheme_textAppearanceSearchResultTitle /*65*/:
                    style.e = a(str2, "stroke");
                    style.a |= 8;
                case bdd.AppCompatTheme_textAppearanceSearchResultSubtitle /*66*/:
                    if ("none".equals(str2)) {
                        style.k = null;
                    } else {
                        style.k = u(str2);
                    }
                    style.a |= 512;
                case bdd.AppCompatTheme_textColorSearchUrl /*67*/:
                    style.l = a(str2);
                    style.a |= 1024;
                case bdd.AppCompatTheme_searchViewStyle /*68*/:
                    style.h = s(str2);
                    style.a |= 64;
                case bdd.AppCompatTheme_listPreferredItemHeight /*69*/:
                    style.i = t(str2);
                    style.a |= 128;
                case bdd.AppCompatTheme_listPreferredItemHeightSmall /*70*/:
                    style.j = Float.valueOf(e(str2));
                    style.a |= 256;
                case bdd.AppCompatTheme_listPreferredItemHeightLarge /*71*/:
                    style.f = Float.valueOf(f(str2));
                    style.a |= 16;
                case bdd.AppCompatTheme_listPreferredItemPaddingLeft /*72*/:
                    style.g = a(str2);
                    style.a |= 32;
                case bdd.AppCompatTheme_listPopupWindowStyle /*75*/:
                    style.u = v(str2);
                    style.a |= 262144;
                case bdd.AppCompatTheme_textAppearanceListItem /*76*/:
                    style.s = p(str2);
                    style.a |= 131072;
                case bdd.AppCompatTheme_panelMenuListWidth /*79*/:
                    style.L = y(str2);
                    style.a |= 34359738368L;
                case bdd.AppCompatTheme_colorSwitchThumbNormal /*89*/:
                    if (str2.equals("currentColor")) {
                        style.J = p.a();
                    } else {
                        style.J = i(str2);
                    }
                    style.a |= 8589934592L;
                case bdd.AppCompatTheme_controlBackground /*90*/:
                    style.K = Float.valueOf(f(str2));
                    style.a |= 17179869184L;
                case bdd.AppCompatTheme_alertDialogStyle /*91*/:
                    if (str2.indexOf(124) >= 0 || "|visible|hidden|collapse|".indexOf(new StringBuilder(String.valueOf('|')).append(str2).append('|').toString()) == -1) {
                        throw new SAXException("Invalid value for \"visibility\" attribute: " + str2);
                    }
                    style.B = Boolean.valueOf(str2.equals("visible"));
                    style.a |= 33554432;
                default:
            }
        }
    }

    private void a(ay ayVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.AppCompatTheme_actionButtonStyle /*49*/:
                    a((aw) ayVar, trim);
                    break;
                case bdd.AppCompatTheme_listChoiceBackgroundIndicator /*81*/:
                    ayVar.x = g(trim);
                    break;
                default:
                    break;
            }
        }
    }

    private void a(v vVar, Attributes attributes) throws SAXException {
        for (int i = 0; i < attributes.getLength(); i++) {
            if (SVGAttr.a(attributes.getLocalName(i)) == SVGAttr.transform) {
                vVar.a(c(attributes.getValue(i)));
            }
        }
    }

    private Matrix c(String str) throws SAXException {
        Matrix matrix = new Matrix();
        cb cbVar = new cb(str);
        cbVar.d();
        while (!cbVar.c()) {
            String m = cbVar.m();
            if (m != null) {
                Float f;
                Float f2;
                Float f3;
                if (m.equals("matrix")) {
                    cbVar.d();
                    f = cbVar.f();
                    cbVar.e();
                    f2 = cbVar.f();
                    cbVar.e();
                    f3 = cbVar.f();
                    cbVar.e();
                    Float f4 = cbVar.f();
                    cbVar.e();
                    Float f5 = cbVar.f();
                    cbVar.e();
                    Float f6 = cbVar.f();
                    cbVar.d();
                    if (f6 == null || !cbVar.a(')')) {
                        throw new SAXException("Invalid transform list: " + str);
                    }
                    Matrix matrix2 = new Matrix();
                    matrix2.setValues(new float[]{f.floatValue(), f3.floatValue(), f5.floatValue(), f2.floatValue(), f4.floatValue(), f6.floatValue(), 0.0f, 0.0f, 1.0f});
                    matrix.preConcat(matrix2);
                } else if (m.equals("translate")) {
                    cbVar.d();
                    f = cbVar.f();
                    f2 = cbVar.g();
                    cbVar.d();
                    if (f == null || !cbVar.a(')')) {
                        throw new SAXException("Invalid transform list: " + str);
                    } else if (f2 == null) {
                        matrix.preTranslate(f.floatValue(), 0.0f);
                    } else {
                        matrix.preTranslate(f.floatValue(), f2.floatValue());
                    }
                } else if (m.equals("scale")) {
                    cbVar.d();
                    f = cbVar.f();
                    f2 = cbVar.g();
                    cbVar.d();
                    if (f == null || !cbVar.a(')')) {
                        throw new SAXException("Invalid transform list: " + str);
                    } else if (f2 == null) {
                        matrix.preScale(f.floatValue(), f.floatValue());
                    } else {
                        matrix.preScale(f.floatValue(), f2.floatValue());
                    }
                } else if (m.equals("rotate")) {
                    cbVar.d();
                    f = cbVar.f();
                    f2 = cbVar.g();
                    f3 = cbVar.g();
                    cbVar.d();
                    if (f == null || !cbVar.a(')')) {
                        throw new SAXException("Invalid transform list: " + str);
                    } else if (f2 == null) {
                        matrix.preRotate(f.floatValue());
                    } else if (f3 != null) {
                        matrix.preRotate(f.floatValue(), f2.floatValue(), f3.floatValue());
                    } else {
                        throw new SAXException("Invalid transform list: " + str);
                    }
                } else if (m.equals("skewX")) {
                    cbVar.d();
                    f = cbVar.f();
                    cbVar.d();
                    if (f == null || !cbVar.a(')')) {
                        throw new SAXException("Invalid transform list: " + str);
                    }
                    matrix.preSkew((float) Math.tan(Math.toRadians((double) f.floatValue())), 0.0f);
                } else if (m.equals("skewY")) {
                    cbVar.d();
                    f = cbVar.f();
                    cbVar.d();
                    if (f == null || !cbVar.a(')')) {
                        throw new SAXException("Invalid transform list: " + str);
                    }
                    matrix.preSkew(0.0f, (float) Math.tan(Math.toRadians((double) f.floatValue())));
                } else if (m != null) {
                    throw new SAXException("Invalid transform list fn: " + m + ")");
                }
                if (cbVar.c()) {
                    break;
                }
                cbVar.e();
            } else {
                throw new SAXException("Bad transform function encountered in transform list: " + str);
            }
        }
        return matrix;
    }

    protected static x a(String str) throws SAXException {
        if (str.length() == 0) {
            throw new SAXException("Invalid length value (empty string)");
        }
        int length = str.length();
        Unit unit = Unit.px;
        char charAt = str.charAt(length - 1);
        if (charAt == '%') {
            length--;
            unit = Unit.percent;
        } else if (length > 2 && Character.isLetter(charAt) && Character.isLetter(str.charAt(length - 2))) {
            length -= 2;
            try {
                unit = Unit.valueOf(str.substring(length).toLowerCase(Locale.US));
            } catch (IllegalArgumentException e) {
                throw new SAXException("Invalid length unit specifier: " + str);
            }
        }
        try {
            return new x(a(str, 0, length), unit);
        } catch (Exception e2) {
            throw new SAXException("Invalid length value: " + str, e2);
        }
    }

    private static List<x> d(String str) throws SAXException {
        if (str.length() == 0) {
            throw new SAXException("Invalid length list (empty string)");
        }
        List<x> arrayList = new ArrayList(1);
        cb cbVar = new cb(str);
        cbVar.d();
        while (!cbVar.c()) {
            Float f = cbVar.f();
            if (f == null) {
                throw new SAXException("Invalid length list value: " + cbVar.n());
            }
            Unit o = cbVar.o();
            if (o == null) {
                o = Unit.px;
            }
            arrayList.add(new x(f.floatValue(), o));
            cbVar.e();
        }
        return arrayList;
    }

    private static float e(String str) throws SAXException {
        int length = str.length();
        if (length != 0) {
            return a(str, 0, length);
        }
        throw new SAXException("Invalid float value (empty string)");
    }

    private static float a(String str, int i, int i2) throws SAXException {
        h a = h.a(str, i, i2);
        if (a != null) {
            return a.b();
        }
        throw new SAXException("Invalid float value: " + str);
    }

    private static float f(String str) throws SAXException {
        float e = e(str);
        if (e < 0.0f) {
            return 0.0f;
        }
        return e > 1.0f ? 1.0f : e;
    }

    private static k g(String str) throws SAXException {
        cb cbVar = new cb(str);
        cbVar.d();
        Float f = cbVar.f();
        cbVar.e();
        Float f2 = cbVar.f();
        cbVar.e();
        Float f3 = cbVar.f();
        cbVar.e();
        Float f4 = cbVar.f();
        if (f == null || f2 == null || f3 == null || f4 == null) {
            throw new SAXException("Invalid viewBox definition - should have four numbers");
        } else if (f3.floatValue() < 0.0f) {
            throw new SAXException("Invalid viewBox. width cannot be negative");
        } else if (f4.floatValue() >= 0.0f) {
            return new k(f.floatValue(), f2.floatValue(), f3.floatValue(), f4.floatValue());
        } else {
            throw new SAXException("Invalid viewBox. height cannot be negative");
        }
    }

    private static void a(aw awVar, String str) throws SAXException {
        if (n == null) {
            c();
        }
        cb cbVar = new cb(str);
        cbVar.d();
        Scale scale = null;
        Object l = cbVar.l();
        if ("defer".equals(l)) {
            cbVar.d();
            l = cbVar.l();
        }
        Alignment alignment = (Alignment) n.get(l);
        cbVar.d();
        if (!cbVar.c()) {
            String l2 = cbVar.l();
            if (l2.equals("meet")) {
                scale = Scale.Meet;
            } else if (l2.equals("slice")) {
                scale = Scale.Slice;
            } else {
                throw new SAXException("Invalid preserveAspectRatio definition: " + str);
            }
        }
        awVar.w = new PreserveAspectRatio(alignment, scale);
    }

    private static synchronized void c() {
        synchronized (SVGParser.class) {
            n = new HashMap(10);
            n.put("none", Alignment.None);
            n.put("xMinYMin", Alignment.XMinYMin);
            n.put("xMidYMin", Alignment.XMidYMin);
            n.put("xMaxYMin", Alignment.XMaxYMin);
            n.put("xMinYMid", Alignment.XMinYMid);
            n.put("xMidYMid", Alignment.XMidYMid);
            n.put("xMaxYMid", Alignment.XMaxYMid);
            n.put("xMinYMax", Alignment.XMinYMax);
            n.put("xMidYMax", Alignment.XMidYMax);
            n.put("xMaxYMax", Alignment.XMaxYMax);
        }
    }

    private static av a(String str, String str2) throws SAXException {
        if (!str.startsWith("url(")) {
            return h(str);
        }
        int indexOf = str.indexOf(")");
        if (indexOf == -1) {
            throw new SAXException("Bad " + str2 + " attribute. Unterminated url() reference");
        }
        String trim = str.substring(4, indexOf).trim();
        av avVar = null;
        String trim2 = str.substring(indexOf + 1).trim();
        if (trim2.length() > 0) {
            avVar = h(trim2);
        }
        return new ac(trim, avVar);
    }

    private static av h(String str) throws SAXException {
        if (str.equals("none")) {
            return null;
        }
        if (str.equals("currentColor")) {
            return p.a();
        }
        return i(str);
    }

    private static o i(String str) throws SAXException {
        int i;
        int i2;
        int i3;
        if (str.charAt(0) == '#') {
            g a = g.a(str, 1, str.length());
            if (a == null) {
                throw new SAXException("Bad hex colour value: " + str);
            }
            int a2 = a.a();
            if (a2 == 7) {
                return new o(a.b());
            }
            if (a2 == 4) {
                a2 = a.b();
                i = a2 & 3840;
                i2 = a2 & PsExtractor.VIDEO_STREAM_MASK;
                i3 = a2 & 15;
                return new o((((((i << 12) | (i << 16)) | (i2 << 8)) | (i2 << 4)) | (i3 << 4)) | i3);
            }
            throw new SAXException("Bad hex colour value: " + str);
        } else if (!str.toLowerCase(Locale.US).startsWith("rgb(")) {
            return j(str);
        } else {
            cb cbVar = new cb(str.substring(4));
            cbVar.d();
            i = a(cbVar);
            cbVar.e();
            i2 = a(cbVar);
            cbVar.e();
            i3 = a(cbVar);
            cbVar.d();
            if (cbVar.a(')')) {
                return new o(((i << 16) | (i2 << 8)) | i3);
            }
            throw new SAXException("Bad rgb() colour value: " + str);
        }
    }

    private static int a(cb cbVar) throws SAXException {
        float floatValue = cbVar.f().floatValue();
        if (cbVar.a('%')) {
            floatValue = (floatValue * 256.0f) / 100.0f;
        }
        if (floatValue < 0.0f) {
            return 0;
        }
        return floatValue > 255.0f ? NalUnitUtil.EXTENDED_SAR : (int) floatValue;
    }

    private static o j(String str) throws SAXException {
        if (k == null) {
            d();
        }
        Integer num = (Integer) k.get(str.toLowerCase(Locale.US));
        if (num != null) {
            return new o(num.intValue());
        }
        throw new SAXException("Invalid colour keyword: " + str);
    }

    private static synchronized void d() {
        synchronized (SVGParser.class) {
            k = new HashMap();
            k.put("aliceblue", Integer.valueOf(15792383));
            k.put("antiquewhite", Integer.valueOf(16444375));
            k.put("aqua", Integer.valueOf(65535));
            k.put("aquamarine", Integer.valueOf(8388564));
            k.put("azure", Integer.valueOf(15794175));
            k.put("beige", Integer.valueOf(16119260));
            k.put("bisque", Integer.valueOf(16770244));
            k.put("black", Integer.valueOf(0));
            k.put("blanchedalmond", Integer.valueOf(16772045));
            k.put("blue", Integer.valueOf(NalUnitUtil.EXTENDED_SAR));
            k.put("blueviolet", Integer.valueOf(9055202));
            k.put("brown", Integer.valueOf(10824234));
            k.put("burlywood", Integer.valueOf(14596231));
            k.put("cadetblue", Integer.valueOf(6266528));
            k.put("chartreuse", Integer.valueOf(8388352));
            k.put("chocolate", Integer.valueOf(13789470));
            k.put("coral", Integer.valueOf(16744272));
            k.put("cornflowerblue", Integer.valueOf(6591981));
            k.put("cornsilk", Integer.valueOf(16775388));
            k.put("crimson", Integer.valueOf(14423100));
            k.put("cyan", Integer.valueOf(65535));
            k.put("darkblue", Integer.valueOf(139));
            k.put("darkcyan", Integer.valueOf(35723));
            k.put("darkgoldenrod", Integer.valueOf(12092939));
            k.put("darkgray", Integer.valueOf(11119017));
            k.put("darkgreen", Integer.valueOf(25600));
            k.put("darkgrey", Integer.valueOf(11119017));
            k.put("darkkhaki", Integer.valueOf(12433259));
            k.put("darkmagenta", Integer.valueOf(9109643));
            k.put("darkolivegreen", Integer.valueOf(5597999));
            k.put("darkorange", Integer.valueOf(16747520));
            k.put("darkorchid", Integer.valueOf(10040012));
            k.put("darkred", Integer.valueOf(9109504));
            k.put("darksalmon", Integer.valueOf(15308410));
            k.put("darkseagreen", Integer.valueOf(9419919));
            k.put("darkslateblue", Integer.valueOf(4734347));
            k.put("darkslategray", Integer.valueOf(3100495));
            k.put("darkslategrey", Integer.valueOf(3100495));
            k.put("darkturquoise", Integer.valueOf(52945));
            k.put("darkviolet", Integer.valueOf(9699539));
            k.put("deeppink", Integer.valueOf(16716947));
            k.put("deepskyblue", Integer.valueOf(49151));
            k.put("dimgray", Integer.valueOf(6908265));
            k.put("dimgrey", Integer.valueOf(6908265));
            k.put("dodgerblue", Integer.valueOf(2003199));
            k.put("firebrick", Integer.valueOf(11674146));
            k.put("floralwhite", Integer.valueOf(16775920));
            k.put("forestgreen", Integer.valueOf(2263842));
            k.put("fuchsia", Integer.valueOf(16711935));
            k.put("gainsboro", Integer.valueOf(14474460));
            k.put("ghostwhite", Integer.valueOf(16316671));
            k.put("gold", Integer.valueOf(16766720));
            k.put("goldenrod", Integer.valueOf(14329120));
            k.put("gray", Integer.valueOf(8421504));
            k.put("green", Integer.valueOf(32768));
            k.put("greenyellow", Integer.valueOf(11403055));
            k.put("grey", Integer.valueOf(8421504));
            k.put("honeydew", Integer.valueOf(15794160));
            k.put("hotpink", Integer.valueOf(16738740));
            k.put("indianred", Integer.valueOf(13458524));
            k.put("indigo", Integer.valueOf(4915330));
            k.put("ivory", Integer.valueOf(16777200));
            k.put("khaki", Integer.valueOf(15787660));
            k.put("lavender", Integer.valueOf(15132410));
            k.put("lavenderblush", Integer.valueOf(16773365));
            k.put("lawngreen", Integer.valueOf(8190976));
            k.put("lemonchiffon", Integer.valueOf(16775885));
            k.put("lightblue", Integer.valueOf(11393254));
            k.put("lightcoral", Integer.valueOf(15761536));
            k.put("lightcyan", Integer.valueOf(14745599));
            k.put("lightgoldenrodyellow", Integer.valueOf(16448210));
            k.put("lightgray", Integer.valueOf(13882323));
            k.put("lightgreen", Integer.valueOf(9498256));
            k.put("lightgrey", Integer.valueOf(13882323));
            k.put("lightpink", Integer.valueOf(16758465));
            k.put("lightsalmon", Integer.valueOf(16752762));
            k.put("lightseagreen", Integer.valueOf(2142890));
            k.put("lightskyblue", Integer.valueOf(8900346));
            k.put("lightslategray", Integer.valueOf(7833753));
            k.put("lightslategrey", Integer.valueOf(7833753));
            k.put("lightsteelblue", Integer.valueOf(11584734));
            k.put("lightyellow", Integer.valueOf(16777184));
            k.put("lime", Integer.valueOf(65280));
            k.put("limegreen", Integer.valueOf(3329330));
            k.put("linen", Integer.valueOf(16445670));
            k.put("magenta", Integer.valueOf(16711935));
            k.put("maroon", Integer.valueOf(8388608));
            k.put("mediumaquamarine", Integer.valueOf(6737322));
            k.put("mediumblue", Integer.valueOf(205));
            k.put("mediumorchid", Integer.valueOf(12211667));
            k.put("mediumpurple", Integer.valueOf(9662683));
            k.put("mediumseagreen", Integer.valueOf(3978097));
            k.put("mediumslateblue", Integer.valueOf(8087790));
            k.put("mediumspringgreen", Integer.valueOf(64154));
            k.put("mediumturquoise", Integer.valueOf(4772300));
            k.put("mediumvioletred", Integer.valueOf(13047173));
            k.put("midnightblue", Integer.valueOf(1644912));
            k.put("mintcream", Integer.valueOf(16121850));
            k.put("mistyrose", Integer.valueOf(16770273));
            k.put("moccasin", Integer.valueOf(16770229));
            k.put("navajowhite", Integer.valueOf(16768685));
            k.put("navy", Integer.valueOf(128));
            k.put("oldlace", Integer.valueOf(16643558));
            k.put("olive", Integer.valueOf(8421376));
            k.put("olivedrab", Integer.valueOf(7048739));
            k.put("orange", Integer.valueOf(16753920));
            k.put("orangered", Integer.valueOf(16729344));
            k.put("orchid", Integer.valueOf(14315734));
            k.put("palegoldenrod", Integer.valueOf(15657130));
            k.put("palegreen", Integer.valueOf(10025880));
            k.put("paleturquoise", Integer.valueOf(11529966));
            k.put("palevioletred", Integer.valueOf(14381203));
            k.put("papayawhip", Integer.valueOf(16773077));
            k.put("peachpuff", Integer.valueOf(16767673));
            k.put("peru", Integer.valueOf(13468991));
            k.put("pink", Integer.valueOf(16761035));
            k.put("plum", Integer.valueOf(14524637));
            k.put("powderblue", Integer.valueOf(11591910));
            k.put("purple", Integer.valueOf(8388736));
            k.put("red", Integer.valueOf(16711680));
            k.put("rosybrown", Integer.valueOf(12357519));
            k.put("royalblue", Integer.valueOf(4286945));
            k.put("saddlebrown", Integer.valueOf(9127187));
            k.put("salmon", Integer.valueOf(16416882));
            k.put("sandybrown", Integer.valueOf(16032864));
            k.put("seagreen", Integer.valueOf(3050327));
            k.put("seashell", Integer.valueOf(16774638));
            k.put("sienna", Integer.valueOf(10506797));
            k.put("silver", Integer.valueOf(12632256));
            k.put("skyblue", Integer.valueOf(8900331));
            k.put("slateblue", Integer.valueOf(6970061));
            k.put("slategray", Integer.valueOf(7372944));
            k.put("slategrey", Integer.valueOf(7372944));
            k.put("snow", Integer.valueOf(16775930));
            k.put("springgreen", Integer.valueOf(65407));
            k.put("steelblue", Integer.valueOf(4620980));
            k.put("tan", Integer.valueOf(13808780));
            k.put("teal", Integer.valueOf(32896));
            k.put("thistle", Integer.valueOf(14204888));
            k.put("tomato", Integer.valueOf(16737095));
            k.put("turquoise", Integer.valueOf(4251856));
            k.put("violet", Integer.valueOf(15631086));
            k.put("wheat", Integer.valueOf(16113331));
            k.put("white", Integer.valueOf(16777215));
            k.put("whitesmoke", Integer.valueOf(16119285));
            k.put("yellow", Integer.valueOf(16776960));
            k.put("yellowgreen", Integer.valueOf(10145074));
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(com.caverock.androidsvg.SVG.Style r7, java.lang.String r8) throws org.xml.sax.SAXException {
        /*
        r4 = 124; // 0x7c float:1.74E-43 double:6.13E-322;
        r6 = 47;
        r0 = 0;
        r1 = "|caption|icon|menu|message-box|small-caption|status-bar|";
        r2 = new java.lang.StringBuilder;
        r3 = java.lang.String.valueOf(r4);
        r2.<init>(r3);
        r2 = r2.append(r8);
        r2 = r2.append(r4);
        r2 = r2.toString();
        r1 = r1.indexOf(r2);
        r2 = -1;
        if (r1 == r2) goto L_0x0025;
    L_0x0024:
        return;
    L_0x0025:
        r5 = new com.caverock.androidsvg.cb;
        r5.<init>(r8);
        r1 = r0;
        r3 = r0;
    L_0x002c:
        r2 = r5.b(r6);
        r5.d();
        if (r2 != 0) goto L_0x003e;
    L_0x0035:
        r0 = new org.xml.sax.SAXException;
        r1 = "Invalid font style attribute: missing font size and family";
        r0.<init>(r1);
        throw r0;
    L_0x003e:
        if (r0 == 0) goto L_0x0060;
    L_0x0040:
        if (r3 == 0) goto L_0x0060;
    L_0x0042:
        r4 = r0;
        r0 = r3;
    L_0x0044:
        r1 = l(r2);
        r2 = r5.a(r6);
        if (r2 == 0) goto L_0x0097;
    L_0x004e:
        r5.d();
        r2 = r5.l();
        if (r2 != 0) goto L_0x0091;
    L_0x0057:
        r0 = new org.xml.sax.SAXException;
        r1 = "Invalid font style attribute: missing line-height";
        r0.<init>(r1);
        throw r0;
    L_0x0060:
        r4 = "normal";
        r4 = r2.equals(r4);
        if (r4 != 0) goto L_0x002c;
    L_0x0069:
        if (r0 != 0) goto L_0x0075;
    L_0x006b:
        r0 = m;
        r0 = r0.get(r2);
        r0 = (java.lang.Integer) r0;
        if (r0 != 0) goto L_0x002c;
    L_0x0075:
        r4 = r0;
        if (r3 != 0) goto L_0x0081;
    L_0x0078:
        r0 = o(r2);
        if (r0 == 0) goto L_0x0082;
    L_0x007e:
        r3 = r0;
        r0 = r4;
        goto L_0x002c;
    L_0x0081:
        r0 = r3;
    L_0x0082:
        if (r1 != 0) goto L_0x0044;
    L_0x0084:
        r1 = "small-caps";
        r1 = r2.equals(r1);
        if (r1 == 0) goto L_0x0044;
    L_0x008d:
        r1 = r2;
        r3 = r0;
        r0 = r4;
        goto L_0x002c;
    L_0x0091:
        a(r2);
        r5.d();
    L_0x0097:
        r2 = r5.r();
        r2 = k(r2);
        r7.o = r2;
        r7.p = r1;
        if (r4 != 0) goto L_0x00bd;
    L_0x00a5:
        r1 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
    L_0x00a7:
        r1 = java.lang.Integer.valueOf(r1);
        r7.q = r1;
        if (r0 != 0) goto L_0x00b1;
    L_0x00af:
        r0 = com.caverock.androidsvg.SVG.Style.FontStyle.Normal;
    L_0x00b1:
        r7.r = r0;
        r0 = r7.a;
        r2 = 122880; // 0x1e000 float:1.72192E-40 double:6.0711E-319;
        r0 = r0 | r2;
        r7.a = r0;
        goto L_0x0024;
    L_0x00bd:
        r1 = r4.intValue();
        goto L_0x00a7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.a(com.caverock.androidsvg.SVG$Style, java.lang.String):void");
    }

    private static List<String> k(String str) throws SAXException {
        List<String> list = null;
        cb cbVar = new cb(str);
        do {
            Object q = cbVar.q();
            if (q == null) {
                q = cbVar.b(',');
            }
            if (q == null) {
                break;
            }
            if (list == null) {
                list = new ArrayList();
            }
            list.add(q);
            cbVar.e();
        } while (!cbVar.c());
        return list;
    }

    private static x l(String str) throws SAXException {
        if (l == null) {
            e();
        }
        x xVar = (x) l.get(str);
        if (xVar == null) {
            return a(str);
        }
        return xVar;
    }

    private static synchronized void e() {
        synchronized (SVGParser.class) {
            l = new HashMap(9);
            l.put("xx-small", new x(0.694f, Unit.pt));
            l.put("x-small", new x(0.833f, Unit.pt));
            l.put("small", new x(10.0f, Unit.pt));
            l.put("medium", new x(12.0f, Unit.pt));
            l.put("large", new x(14.4f, Unit.pt));
            l.put("x-large", new x(17.3f, Unit.pt));
            l.put("xx-large", new x(20.7f, Unit.pt));
            l.put("smaller", new x(83.33f, Unit.percent));
            l.put("larger", new x(120.0f, Unit.percent));
        }
    }

    private static Integer m(String str) throws SAXException {
        if (m == null) {
            f();
        }
        Integer num = (Integer) m.get(str);
        if (num != null) {
            return num;
        }
        throw new SAXException("Invalid font-weight property: " + str);
    }

    private static synchronized void f() {
        synchronized (SVGParser.class) {
            m = new HashMap(13);
            m.put("normal", Integer.valueOf(400));
            m.put(TtmlNode.BOLD, Integer.valueOf(700));
            m.put("bolder", Integer.valueOf(1));
            m.put("lighter", Integer.valueOf(-1));
            m.put("100", Integer.valueOf(100));
            m.put("200", Integer.valueOf(Callback.DEFAULT_DRAG_ANIMATION_DURATION));
            m.put("300", Integer.valueOf(300));
            m.put("400", Integer.valueOf(400));
            m.put("500", Integer.valueOf(500));
            m.put("600", Integer.valueOf(600));
            m.put("700", Integer.valueOf(700));
            m.put("800", Integer.valueOf(800));
            m.put("900", Integer.valueOf(900));
        }
    }

    private static FontStyle n(String str) throws SAXException {
        FontStyle o = o(str);
        if (o != null) {
            return o;
        }
        throw new SAXException("Invalid font-style property: " + str);
    }

    private static FontStyle o(String str) {
        if (TtmlNode.ITALIC.equals(str)) {
            return FontStyle.Italic;
        }
        if ("normal".equals(str)) {
            return FontStyle.Normal;
        }
        if ("oblique".equals(str)) {
            return FontStyle.Oblique;
        }
        return null;
    }

    private static TextDecoration p(String str) throws SAXException {
        if ("none".equals(str)) {
            return TextDecoration.None;
        }
        if (TtmlNode.UNDERLINE.equals(str)) {
            return TextDecoration.Underline;
        }
        if ("overline".equals(str)) {
            return TextDecoration.Overline;
        }
        if ("line-through".equals(str)) {
            return TextDecoration.LineThrough;
        }
        if ("blink".equals(str)) {
            return TextDecoration.Blink;
        }
        throw new SAXException("Invalid text-decoration property: " + str);
    }

    private static TextDirection q(String str) throws SAXException {
        if ("ltr".equals(str)) {
            return TextDirection.LTR;
        }
        if ("rtl".equals(str)) {
            return TextDirection.RTL;
        }
        throw new SAXException("Invalid direction property: " + str);
    }

    private static FillRule r(String str) throws SAXException {
        if ("nonzero".equals(str)) {
            return FillRule.NonZero;
        }
        if ("evenodd".equals(str)) {
            return FillRule.EvenOdd;
        }
        throw new SAXException("Invalid fill-rule property: " + str);
    }

    private static LineCaps s(String str) throws SAXException {
        if ("butt".equals(str)) {
            return LineCaps.Butt;
        }
        if ("round".equals(str)) {
            return LineCaps.Round;
        }
        if ("square".equals(str)) {
            return LineCaps.Square;
        }
        throw new SAXException("Invalid stroke-linecap property: " + str);
    }

    private static LineJoin t(String str) throws SAXException {
        if ("miter".equals(str)) {
            return LineJoin.Miter;
        }
        if ("round".equals(str)) {
            return LineJoin.Round;
        }
        if ("bevel".equals(str)) {
            return LineJoin.Bevel;
        }
        throw new SAXException("Invalid stroke-linejoin property: " + str);
    }

    private static x[] u(String str) throws SAXException {
        cb cbVar = new cb(str);
        cbVar.d();
        if (cbVar.c()) {
            return null;
        }
        x i = cbVar.i();
        if (i == null) {
            return null;
        }
        if (i.c()) {
            throw new SAXException("Invalid stroke-dasharray. Dash segemnts cannot be negative: " + str);
        }
        float a = i.a();
        List arrayList = new ArrayList();
        arrayList.add(i);
        while (!cbVar.c()) {
            cbVar.e();
            i = cbVar.i();
            if (i == null) {
                throw new SAXException("Invalid stroke-dasharray. Non-Length content found: " + str);
            } else if (i.c()) {
                throw new SAXException("Invalid stroke-dasharray. Dash segemnts cannot be negative: " + str);
            } else {
                arrayList.add(i);
                a += i.a();
            }
        }
        if (a == 0.0f) {
            return null;
        }
        return (x[]) arrayList.toArray(new x[arrayList.size()]);
    }

    private static TextAnchor v(String str) throws SAXException {
        if (TtmlNode.START.equals(str)) {
            return TextAnchor.Start;
        }
        if ("middle".equals(str)) {
            return TextAnchor.Middle;
        }
        if (TtmlNode.END.equals(str)) {
            return TextAnchor.End;
        }
        throw new SAXException("Invalid text-anchor property: " + str);
    }

    private static Boolean w(String str) throws SAXException {
        if ("visible".equals(str) || "auto".equals(str)) {
            return Boolean.TRUE;
        }
        if ("hidden".equals(str) || "scroll".equals(str)) {
            return Boolean.FALSE;
        }
        throw new SAXException("Invalid toverflow property: " + str);
    }

    private static l x(String str) throws SAXException {
        if ("auto".equals(str)) {
            return null;
        }
        if (str.toLowerCase(Locale.US).startsWith("rect(")) {
            cb cbVar = new cb(str.substring(5));
            cbVar.d();
            x b = b(cbVar);
            cbVar.e();
            x b2 = b(cbVar);
            cbVar.e();
            x b3 = b(cbVar);
            cbVar.e();
            x b4 = b(cbVar);
            cbVar.d();
            if (cbVar.a(')')) {
                return new l(b, b2, b3, b4);
            }
            throw new SAXException("Bad rect() clip definition: " + str);
        }
        throw new SAXException("Invalid clip attribute shape. Only rect() is supported.");
    }

    private static x b(cb cbVar) {
        if (cbVar.a("auto")) {
            return new x(0.0f);
        }
        return cbVar.i();
    }

    private static VectorEffect y(String str) throws SAXException {
        if ("none".equals(str)) {
            return VectorEffect.None;
        }
        if ("non-scaling-stroke".equals(str)) {
            return VectorEffect.NonScalingStroke;
        }
        throw new SAXException("Invalid vector-effect property: " + str);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.caverock.androidsvg.ae z(java.lang.String r18) throws org.xml.sax.SAXException {
        /*
        r15 = new com.caverock.androidsvg.cb;
        r0 = r18;
        r15.<init>(r0);
        r7 = 0;
        r6 = 0;
        r5 = 0;
        r4 = 0;
        r3 = 0;
        r2 = 0;
        r1 = new com.caverock.androidsvg.ae;
        r1.<init>();
        r8 = r15.c();
        if (r8 == 0) goto L_0x0019;
    L_0x0018:
        return r1;
    L_0x0019:
        r8 = r15.h();
        r8 = r8.intValue();
        r9 = 77;
        if (r8 == r9) goto L_0x0029;
    L_0x0025:
        r9 = 109; // 0x6d float:1.53E-43 double:5.4E-322;
        if (r8 != r9) goto L_0x0018;
    L_0x0029:
        r9 = r4;
        r10 = r5;
        r11 = r8;
        r5 = r7;
        r4 = r6;
    L_0x002e:
        r15.d();
        switch(r11) {
            case 65: goto L_0x0035;
            case 67: goto L_0x0163;
            case 72: goto L_0x02b9;
            case 76: goto L_0x010a;
            case 77: goto L_0x0084;
            case 81: goto L_0x0343;
            case 83: goto L_0x020d;
            case 84: goto L_0x03c7;
            case 86: goto L_0x02fe;
            case 90: goto L_0x02ad;
            case 97: goto L_0x0035;
            case 99: goto L_0x0163;
            case 104: goto L_0x02b9;
            case 108: goto L_0x010a;
            case 109: goto L_0x0084;
            case 113: goto L_0x0343;
            case 115: goto L_0x020d;
            case 116: goto L_0x03c7;
            case 118: goto L_0x02fe;
            case 122: goto L_0x02ad;
            default: goto L_0x0034;
        };
    L_0x0034:
        goto L_0x0018;
    L_0x0035:
        r6 = r15.f();
        r7 = r15.a(r6);
        r8 = r15.a(r7);
        r14 = r15.b(r8);
        r16 = r15.b(r14);
        r3 = r15.a(r16);
        r2 = r15.a(r3);
        if (r2 == 0) goto L_0x0065;
    L_0x0053:
        r12 = r6.floatValue();
        r13 = 0;
        r12 = (r12 > r13 ? 1 : (r12 == r13 ? 0 : -1));
        if (r12 < 0) goto L_0x0065;
    L_0x005c:
        r12 = r7.floatValue();
        r13 = 0;
        r12 = (r12 > r13 ? 1 : (r12 == r13 ? 0 : -1));
        if (r12 >= 0) goto L_0x0445;
    L_0x0065:
        r2 = "SVGParser";
        r3 = new java.lang.StringBuilder;
        r4 = "Bad path coords for ";
        r3.<init>(r4);
        r4 = (char) r11;
        r3 = r3.append(r4);
        r4 = " path segment";
        r3 = r3.append(r4);
        r3 = r3.toString();
        android.util.Log.e(r2, r3);
        goto L_0x0018;
    L_0x0084:
        r3 = r15.f();
        r2 = r15.a(r3);
        if (r2 != 0) goto L_0x00ae;
    L_0x008e:
        r2 = "SVGParser";
        r3 = new java.lang.StringBuilder;
        r4 = "Bad path coords for ";
        r3.<init>(r4);
        r4 = (char) r11;
        r3 = r3.append(r4);
        r4 = " path segment";
        r3 = r3.append(r4);
        r3 = r3.toString();
        android.util.Log.e(r2, r3);
        goto L_0x0018;
    L_0x00ae:
        r6 = 109; // 0x6d float:1.53E-43 double:5.4E-322;
        if (r11 != r6) goto L_0x00ca;
    L_0x00b2:
        r6 = r1.a();
        if (r6 != 0) goto L_0x00ca;
    L_0x00b8:
        r3 = r3.floatValue();
        r3 = r3 + r5;
        r3 = java.lang.Float.valueOf(r3);
        r2 = r2.floatValue();
        r2 = r2 + r4;
        r2 = java.lang.Float.valueOf(r2);
    L_0x00ca:
        r4 = r3.floatValue();
        r5 = r2.floatValue();
        r1.a(r4, r5);
        r3 = r3.floatValue();
        r9 = r2.floatValue();
        r2 = 109; // 0x6d float:1.53E-43 double:5.4E-322;
        if (r11 != r2) goto L_0x0107;
    L_0x00e1:
        r2 = 108; // 0x6c float:1.51E-43 double:5.34E-322;
    L_0x00e3:
        r4 = r9;
        r5 = r3;
        r6 = r9;
        r7 = r3;
        r8 = r2;
        r2 = r9;
    L_0x00e9:
        r15.e();
        r9 = r15.c();
        if (r9 != 0) goto L_0x0018;
    L_0x00f2:
        r9 = r15.p();
        if (r9 == 0) goto L_0x0029;
    L_0x00f8:
        r8 = r15.h();
        r8 = r8.intValue();
        r9 = r4;
        r10 = r5;
        r11 = r8;
        r5 = r7;
        r4 = r6;
        goto L_0x002e;
    L_0x0107:
        r2 = 76;
        goto L_0x00e3;
    L_0x010a:
        r3 = r15.f();
        r2 = r15.a(r3);
        if (r2 != 0) goto L_0x0134;
    L_0x0114:
        r2 = "SVGParser";
        r3 = new java.lang.StringBuilder;
        r4 = "Bad path coords for ";
        r3.<init>(r4);
        r4 = (char) r11;
        r3 = r3.append(r4);
        r4 = " path segment";
        r3 = r3.append(r4);
        r3 = r3.toString();
        android.util.Log.e(r2, r3);
        goto L_0x0018;
    L_0x0134:
        r6 = 108; // 0x6c float:1.51E-43 double:5.34E-322;
        if (r11 != r6) goto L_0x014a;
    L_0x0138:
        r3 = r3.floatValue();
        r3 = r3 + r5;
        r3 = java.lang.Float.valueOf(r3);
        r2 = r2.floatValue();
        r2 = r2 + r4;
        r2 = java.lang.Float.valueOf(r2);
    L_0x014a:
        r4 = r3.floatValue();
        r5 = r2.floatValue();
        r1.b(r4, r5);
        r3 = r3.floatValue();
        r2 = r2.floatValue();
        r4 = r9;
        r5 = r10;
        r6 = r2;
        r7 = r3;
        r8 = r11;
        goto L_0x00e9;
    L_0x0163:
        r7 = r15.f();
        r6 = r15.a(r7);
        r3 = r15.a(r6);
        r2 = r15.a(r3);
        r12 = r15.a(r2);
        r8 = r15.a(r12);
        if (r8 != 0) goto L_0x019d;
    L_0x017d:
        r2 = "SVGParser";
        r3 = new java.lang.StringBuilder;
        r4 = "Bad path coords for ";
        r3.<init>(r4);
        r4 = (char) r11;
        r3 = r3.append(r4);
        r4 = " path segment";
        r3 = r3.append(r4);
        r3 = r3.toString();
        android.util.Log.e(r2, r3);
        goto L_0x0018;
    L_0x019d:
        r13 = 99;
        if (r11 != r13) goto L_0x0498;
    L_0x01a1:
        r12 = r12.floatValue();
        r12 = r12 + r5;
        r12 = java.lang.Float.valueOf(r12);
        r8 = r8.floatValue();
        r8 = r8 + r4;
        r8 = java.lang.Float.valueOf(r8);
        r7 = r7.floatValue();
        r7 = r7 + r5;
        r7 = java.lang.Float.valueOf(r7);
        r6 = r6.floatValue();
        r6 = r6 + r4;
        r6 = java.lang.Float.valueOf(r6);
        r3 = r3.floatValue();
        r3 = r3 + r5;
        r3 = java.lang.Float.valueOf(r3);
        r2 = r2.floatValue();
        r2 = r2 + r4;
        r2 = java.lang.Float.valueOf(r2);
        r13 = r8;
        r14 = r12;
        r8 = r2;
        r12 = r3;
        r3 = r6;
        r2 = r7;
    L_0x01dd:
        r2 = r2.floatValue();
        r3 = r3.floatValue();
        r4 = r12.floatValue();
        r5 = r8.floatValue();
        r6 = r14.floatValue();
        r7 = r13.floatValue();
        r1.a(r2, r3, r4, r5, r6, r7);
        r3 = r12.floatValue();
        r2 = r8.floatValue();
        r7 = r14.floatValue();
        r6 = r13.floatValue();
        r4 = r9;
        r5 = r10;
        r8 = r11;
        goto L_0x00e9;
    L_0x020d:
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = r6 * r5;
        r3 = r6 - r3;
        r16 = java.lang.Float.valueOf(r3);
        r3 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r3 = r3 * r4;
        r2 = r3 - r2;
        r17 = java.lang.Float.valueOf(r2);
        r3 = r15.f();
        r2 = r15.a(r3);
        r7 = r15.a(r2);
        r6 = r15.a(r7);
        if (r6 != 0) goto L_0x0251;
    L_0x0231:
        r2 = "SVGParser";
        r3 = new java.lang.StringBuilder;
        r4 = "Bad path coords for ";
        r3.<init>(r4);
        r4 = (char) r11;
        r3 = r3.append(r4);
        r4 = " path segment";
        r3 = r3.append(r4);
        r3 = r3.toString();
        android.util.Log.e(r2, r3);
        goto L_0x0018;
    L_0x0251:
        r8 = 115; // 0x73 float:1.61E-43 double:5.7E-322;
        if (r11 != r8) goto L_0x0492;
    L_0x0255:
        r7 = r7.floatValue();
        r7 = r7 + r5;
        r7 = java.lang.Float.valueOf(r7);
        r6 = r6.floatValue();
        r6 = r6 + r4;
        r6 = java.lang.Float.valueOf(r6);
        r3 = r3.floatValue();
        r3 = r3 + r5;
        r3 = java.lang.Float.valueOf(r3);
        r2 = r2.floatValue();
        r2 = r2 + r4;
        r2 = java.lang.Float.valueOf(r2);
        r8 = r2;
        r12 = r3;
        r13 = r6;
        r14 = r7;
    L_0x027d:
        r2 = r16.floatValue();
        r3 = r17.floatValue();
        r4 = r12.floatValue();
        r5 = r8.floatValue();
        r6 = r14.floatValue();
        r7 = r13.floatValue();
        r1.a(r2, r3, r4, r5, r6, r7);
        r3 = r12.floatValue();
        r2 = r8.floatValue();
        r7 = r14.floatValue();
        r6 = r13.floatValue();
        r4 = r9;
        r5 = r10;
        r8 = r11;
        goto L_0x00e9;
    L_0x02ad:
        r1.b();
        r2 = r9;
        r3 = r10;
        r4 = r9;
        r5 = r10;
        r6 = r9;
        r7 = r10;
        r8 = r11;
        goto L_0x00e9;
    L_0x02b9:
        r3 = r15.f();
        if (r3 != 0) goto L_0x02df;
    L_0x02bf:
        r2 = "SVGParser";
        r3 = new java.lang.StringBuilder;
        r4 = "Bad path coords for ";
        r3.<init>(r4);
        r4 = (char) r11;
        r3 = r3.append(r4);
        r4 = " path segment";
        r3 = r3.append(r4);
        r3 = r3.toString();
        android.util.Log.e(r2, r3);
        goto L_0x0018;
    L_0x02df:
        r6 = 104; // 0x68 float:1.46E-43 double:5.14E-322;
        if (r11 != r6) goto L_0x02ec;
    L_0x02e3:
        r3 = r3.floatValue();
        r3 = r3 + r5;
        r3 = java.lang.Float.valueOf(r3);
    L_0x02ec:
        r5 = r3.floatValue();
        r1.b(r5, r4);
        r3 = r3.floatValue();
        r5 = r10;
        r6 = r4;
        r7 = r3;
        r8 = r11;
        r4 = r9;
        goto L_0x00e9;
    L_0x02fe:
        r2 = r15.f();
        if (r2 != 0) goto L_0x0324;
    L_0x0304:
        r2 = "SVGParser";
        r3 = new java.lang.StringBuilder;
        r4 = "Bad path coords for ";
        r3.<init>(r4);
        r4 = (char) r11;
        r3 = r3.append(r4);
        r4 = " path segment";
        r3 = r3.append(r4);
        r3 = r3.toString();
        android.util.Log.e(r2, r3);
        goto L_0x0018;
    L_0x0324:
        r6 = 118; // 0x76 float:1.65E-43 double:5.83E-322;
        if (r11 != r6) goto L_0x0331;
    L_0x0328:
        r2 = r2.floatValue();
        r2 = r2 + r4;
        r2 = java.lang.Float.valueOf(r2);
    L_0x0331:
        r4 = r2.floatValue();
        r1.b(r5, r4);
        r2 = r2.floatValue();
        r4 = r9;
        r6 = r2;
        r7 = r5;
        r8 = r11;
        r5 = r10;
        goto L_0x00e9;
    L_0x0343:
        r3 = r15.f();
        r2 = r15.a(r3);
        r7 = r15.a(r2);
        r6 = r15.a(r7);
        if (r6 != 0) goto L_0x0375;
    L_0x0355:
        r2 = "SVGParser";
        r3 = new java.lang.StringBuilder;
        r4 = "Bad path coords for ";
        r3.<init>(r4);
        r4 = (char) r11;
        r3 = r3.append(r4);
        r4 = " path segment";
        r3 = r3.append(r4);
        r3 = r3.toString();
        android.util.Log.e(r2, r3);
        goto L_0x0018;
    L_0x0375:
        r8 = 113; // 0x71 float:1.58E-43 double:5.6E-322;
        if (r11 != r8) goto L_0x048e;
    L_0x0379:
        r7 = r7.floatValue();
        r7 = r7 + r5;
        r7 = java.lang.Float.valueOf(r7);
        r6 = r6.floatValue();
        r6 = r6 + r4;
        r6 = java.lang.Float.valueOf(r6);
        r3 = r3.floatValue();
        r3 = r3 + r5;
        r3 = java.lang.Float.valueOf(r3);
        r2 = r2.floatValue();
        r2 = r2 + r4;
        r2 = java.lang.Float.valueOf(r2);
        r4 = r6;
        r5 = r7;
    L_0x039f:
        r6 = r3.floatValue();
        r7 = r2.floatValue();
        r8 = r5.floatValue();
        r12 = r4.floatValue();
        r1.a(r6, r7, r8, r12);
        r3 = r3.floatValue();
        r2 = r2.floatValue();
        r7 = r5.floatValue();
        r6 = r4.floatValue();
        r4 = r9;
        r5 = r10;
        r8 = r11;
        goto L_0x00e9;
    L_0x03c7:
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r6 = r6 * r5;
        r3 = r6 - r3;
        r6 = java.lang.Float.valueOf(r3);
        r3 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r3 = r3 * r4;
        r2 = r3 - r2;
        r7 = java.lang.Float.valueOf(r2);
        r3 = r15.f();
        r2 = r15.a(r3);
        if (r2 != 0) goto L_0x0403;
    L_0x03e3:
        r2 = "SVGParser";
        r3 = new java.lang.StringBuilder;
        r4 = "Bad path coords for ";
        r3.<init>(r4);
        r4 = (char) r11;
        r3 = r3.append(r4);
        r4 = " path segment";
        r3 = r3.append(r4);
        r3 = r3.toString();
        android.util.Log.e(r2, r3);
        goto L_0x0018;
    L_0x0403:
        r8 = 116; // 0x74 float:1.63E-43 double:5.73E-322;
        if (r11 != r8) goto L_0x0419;
    L_0x0407:
        r3 = r3.floatValue();
        r3 = r3 + r5;
        r3 = java.lang.Float.valueOf(r3);
        r2 = r2.floatValue();
        r2 = r2 + r4;
        r2 = java.lang.Float.valueOf(r2);
    L_0x0419:
        r4 = r6.floatValue();
        r5 = r7.floatValue();
        r8 = r3.floatValue();
        r12 = r2.floatValue();
        r1.a(r4, r5, r8, r12);
        r5 = r6.floatValue();
        r4 = r7.floatValue();
        r3 = r3.floatValue();
        r2 = r2.floatValue();
        r6 = r2;
        r7 = r3;
        r8 = r11;
        r2 = r4;
        r3 = r5;
        r5 = r10;
        r4 = r9;
        goto L_0x00e9;
    L_0x0445:
        r12 = 97;
        if (r11 != r12) goto L_0x048b;
    L_0x0449:
        r3 = r3.floatValue();
        r3 = r3 + r5;
        r3 = java.lang.Float.valueOf(r3);
        r2 = r2.floatValue();
        r2 = r2 + r4;
        r2 = java.lang.Float.valueOf(r2);
        r12 = r2;
        r13 = r3;
    L_0x045d:
        r2 = r6.floatValue();
        r3 = r7.floatValue();
        r4 = r8.floatValue();
        r5 = r14.booleanValue();
        r6 = r16.booleanValue();
        r7 = r13.floatValue();
        r8 = r12.floatValue();
        r1.a(r2, r3, r4, r5, r6, r7, r8);
        r3 = r13.floatValue();
        r2 = r12.floatValue();
        r4 = r9;
        r5 = r10;
        r6 = r2;
        r7 = r3;
        r8 = r11;
        goto L_0x00e9;
    L_0x048b:
        r12 = r2;
        r13 = r3;
        goto L_0x045d;
    L_0x048e:
        r4 = r6;
        r5 = r7;
        goto L_0x039f;
    L_0x0492:
        r8 = r2;
        r12 = r3;
        r13 = r6;
        r14 = r7;
        goto L_0x027d;
    L_0x0498:
        r13 = r8;
        r14 = r12;
        r8 = r2;
        r12 = r3;
        r3 = r6;
        r2 = r7;
        goto L_0x01dd;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.SVGParser.z(java.lang.String):com.caverock.androidsvg.ae");
    }

    private static Set<String> A(String str) throws SAXException {
        cb cbVar = new cb(str);
        Set hashSet = new HashSet();
        while (!cbVar.c()) {
            String l = cbVar.l();
            if (l.startsWith("http://www.w3.org/TR/SVG11/feature#")) {
                hashSet.add(l.substring("http://www.w3.org/TR/SVG11/feature#".length()));
            } else {
                hashSet.add("UNSUPPORTED");
            }
            cbVar.d();
        }
        return hashSet;
    }

    private static Set<String> B(String str) throws SAXException {
        cb cbVar = new cb(str);
        Set hashSet = new HashSet();
        while (!cbVar.c()) {
            String l = cbVar.l();
            int indexOf = l.indexOf(45);
            if (indexOf != -1) {
                l = l.substring(0, indexOf);
            }
            hashSet.add(new Locale(l, TtmlNode.ANONYMOUS_REGION_ID, TtmlNode.ANONYMOUS_REGION_ID).getLanguage());
            cbVar.d();
        }
        return hashSet;
    }

    private static Set<String> C(String str) throws SAXException {
        cb cbVar = new cb(str);
        Set hashSet = new HashSet();
        while (!cbVar.c()) {
            hashSet.add(cbVar.l());
            cbVar.d();
        }
        return hashSet;
    }

    private static String b(String str, String str2) throws SAXException {
        if (str.equals("none")) {
            return null;
        }
        if (str.startsWith("url(") && str.endsWith(")")) {
            return str.substring(4, str.length() - 1).trim();
        }
        throw new SAXException("Bad " + str2 + " attribute. Expected \"none\" or \"url()\" format");
    }

    private void B(Attributes attributes) throws SAXException {
        a("<style>", new Object[0]);
        if (this.b == null) {
            throw new SAXException("Invalid document. Root element must be <svg>");
        }
        int i = 0;
        boolean z = true;
        String str = "all";
        while (i < attributes.getLength()) {
            boolean z2;
            String trim = attributes.getValue(i).trim();
            switch (b()[SVGAttr.a(attributes.getLocalName(i)).ordinal()]) {
                case bdd.AppCompatTheme_actionModePopupWindowStyle /*39*/:
                    str = trim;
                    z2 = z;
                    break;
                case bdd.AppCompatTheme_panelBackground /*78*/:
                    z2 = trim.equals("text/css");
                    break;
                default:
                    z2 = z;
                    break;
            }
            i++;
            z = z2;
        }
        if (z && CSSParser.a(r0, MediaType.screen)) {
            this.h = true;
            return;
        }
        this.c = true;
        this.d = 1;
    }

    private void D(String str) throws SAXException {
        this.a.a(new CSSParser(MediaType.screen).a(str));
    }
}
