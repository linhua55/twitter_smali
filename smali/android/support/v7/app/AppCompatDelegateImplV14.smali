.class Landroid/support/v7/app/AppCompatDelegateImplV14;
.super Landroid/support/v7/app/AppCompatDelegateImplV11;
.source "Twttr"


# static fields
.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"

.field private static sTwilightManager:Landroid/support/v7/app/TwilightManager;


# instance fields
.field private mApplyDayNightCalled:Z

.field private mHandleNativeActionModes:Z

.field private mLocalNightMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 35
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    .line 43
    return-void
.end method

.method private getNightModeToApply()I
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getDefaultNightMode()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->mapNightModeToYesNo(I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    goto :goto_0
.end method

.method private getTwilightManager()Landroid/support/v7/app/TwilightManager;
    .locals 2

    .prologue
    .line 172
    sget-object v0, Landroid/support/v7/app/AppCompatDelegateImplV14;->sTwilightManager:Landroid/support/v7/app/TwilightManager;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/support/v7/app/TwilightManager;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/TwilightManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v7/app/AppCompatDelegateImplV14;->sTwilightManager:Landroid/support/v7/app/TwilightManager;

    .line 175
    :cond_0
    sget-object v0, Landroid/support/v7/app/AppCompatDelegateImplV14;->sTwilightManager:Landroid/support/v7/app/TwilightManager;

    return-object v0
.end method

.method private mapNightModeToYesNo(I)I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 104
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 123
    :goto_0
    :pswitch_1
    return v1

    .line 106
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getTwilightManager()Landroid/support/v7/app/TwilightManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/TwilightManager;->isNight()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 108
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "uimode"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 110
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    move v1, v2

    .line 117
    goto :goto_0

    .line 114
    :pswitch_5
    const/4 v1, 0x0

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 110
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private updateConfigurationForNightMode(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 151
    iget v1, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v1, 0x30

    .line 154
    packed-switch p1, :pswitch_data_0

    move v1, v0

    .line 163
    :goto_0
    if-eq v4, v1, :cond_0

    .line 164
    iget v0, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    or-int/2addr v0, v1

    iput v0, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 165
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 166
    const/4 v0, 0x1

    .line 168
    :cond_0
    return v0

    .line 156
    :pswitch_0
    const/16 v1, 0x10

    .line 157
    goto :goto_0

    .line 159
    :pswitch_1
    const/16 v1, 0x20

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public applyDayNight()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    .line 77
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getNightModeToApply()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->updateConfigurationForNightMode(I)Z

    move-result v0

    return v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, -0x64

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onCreate(Landroid/os/Bundle;)V

    .line 49
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    if-ne v0, v1, :cond_0

    .line 52
    const-string/jumbo v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 55
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 133
    const-string/jumbo v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    :cond_0
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    .line 67
    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 2

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 97
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "setLocalNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    if-eq v0, p1, :cond_0

    .line 88
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 89
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    return-object v0
.end method
