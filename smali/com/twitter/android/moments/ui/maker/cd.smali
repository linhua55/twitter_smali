.class public Lcom/twitter/android/moments/ui/maker/cd;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/cd;->a:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/twitter/android/moments/ui/maker/cd;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/twitter/android/moments/ui/maker/cd;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/maker/cd;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cd;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "moment_maker_debug_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cd;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "moment_maker_cover_place_holder_debug_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
