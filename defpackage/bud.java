package defpackage;

import android.content.Context;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.c;
import com.twitter.model.core.bp;

/* compiled from: Twttr */
/* renamed from: bud */
public class bud {
    public static String a(Context context, bp bpVar) {
        String b = c.b("android_event_timelines_tv_tweet_pivot_4151");
        int i = -1;
        switch (b.hashCode()) {
            case -1068382228:
                if (b.equals("moreof")) {
                    i = 3;
                    break;
                }
                break;
            case -296607124:
                if (b.equals("thebestof")) {
                    i = 2;
                    break;
                }
                break;
            case 2893413:
                if (b.equals("seemoreabout")) {
                    i = 5;
                    break;
                }
                break;
            case 401590963:
                if (b.equals("everything")) {
                    i = 1;
                    break;
                }
                break;
            case 951543133:
                if (b.equals("control")) {
                    i = 6;
                    break;
                }
                break;
            case 1377367423:
                if (b.equals("seethetimeline")) {
                    i = 4;
                    break;
                }
                break;
            case 1720349767:
                if (b.equals("besttweetsabout")) {
                    i = 0;
                    break;
                }
                break;
        }
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                i = bdc.pivot_prompt_best_tweets_about;
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                i = bdc.pivot_prompt_everything;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                i = bdc.pivot_prompt_the_best_of;
                break;
            case Util.TYPE_OTHER /*3*/:
                i = bdc.pivot_prompt_more_of;
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                i = bdc.pivot_prompt_see_the_timeline;
                break;
            default:
                i = bdc.see_more;
                break;
        }
        return context.getResources().getString(i, new Object[]{bpVar.c()});
    }
}
