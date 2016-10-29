package com.twitter.android.moments.ui.guide;

import adn;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.moments.viewmodels.MomentGuideListItem;
import com.twitter.android.moments.viewmodels.MomentModule;
import com.twitter.android.moments.viewmodels.q;
import com.twitter.android.moments.viewmodels.t;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.moments.MomentGuideSectionType;
import com.twitter.util.h;

/* compiled from: Twttr */
class l implements OnItemClickListener {
    final /* synthetic */ adn a;
    final /* synthetic */ j b;

    l(j jVar, adn adn) {
        this.b = jVar;
        this.a = adn;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Object itemAtPosition = this.b.b.getItemAtPosition(i);
        if (itemAtPosition instanceof MomentGuideListItem) {
            MomentGuideListItem momentGuideListItem = (MomentGuideListItem) itemAtPosition;
            switch (o.a[momentGuideListItem.b().ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    MomentModule momentModule = ((q) momentGuideListItem).a;
                    this.b.e.a(momentModule.b().b, MomentGuideSectionType.c, momentModule, (MediaImageView) view.findViewById(2131952793));
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    t tVar = (t) itemAtPosition;
                    String c = tVar.c();
                    itemAtPosition = tVar.d();
                    if (TextUtils.isEmpty(c) || TextUtils.isEmpty(itemAtPosition)) {
                        h.a("Section Pivot does not contain a categoryId");
                        return;
                    }
                    this.b.t.b(new z(new com.twitter.model.moments.t(c, itemAtPosition)));
                    this.a.b(c);
                default:
            }
        }
    }
}
