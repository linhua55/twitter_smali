package com.google.android.gms.internal;

import android.os.Parcel;
import android.support.v7.recyclerview.BuildConfig;
import android.util.Base64;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@oi
class hw {
    final AdRequestParcel a;
    final String b;
    final int c;

    hw(AdRequestParcel adRequestParcel, String str, int i) {
        this.a = adRequestParcel;
        this.b = str;
        this.c = i;
    }

    hw(ht htVar) {
        this(htVar.a(), htVar.c(), htVar.b());
    }

    hw(String str) throws IOException {
        String[] split = str.split("\u0000");
        if (split.length != 3) {
            throw new IOException("Incorrect field count for QueueSeed.");
        }
        Parcel obtain = Parcel.obtain();
        try {
            this.b = new String(Base64.decode(split[0], 0), "UTF-8");
            this.c = Integer.parseInt(split[1]);
            byte[] decode = Base64.decode(split[2], 0);
            obtain.unmarshall(decode, 0, decode.length);
            obtain.setDataPosition(0);
            this.a = AdRequestParcel.CREATOR.a(obtain);
            obtain.recycle();
        } catch (IllegalArgumentException e) {
            throw new IOException("Malformed QueueSeed encoding.");
        } catch (Throwable th) {
            obtain.recycle();
        }
    }

    String a() {
        Parcel obtain = Parcel.obtain();
        String encodeToString;
        try {
            encodeToString = Base64.encodeToString(this.b.getBytes("UTF-8"), 0);
            String num = Integer.toString(this.c);
            this.a.writeToParcel(obtain, 0);
            encodeToString = encodeToString + "\u0000" + num + "\u0000" + Base64.encodeToString(obtain.marshall(), 0);
            return encodeToString;
        } catch (UnsupportedEncodingException e) {
            encodeToString = "QueueSeed encode failed because UTF-8 is not available.";
            b.b(encodeToString);
            return BuildConfig.VERSION_NAME;
        } finally {
            obtain.recycle();
        }
    }
}
