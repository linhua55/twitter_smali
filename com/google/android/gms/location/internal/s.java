package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.api.internal.an;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.GestureRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import defpackage.bdd;

public abstract class s extends Binder implements r {
    public static r a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof r)) ? new t(iBinder) : (r) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        boolean z = false;
        LocationRequestUpdateData locationRequestUpdateData = null;
        Location a;
        LocationRequest a2;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.createTypedArrayList(ParcelableGeofence.CREATOR), parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, p.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, p.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.createStringArray(), p.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(p.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readLong(), parcel.readInt() != 0, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case C.ENCODING_DTS /*7*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a = a();
                parcel2.writeNoException();
                if (a != null) {
                    parcel2.writeInt(1);
                    a.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    a2 = LocationRequest.CREATOR.a(parcel);
                }
                a(a2, com.google.android.gms.location.s.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readInt() != 0 ? LocationRequest.CREATOR.a(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(com.google.android.gms.location.s.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                b(parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case Atom.FULL_HEADER_SIZE /*12*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    z = true;
                }
                a(z);
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_shape /*13*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readInt() != 0 ? (Location) Location.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    a2 = LocationRequest.CREATOR.a(parcel);
                }
                a(a2, com.google.android.gms.location.s.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_mediaTopMargin /*21*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a = b(parcel.readString());
                parcel2.writeNoException();
                if (a != null) {
                    parcel2.writeInt(1);
                    a.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case bdd.TweetView_previewFlags /*26*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readInt() != 0 ? (Location) Location.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                LocationAvailability c = c(parcel.readString());
                parcel2.writeNoException();
                if (c != null) {
                    parcel2.writeInt(1);
                    c.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case bdd.AppCompatTheme_selectableItemBackground /*52*/:
                LocationRequestInternal a3;
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    a3 = LocationRequestInternal.CREATOR.a(parcel);
                }
                a(a3, com.google.android.gms.location.s.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_selectableItemBackgroundBorderless /*53*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readInt() != 0 ? LocationRequestInternal.CREATOR.a(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_activityChooserViewStyle /*57*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readInt() != 0 ? (GeofencingRequest) GeofencingRequest.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, p.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_toolbarNavigationButtonStyle /*59*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                if (parcel.readInt() != 0) {
                    locationRequestUpdateData = LocationRequestUpdateData.CREATOR.a(parcel);
                }
                a(locationRequestUpdateData);
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_popupMenuStyle /*60*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readInt() != 0 ? GestureRequest.CREATOR.a(parcel) : null, parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, an.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_popupWindowStyle /*61*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                c(parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, an.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_editTextBackground /*63*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readInt() != 0 ? (LocationSettingsRequest) LocationSettingsRequest.CREATOR.createFromParcel(parcel) : null, v.a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_imageButtonStyle /*64*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                ActivityRecognitionResult a4 = a(parcel.readString());
                parcel2.writeNoException();
                if (a4 != null) {
                    parcel2.writeInt(1);
                    a4.writeToParcel(parcel2, 1);
                    return true;
                }
                parcel2.writeInt(0);
                return true;
            case bdd.AppCompatTheme_textAppearanceSearchResultTitle /*65*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, an.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_textAppearanceSearchResultSubtitle /*66*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                b(parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, an.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_textColorSearchUrl /*67*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                a(m.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_searchViewStyle /*68*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                d(parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, an.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_listPreferredItemHeight /*69*/:
                parcel.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                e(parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null, an.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
