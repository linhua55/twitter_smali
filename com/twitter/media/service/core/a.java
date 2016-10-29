package com.twitter.media.service.core;

import com.twitter.media.NativeCrashHandler.CrashType;

/* compiled from: Twttr */
class a implements com.twitter.media.a {
    final /* synthetic */ MediaService a;

    a(MediaService mediaService) {
        this.a = mediaService;
    }

    public void a(CrashType crashType, String str) {
        if (crashType == CrashType.a) {
            MediaService.a = "Assertion failed: " + str;
        } else {
            MediaService.a = "Fatal error: " + str;
        }
    }
}
