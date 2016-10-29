package com.twitter.media.util;

import android.media.ExifInterface;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class h extends ExifInterface {
    private final HashMap<String, String> a;

    public h(String str, boolean z) throws IOException {
        super(str);
        this.a = new HashMap(45);
        if (z) {
            a();
        }
    }

    public void a(ImageOrientation imageOrientation) {
        setAttribute("Orientation", String.valueOf(imageOrientation.exifOrientation));
    }

    public void a() {
        HashMap hashMap = this.a;
        hashMap.clear();
        hashMap.put("FNumber", super.getAttribute("FNumber"));
        hashMap.put("ExposureTime", super.getAttribute("ExposureTime"));
        hashMap.put("ISOSpeedRatings", super.getAttribute("ISOSpeedRatings"));
        hashMap.put("GPSAltitude", super.getAttribute("GPSAltitude"));
        hashMap.put("GPSAltitudeRef", super.getAttribute("GPSAltitudeRef"));
        hashMap.put("DateTime", super.getAttribute("DateTime"));
        hashMap.put("Flash", super.getAttribute("Flash"));
        hashMap.put("FocalLength", super.getAttribute("FocalLength"));
        hashMap.put("GPSDateStamp", super.getAttribute("GPSDateStamp"));
        hashMap.put("GPSLatitude", super.getAttribute("GPSLatitude"));
        hashMap.put("GPSLatitudeRef", super.getAttribute("GPSLatitudeRef"));
        hashMap.put("GPSLongitude", super.getAttribute("GPSLongitude"));
        hashMap.put("GPSLongitudeRef", super.getAttribute("GPSLongitudeRef"));
        hashMap.put("GPSProcessingMethod", super.getAttribute("GPSProcessingMethod"));
        hashMap.put("GPSTimeStamp", super.getAttribute("GPSTimeStamp"));
        hashMap.put("ImageLength", super.getAttribute("ImageLength"));
        hashMap.put("ImageWidth", super.getAttribute("ImageWidth"));
        hashMap.put("Make", super.getAttribute("Make"));
        hashMap.put("Model", super.getAttribute("Model"));
        hashMap.put("Orientation", super.getAttribute("Orientation"));
        hashMap.put("WhiteBalance", super.getAttribute("WhiteBalance"));
        hashMap.put("ExposureBiasValue", super.getAttribute("ExposureBiasValue"));
        hashMap.put("DateTimeOriginal", super.getAttribute("DateTimeOriginal"));
        hashMap.put("FocalLengthIn35mmFilm", super.getAttribute("FocalLengthIn35mmFilm"));
        hashMap.put("ShutterSpeedValue", super.getAttribute("ShutterSpeedValue"));
        hashMap.put("SubjectDistance", super.getAttribute("SubjectDistance"));
        hashMap.put("SubjectDistanceRange", super.getAttribute("SubjectDistanceRange"));
        hashMap.put("LightSource", super.getAttribute("LightSource"));
        hashMap.put("MeteringMode", super.getAttribute("MeteringMode"));
        hashMap.put("ExposureProgram", super.getAttribute("ExposureProgram"));
        hashMap.put("ExposureMode", super.getAttribute("ExposureMode"));
        hashMap.put("DigitalZoomRatio", super.getAttribute("DigitalZoomRatio"));
        hashMap.put("CompressedBitsPerPixel", super.getAttribute("CompressedBitsPerPixel"));
        hashMap.put("Copyright", super.getAttribute("Copyright"));
        hashMap.put("Software", super.getAttribute("Software"));
        hashMap.put("Artist", super.getAttribute("Artist"));
        hashMap.put("UserComment", super.getAttribute("UserComment"));
        hashMap.put("ResolutionUnit", super.getAttribute("ResolutionUnit"));
        hashMap.put("XResolution", super.getAttribute("XResolution"));
        hashMap.put("YResolution", super.getAttribute("YResolution"));
        hashMap.put("BrightnessValue", super.getAttribute("BrightnessValue"));
        hashMap.put("FileDateTime", super.getAttribute("FileDateTime"));
    }

    public String getAttribute(String str) {
        return (String) this.a.get(str);
    }

    public void setAttribute(String str, String str2) {
        if (str != null && str2 != null) {
            this.a.put(str, str2.trim());
        }
    }

    public void a(h hVar) {
        this.a.clear();
        this.a.putAll(hVar.a);
    }

    public void saveAttributes() throws IOException {
        for (Entry entry : this.a.entrySet()) {
            String str = (String) entry.getValue();
            if (str != null) {
                super.setAttribute((String) entry.getKey(), str);
            }
        }
        super.saveAttributes();
    }
}
