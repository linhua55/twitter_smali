.class public final Lcom/twitter/android/composer/geotag/f;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method private static a(Landroid/content/Context;Lcom/twitter/android/widget/ToggleImageButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZZ)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcbz;->a()Lcca;

    move-result-object v0

    .line 86
    new-instance v3, Lbiv;

    invoke-direct {v3}, Lbiv;-><init>()V

    const-string/jumbo v4, "appLocationEnabled"

    .line 87
    invoke-interface {v0}, Lcca;->d()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    const-string/jumbo v4, "systemLocationEnabled"

    .line 88
    invoke-interface {v0}, Lcca;->e()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    const-string/jumbo v4, "webSettingsGeoTagEnabled"

    .line 90
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v5

    invoke-interface {v0, v5}, Lcca;->b(Lcom/twitter/library/client/Session;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 89
    invoke-virtual {v3, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    const-string/jumbo v4, "sessionNonNull"

    .line 91
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    const-string/jumbo v4, "googlePlayServicesEnabled"

    .line 92
    invoke-static {p0}, Lcom/twitter/library/platform/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "geo_data_provider_google_play_services_enabled"

    .line 93
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 92
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    const-string/jumbo v4, "geoTagNonNull"

    if-eqz p4, :cond_2

    move v0, v1

    .line 95
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    const-string/jumbo v4, "coordinateNonNull"

    if-eqz p4, :cond_3

    .line 96
    invoke-virtual {p4}, Lcom/twitter/model/geo/g;->b()Lcom/twitter/model/geo/d;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v3, "legacyGeoTagTextViewVisible"

    .line 98
    invoke-static {p2, p3, v2}, Lcom/twitter/android/composer/geotag/f;->a(Landroid/widget/TextView;Landroid/widget/TextView;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 97
    invoke-virtual {v0, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v3, "locationTextViewVisible"

    .line 101
    invoke-static {p2, p3, v1}, Lcom/twitter/android/composer/geotag/f;->a(Landroid/widget/TextView;Landroid/widget/TextView;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 100
    invoke-virtual {v0, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    const-string/jumbo v4, "legacyLocationTextSameAsPlaceName"

    if-eqz p4, :cond_4

    .line 104
    invoke-static {p2, p3, p4, p5, v2}, Lcom/twitter/android/composer/geotag/f;->a(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 103
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    const-string/jumbo v4, "locationTextSameAsPlaceName"

    if-eqz p4, :cond_5

    .line 107
    invoke-static {p2, p3, p4, p5, v1}, Lcom/twitter/android/composer/geotag/f;->a(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 106
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v3

    const-string/jumbo v4, "geoTagButtonVisible"

    if-eqz p1, :cond_6

    .line 110
    invoke-virtual {p1}, Lcom/twitter/android/widget/ToggleImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 109
    invoke-virtual {v3, v4, v0}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v3, "geoTagButtonToggledOn"

    if-eqz p1, :cond_7

    .line 112
    invoke-virtual {p1}, Lcom/twitter/android/widget/ToggleImageButton;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v3, v1}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v1, "isLifelineAlertActive"

    .line 113
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v1, "isPreciseGeoTagEnabled"

    .line 114
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    const-string/jumbo v1, "isInlinePlacePickerEnabled"

    .line 115
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Inconsistent geo tag state detected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 117
    return-void

    :cond_0
    move v0, v2

    .line 91
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 93
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 92
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 96
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 104
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 107
    goto :goto_5

    :cond_6
    move v0, v2

    .line 110
    goto :goto_6

    :cond_7
    move v1, v2

    .line 112
    goto :goto_7
.end method

.method static a(Landroid/content/Context;Lcca;Lcom/twitter/android/widget/ToggleImageButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZZ)Z
    .locals 9

    .prologue
    .line 67
    invoke-static/range {p1 .. p8}, Lcom/twitter/android/composer/geotag/f;->a(Lcca;Lcom/twitter/android/widget/ToggleImageButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZZ)Z

    move-result v8

    .line 69
    if-nez v8, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p7

    move v6, p6

    move/from16 v7, p8

    .line 70
    invoke-static/range {v0 .. v7}, Lcom/twitter/android/composer/geotag/f;->a(Landroid/content/Context;Lcom/twitter/android/widget/ToggleImageButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZZ)V

    .line 73
    :cond_0
    return v8
.end method

.method private static a(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    if-eqz p4, :cond_2

    .line 164
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Lcom/twitter/model/geo/g;->a()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v3

    iget-object v3, v3, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 164
    goto :goto_0

    .line 166
    :cond_2
    if-eqz p0, :cond_3

    if-nez p3, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2}, Lcom/twitter/model/geo/g;->a()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v3

    iget-object v3, v3, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/widget/TextView;Landroid/widget/TextView;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    if-eqz p2, :cond_2

    .line 154
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static a(Lcca;Lcom/twitter/android/widget/ToggleImageButton;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZZ)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    if-nez p4, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    invoke-static {p1}, Lcom/twitter/android/composer/geotag/f;->a(Lcom/twitter/android/widget/ToggleImageButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    invoke-static {p2, p3, p4, p6, p7}, Lcom/twitter/android/composer/geotag/f;->b(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 141
    :goto_1
    invoke-virtual {p4}, Lcom/twitter/model/geo/g;->b()Lcom/twitter/model/geo/d;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    if-eq v3, p5, :cond_5

    move v3, v1

    .line 143
    :goto_3
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v4

    .line 144
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {p0, v4}, Lcca;->a(Lcom/twitter/library/client/Session;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 137
    goto :goto_1

    :cond_4
    move v3, v2

    .line 141
    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_3
.end method

.method private static a(Lcom/twitter/android/widget/ToggleImageButton;)Z
    .locals 1

    .prologue
    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/ToggleImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/ToggleImageButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZ)Z
    .locals 1

    .prologue
    .line 174
    invoke-static {p0, p1, p4}, Lcom/twitter/android/composer/geotag/f;->a(Landroid/widget/TextView;Landroid/widget/TextView;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p0, p1, p2, p3, p4}, Lcom/twitter/android/composer/geotag/f;->a(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/twitter/model/geo/g;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
