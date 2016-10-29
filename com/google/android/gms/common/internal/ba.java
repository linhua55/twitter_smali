package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.Bundle;
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
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.v_1_5_1.internal.http.HttpURLConnectionImpl;
import defpackage.bdd;

public abstract class ba extends Binder implements az {
    public static az a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
        return (queryLocalInterface == null || !(queryLocalInterface instanceof az)) ? new bb(iBinder) : (az) queryLocalInterface;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        ValidateAccountRequest validateAccountRequest = null;
        aw a;
        int readInt;
        String readString;
        Bundle bundle;
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                a(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case Util.TYPE_OTHER /*3*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(ax.a(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                b(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                c(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case C.ENCODING_DTS /*7*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                d(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                e(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readStrongBinder(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                f(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case Atom.FULL_HEADER_SIZE /*12*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                g(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_shape /*13*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                h(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case b.ShimmerFrameLayout_tilt /*14*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                i(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.TwitterButton_strokeWidth /*15*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                j(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case Atom.LONG_HEADER_SIZE /*16*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                k(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.TwitterButton_bounded /*17*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                l(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.TwitterButton_knockout /*18*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                m(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.TwitterButton_iconLayout /*19*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readStrongBinder(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case HttpURLConnectionImpl.MAX_REDIRECTS /*20*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.createStringArray(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_mediaTopMargin /*21*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                b(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_mediaBottomMargin /*22*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                c(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_mediaDivider /*23*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                n(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_autoLink /*24*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                d(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_linkSelectedColor /*25*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                o(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_previewFlags /*26*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                e(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case OggUtil.PAGE_HEADER_SIZE /*27*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                p(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.TweetView_inlineActionBarPaddingNormal /*28*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a();
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionModeSplitBackground /*30*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionModeCloseDrawable /*31*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                f(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                g(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionModeCopyDrawable /*33*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionModeSelectAllDrawable /*35*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                h(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionModeShareDrawable /*36*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                i(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionModeFindDrawable /*37*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                q(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionModeWebSearchDrawable /*38*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                r(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                j(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_textAppearanceSmallPopupMenu /*41*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                s(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_dialogTheme /*42*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                k(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_dialogPreferredPadding /*43*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                readInt = parcel.readInt();
                readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                t(a, readInt, readString, bundle);
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_listDividerAlertDialog /*44*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                l(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_actionDropDownStyle /*45*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                m(ax.a(parcel.readStrongBinder()), parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_dropdownListPreferredItemHeight /*46*/:
                GetServiceRequest getServiceRequest;
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    getServiceRequest = (GetServiceRequest) GetServiceRequest.CREATOR.createFromParcel(parcel);
                }
                a(a, getServiceRequest);
                parcel2.writeNoException();
                return true;
            case bdd.AppCompatTheme_spinnerDropDownItemStyle /*47*/:
                parcel.enforceInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                a = ax.a(parcel.readStrongBinder());
                if (parcel.readInt() != 0) {
                    validateAccountRequest = (ValidateAccountRequest) ValidateAccountRequest.CREATOR.createFromParcel(parcel);
                }
                a(a, validateAccountRequest);
                parcel2.writeNoException();
                return true;
            case 1598968902:
                parcel2.writeString("com.google.android.gms.common.internal.IGmsServiceBroker");
                return true;
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }
}
