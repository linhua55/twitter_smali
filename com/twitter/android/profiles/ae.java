package com.twitter.android.profiles;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.profiles.ProfileDetailsViewManager.IconItemType;
import com.twitter.ui.widget.TypefacesTextView;
import defpackage.bcv;
import java.util.List;

/* compiled from: Twttr */
class ae extends BaseAdapter {
    final /* synthetic */ ProfileDetailsViewManager a;
    private List<IconItemType> b;

    ae(ProfileDetailsViewManager profileDetailsViewManager) {
        this.a = profileDetailsViewManager;
    }

    void a(List<IconItemType> list) {
        this.b = list;
    }

    public int getCount() {
        return this.b != null ? this.b.size() : 0;
    }

    public Object getItem(int i) {
        return (this.b == null || this.b.size() <= i) ? null : (IconItemType) this.b.get(i);
    }

    public long getItemId(int i) {
        IconItemType iconItemType = (IconItemType) getItem(i);
        return iconItemType != null ? (long) iconItemType.ordinal() : 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        Resources resources = context.getResources();
        if (view instanceof TextView) {
            view = (TextView) view;
        } else {
            view = new TypefacesTextView(context);
            view.setTextSize(0, resources.getDimension(bcv.profile_header_field_font_size));
        }
        IconItemType iconItemType = (IconItemType) getItem(i);
        if (iconItemType != null) {
            Drawable drawable = resources.getDrawable(iconItemType.iconResource);
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            drawable.mutate().setColorFilter(new PorterDuffColorFilter(resources.getColor(2131886400), Mode.SRC_IN));
            view.setCompoundDrawables(drawable, null, null, null);
            view.setCompoundDrawablePadding(resources.getDimensionPixelSize(2131690419));
            view.setTag(iconItemType);
            switch (ad.a[iconItemType.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    this.a.a(view);
                    view.setTextColor(resources.getColor(2131886400));
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.a.a(view, resources);
                    view.setTextColor(resources.getColor(2131886264));
                    break;
                case Util.TYPE_OTHER /*3*/:
                    this.a.b(view, resources, context);
                    view.setTextColor(resources.getColor(2131886400));
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    this.a.a(view, resources, context);
                    view.setTextColor(resources.getColor(2131886264));
                    break;
                default:
                    view.setText(null);
                    break;
            }
        }
        view.setText(null);
        return view;
    }
}
