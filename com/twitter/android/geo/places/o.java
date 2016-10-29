package com.twitter.android.geo.places;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.geo.VendorInfo.YelpInfo.YelpRating;

/* compiled from: Twttr */
public class o extends m {
    private final Resources a;
    private final ImageView b;
    private final TextView c;

    public static o a(ViewGroup viewGroup) {
        return new o(LayoutInflater.from(viewGroup.getContext()).inflate(2130969196, viewGroup, false));
    }

    public o(View view) {
        super(view);
        this.a = view.getResources();
        this.b = (ImageView) view.findViewById(2131953062);
        this.c = (TextView) view.findViewById(2131953063);
        a(2131363343);
    }

    public void a(YelpRating yelpRating) {
        int i;
        switch (p.a[yelpRating.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                i = 2130839671;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                i = 2130839672;
                break;
            case Util.TYPE_OTHER /*3*/:
                i = 2130839673;
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                i = 2130839674;
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                i = 2130839675;
                break;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                i = 2130839676;
                break;
            case C.ENCODING_DTS /*7*/:
                i = 2130839677;
                break;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                i = 2130839678;
                break;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                i = 2130839679;
                break;
            default:
                i = 2130839670;
                break;
        }
        this.b.setImageResource(i);
    }

    public void b(int i) {
        this.c.setText(this.a.getString(2131363344, new Object[]{Integer.valueOf(i)}));
    }
}
