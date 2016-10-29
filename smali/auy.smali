.class public Lauy;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lauy;->a:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method

.method public static a(Landroid/content/res/Configuration;Z)V
    .locals 2

    .prologue
    .line 46
    if-eqz p1, :cond_0

    const/16 v0, 0x20

    .line 47
    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 48
    return-void

    .line 46
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lauy;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_night_mode_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lauy;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_night_mode_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
