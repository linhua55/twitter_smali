package com.twitter.media;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class VireoNativeException extends Exception {
    private int errorCode;
    private String message;

    public VireoNativeException(int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.message = "Vireo: Exception thrown";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.message = "Vireo: No audio or video data";
            case Util.TYPE_OTHER /*3*/:
                this.message = "Vireo: Mismatch in input/output settings";
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                this.message = "Vireo: Mismatch in input/output sample count";
            case EbmlReader.TYPE_FLOAT /*5*/:
                this.message = "Vireo: Invalid arguments";
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                this.message = "Vireo: File not found";
            case C.ENCODING_DTS /*7*/:
                this.message = "Vireo: Native library not available";
            default:
                this.message = "Vireo: Unspecified error";
        }
    }

    public String toString() {
        return super.toString();
    }

    public String getMessage() {
        return super.getMessage() + ", errorCode : " + this.errorCode + ", message : " + this.message;
    }
}
