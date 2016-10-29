package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import bwh;
import cfb;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.a;
import com.google.android.gms.maps.b;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.f;
import com.google.android.gms.maps.s;
import com.twitter.model.geo.d;
import org.json.JSONObject;
import ri;
import rs;

/* compiled from: Twttr */
/* renamed from: bwk */
public class bwk implements bwh {
    private static final String a;
    private final MapView b;
    private final ImageView c;
    private final int d;
    private final int e;
    @ColorInt
    private final int f;
    @ColorInt
    private final int g;
    private f h;

    static {
        a = bwk.class.getSimpleName();
    }

    public bwk(ViewGroup viewGroup, MapView mapView, ImageView imageView) {
        mapView.setVisibility(4);
        this.b = mapView;
        this.c = imageView;
        Resources resources = viewGroup.getResources();
        Context context = viewGroup.getContext();
        this.d = resources.getDimensionPixelOffset(bcv.map_bounding_box_padding);
        this.e = resources.getDimensionPixelOffset(bcv.geo_json_region_stroke_width);
        this.f = ContextCompat.getColor(context, bcu.geo_json_region_stroke_color);
        this.g = ContextCompat.getColor(context, bcu.geo_json_region_fill_color);
        if (mapView.getParent() == null) {
            mapView.setLayoutParams(new LayoutParams(-1, -1));
            viewGroup.addView(mapView);
        }
        if (imageView.getParent() == null) {
            imageView.setLayoutParams(new LayoutParams(-1, -1));
            viewGroup.addView(imageView);
        }
        s.a(context);
        this.b.a(new bwl(this, resources));
    }

    public static MapView a(Context context) {
        return new MapView(context, new GoogleMapOptions().j(false).c(false).f(false).h(false).e(false).g(false));
    }

    private static LatLng a(d dVar) {
        return new LatLng(dVar.a(), dVar.b());
    }

    private static ri b(c cVar, String str) {
        try {
            return new ri(cVar, new JSONObject(str));
        } catch (Throwable e) {
            cfb.a(a, "Can't render alert region map as GeoJson parsing failed. Received GeoJson: " + str, e);
            return null;
        }
    }

    public void a(d dVar, d dVar2, bwi bwi) {
        if (this.b.getLeft() < this.b.getRight()) {
            b(dVar, dVar2, bwi);
        } else {
            this.b.addOnLayoutChangeListener(new bwm(this, dVar, dVar2, bwi));
        }
    }

    private void b(d dVar, d dVar2, bwi bwi) {
        a(b.a(new LatLngBounds(bwk.a(dVar), bwk.a(dVar2)), 0), bvr.a(dVar2, dVar), bwi);
    }

    public void a(d dVar, bwi bwi) {
        a(b.a(new LatLng(dVar.a(), dVar.b()), 15.0f), dVar, bwi);
    }

    public void a(String str, bwi bwi) {
        if (this.b.getLeft() < this.b.getRight()) {
            b(str, bwi);
        } else {
            this.b.addOnLayoutChangeListener(new bwn(this, str, bwi));
        }
    }

    private void a(a aVar, d dVar, bwi bwi) {
        this.b.a(new bwo(this, aVar, dVar, bwi));
    }

    private void b(String str, bwi bwi) {
        this.b.a(new bwp(this, str, bwi));
    }

    private void a(ri riVar) {
        rs b = riVar.b();
        b.a((float) this.e);
        b.b(this.f);
        b.a(this.g);
    }

    private a a(LatLngBounds latLngBounds) {
        return latLngBounds == null ? null : b.a(latLngBounds, this.d);
    }

    private void e() {
        this.b.setVisibility(0);
        this.c.setVisibility(8);
    }

    private void a(c cVar, d dVar) {
        if (this.h != null) {
            this.h.a();
            this.h = null;
        }
        this.h = cVar.a(new MarkerOptions().a(new LatLng(dVar.a(), dVar.b())).a(com.google.android.gms.maps.model.b.a(bcw.ic_location_pin)));
    }

    private void a(c cVar, a aVar) {
        cVar.a(new bwq(this, cVar, aVar));
        cVar.a(aVar);
    }

    private void a(c cVar, bwi bwi) {
        cVar.a(new bwr(this, bwi));
    }

    public void a(Bundle bundle) {
        this.b.a(bundle);
    }

    public void a() {
        this.b.a();
    }

    public void b() {
        this.b.b();
    }

    public void c() {
        this.b.c();
    }

    public void b(Bundle bundle) {
        this.b.b(bundle);
    }

    public void d() {
        this.b.d();
    }
}
