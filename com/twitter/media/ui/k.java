package com.twitter.media.ui;

import defpackage.crv;

/* compiled from: Twttr */
public final class k {
    public static final int[] AspectRatioFrameLayout;
    public static final int AspectRatioFrameLayout_aspect_ratio = 0;
    public static final int AspectRatioFrameLayout_max_aspect_ratio = 2;
    public static final int AspectRatioFrameLayout_max_height = 4;
    public static final int AspectRatioFrameLayout_max_width = 3;
    public static final int AspectRatioFrameLayout_min_aspect_ratio = 1;
    public static final int AspectRatioFrameLayout_scaleMode = 5;
    public static final int[] BackgroundImageView;
    public static final int BackgroundImageView_crossfadeDuration = 1;
    public static final int BackgroundImageView_filterColor = 3;
    public static final int BackgroundImageView_filterMaxOpacity = 2;
    public static final int BackgroundImageView_overlayDrawable = 0;
    public static final int[] BaseMediaImageView;
    public static final int BaseMediaImageView_defaultDrawable = 0;
    public static final int BaseMediaImageView_errorDrawable = 1;
    public static final int BaseMediaImageView_imageType = 2;
    public static final int BaseMediaImageView_scaleType = 4;
    public static final int BaseMediaImageView_updateOnResize = 3;
    public static final int[] FixedSizeImageView;
    public static final int FixedSizeImageView_fixedSize = 0;
    public static final int[] MediaImageView;
    public static final int MediaImageView_fadeIn = 0;
    public static final int MediaImageView_loadingProgressBar = 3;
    public static final int MediaImageView_scaleFactor = 2;
    public static final int MediaImageView_singleImageView = 1;
    public static final int[] RichImageView;
    public static final int RichImageView_cornerRadius = 0;
    public static final int RichImageView_cornerRadiusBottomLeft = 4;
    public static final int RichImageView_cornerRadiusBottomRight = 5;
    public static final int RichImageView_cornerRadiusTopLeft = 2;
    public static final int RichImageView_cornerRadiusTopRight = 3;
    public static final int RichImageView_overlayDrawable = 1;
    public static final int[] SVGImageView;
    public static final int SVGImageView_svg = 0;

    static {
        AspectRatioFrameLayout = new int[]{crv.aspect_ratio, crv.min_aspect_ratio, crv.max_aspect_ratio, crv.max_width, crv.max_height, crv.scaleMode};
        BackgroundImageView = new int[]{crv.overlayDrawable, crv.crossfadeDuration, crv.filterMaxOpacity, crv.filterColor};
        BaseMediaImageView = new int[]{crv.defaultDrawable, crv.errorDrawable, crv.imageType, crv.updateOnResize, crv.scaleType};
        int[] iArr = new int[RichImageView_overlayDrawable];
        iArr[RichImageView_cornerRadius] = crv.fixedSize;
        FixedSizeImageView = iArr;
        MediaImageView = new int[]{crv.fadeIn, crv.singleImageView, crv.scaleFactor, crv.loadingProgressBar};
        RichImageView = new int[]{crv.cornerRadius, crv.overlayDrawable, crv.cornerRadiusTopLeft, crv.cornerRadiusTopRight, crv.cornerRadiusBottomLeft, crv.cornerRadiusBottomRight};
        iArr = new int[RichImageView_overlayDrawable];
        iArr[RichImageView_cornerRadius] = crv.svg;
        SVGImageView = iArr;
    }
}
