.class public Lcom/twitter/library/util/g;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/library/util/g;


# instance fields
.field private final b:Z


# direct methods
.method constructor <init>()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v0, "android_night_mode_4656"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "theme_switch_enabled"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/util/g;->b:Z

    .line 42
    return-void
.end method

.method public static a()Lcom/twitter/library/util/g;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/twitter/library/util/g;->a:Lcom/twitter/library/util/g;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/twitter/library/util/g;

    invoke-direct {v0}, Lcom/twitter/library/util/g;-><init>()V

    sput-object v0, Lcom/twitter/library/util/g;->a:Lcom/twitter/library/util/g;

    .line 35
    :cond_0
    sget-object v0, Lcom/twitter/library/util/g;->a:Lcom/twitter/library/util/g;

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;)Z
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 89
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/twitter/app/common/base/h;)V
    .locals 4

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/twitter/library/util/g;->b:Z

    if-eqz v0, :cond_2

    .line 66
    invoke-interface {p2}, Lcom/twitter/app/common/base/h;->F()Lauy;

    move-result-object v0

    invoke-virtual {v0}, Lauy;->a()Z

    move-result v0

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/util/g;->a(Landroid/content/res/Resources;)Z

    move-result v1

    .line 68
    sget v2, Lbjt;->text:I

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 69
    sget v3, Lbjt;->white:I

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 70
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-eq v2, v3, :cond_2

    .line 76
    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 77
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lauy;->a(Landroid/content/res/Configuration;Z)V

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 81
    :cond_2
    return-void
.end method

.method public a(Lcom/twitter/app/common/base/h;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 45
    iget-boolean v1, p0, Lcom/twitter/library/util/g;->b:Z

    if-eqz v1, :cond_1

    .line 46
    invoke-interface {p1}, Lcom/twitter/app/common/base/h;->F()Lauy;

    move-result-object v1

    invoke-virtual {v1}, Lauy;->a()Z

    move-result v1

    .line 47
    invoke-interface {p1}, Lcom/twitter/app/common/base/h;->aj_()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 48
    :cond_0
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AppCompatDelegate;->setLocalNightMode(I)V

    .line 53
    :goto_0
    invoke-interface {p1}, Lcom/twitter/app/common/base/h;->aj_()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->applyDayNight()Z

    .line 54
    return-void

    .line 50
    :cond_1
    invoke-interface {p1}, Lcom/twitter/app/common/base/h;->F()Lauy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lauy;->a(Z)V

    .line 51
    invoke-interface {p1}, Lcom/twitter/app/common/base/h;->aj_()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDelegate;->setLocalNightMode(I)V

    goto :goto_0
.end method

.method public final b(Lcom/twitter/app/common/base/h;)V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/twitter/library/util/g;->b:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {p1}, Lcom/twitter/app/common/base/h;->F()Lauy;

    move-result-object v0

    invoke-virtual {v0}, Lauy;->a()Z

    move-result v0

    .line 59
    invoke-interface {p1}, Lcom/twitter/app/common/base/h;->F()Lauy;

    move-result-object v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lauy;->a(Z)V

    .line 61
    :cond_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/twitter/library/util/g;->b:Z

    return v0
.end method
