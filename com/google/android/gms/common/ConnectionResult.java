package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender.SendIntentException;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.bj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import defpackage.bdd;

public final class ConnectionResult implements SafeParcelable {
    public static final Creator<ConnectionResult> CREATOR;
    public static final ConnectionResult a;
    final int b;
    private final int c;
    private final PendingIntent d;
    private final String e;

    static {
        a = new ConnectionResult(0);
        CREATOR = new e();
    }

    public ConnectionResult(int i) {
        this(i, null, null);
    }

    ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.b = i;
        this.c = i2;
        this.d = pendingIntent;
        this.e = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    static String a(int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return "SUCCESS";
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return "SERVICE_MISSING";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case Util.TYPE_OTHER /*3*/:
                return "SERVICE_DISABLED";
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return "SIGN_IN_REQUIRED";
            case EbmlReader.TYPE_FLOAT /*5*/:
                return "INVALID_ACCOUNT";
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return "RESOLUTION_REQUIRED";
            case C.ENCODING_DTS /*7*/:
                return "NETWORK_ERROR";
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return "INTERNAL_ERROR";
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return "SERVICE_INVALID";
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return "DEVELOPER_ERROR";
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return "LICENSE_CHECK_FAILED";
            case b.ShimmerFrameLayout_shape /*13*/:
                return "CANCELED";
            case b.ShimmerFrameLayout_tilt /*14*/:
                return "TIMEOUT";
            case bdd.TwitterButton_strokeWidth /*15*/:
                return "INTERRUPTED";
            case Atom.LONG_HEADER_SIZE /*16*/:
                return "API_UNAVAILABLE";
            case bdd.TwitterButton_bounded /*17*/:
                return "SIGN_IN_FAILED";
            case bdd.TwitterButton_knockout /*18*/:
                return "SERVICE_UPDATING";
            case bdd.TwitterButton_iconLayout /*19*/:
                return "SERVICE_MISSING_PERMISSION";
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                return "RESTRICTED_PROFILE";
            default:
                return "UNKNOWN_ERROR_CODE(" + i + ")";
        }
    }

    public void a(Activity activity, int i) throws SendIntentException {
        if (a()) {
            activity.startIntentSenderForResult(this.d.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public boolean a() {
        return (this.c == 0 || this.d == null) ? false : true;
    }

    public boolean b() {
        return this.c == 0;
    }

    public int c() {
        return this.c;
    }

    @Nullable
    public PendingIntent d() {
        return this.d;
    }

    public int describeContents() {
        return 0;
    }

    @Nullable
    public String e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.c == connectionResult.c && bj.a(this.d, connectionResult.d) && bj.a(this.e, connectionResult.e);
    }

    public int hashCode() {
        return bj.a(Integer.valueOf(this.c), this.d, this.e);
    }

    public String toString() {
        return bj.a((Object) this).a("statusCode", a(this.c)).a("resolution", this.d).a("message", this.e).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}
