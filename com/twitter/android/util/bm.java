package com.twitter.android.util;

import android.os.AsyncTask;
import android.util.Pair;
import bbu;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.twitter.library.scribe.TwitterScribeLog;
import java.util.List;

/* compiled from: Twttr */
class bm extends AsyncTask<Long, Void, Pair<String, PhoneNumber>> {
    private final am a;
    private final List<Integer> b;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Long[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((Pair) obj);
    }

    bm(am amVar, List<Integer> list) {
        this.a = amVar;
        this.b = list;
    }

    private static void a(long j, String str) {
        String str2 = str == null ? "unavailable" : "available";
        bbu.a((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).c(2)).b(new String[]{"app", TtmlNode.ANONYMOUS_REGION_ID, "phone_number", str, str2}));
    }

    protected Pair<String, PhoneNumber> a(Long... lArr) {
        if (lArr.length == 1) {
            long longValue = lArr[0].longValue();
            for (Integer intValue : this.b) {
                PhoneNumber k;
                switch (intValue.intValue()) {
                    case Util.TYPE_DASH /*0*/:
                        k = this.a.k();
                        if (k == null) {
                            break;
                        }
                        a(longValue, "source_telephonymanager");
                        return new Pair("source_telephonymanager", k);
                    case ModuleDescriptor.MODULE_VERSION /*1*/:
                        k = this.a.l();
                        if (k == null) {
                            break;
                        }
                        a(longValue, "source_google_contact");
                        return new Pair("source_google_contact", k);
                    default:
                        break;
                }
            }
            a(longValue, null);
        }
        return new Pair(null, null);
    }

    protected void a(Pair<String, PhoneNumber> pair) {
        this.a.a(pair);
    }
}
