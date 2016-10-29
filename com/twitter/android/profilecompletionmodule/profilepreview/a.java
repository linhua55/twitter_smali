package com.twitter.android.profilecompletionmodule.profilepreview;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.ViewGroup;
import android.widget.TextView;
import cgu;
import com.twitter.android.profiles.ProfileDetailsViewManager.IconItemType;
import com.twitter.util.collection.z;
import com.twitter.util.object.e;
import defpackage.bcv;
import defpackage.bdn;

/* compiled from: Twttr */
public class a extends bdn<b> {
    private final cgu<z<IconItemType, String>> a;

    public /* synthetic */ ViewHolder a(ViewGroup viewGroup, int i) {
        return b(viewGroup, i);
    }

    public a(cgu<z<IconItemType, String>> cgu_com_twitter_util_collection_z_com_twitter_android_profiles_ProfileDetailsViewManager_IconItemType__java_lang_String) {
        this.a = cgu_com_twitter_util_collection_z_com_twitter_android_profiles_ProfileDetailsViewManager_IconItemType__java_lang_String;
    }

    public b b(ViewGroup viewGroup, int i) {
        return new b(new TextView(viewGroup.getContext()));
    }

    public void a(b bVar, int i) {
        z b = b(i);
        TextView textView = bVar.a;
        Resources resources = textView.getContext().getResources();
        IconItemType iconItemType = (IconItemType) b.a();
        Drawable drawable = resources.getDrawable(iconItemType.iconResource);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        textView.setCompoundDrawables(drawable, null, null, null);
        textView.setCompoundDrawablePadding(resources.getDimensionPixelSize(2131690419));
        textView.setTag(iconItemType);
        textView.setText((CharSequence) b.b());
        textView.setTextSize(0, resources.getDimension(bcv.font_size_micro));
    }

    public int a() {
        return this.a.aU_();
    }

    public z<IconItemType, String> b(int i) {
        return (z) e.a(this.a.a(i));
    }
}
