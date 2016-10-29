.class public Lcbe;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcbe;


# instance fields
.field private final b:Z

.field private final c:Z


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, "timeline_curation_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "timeline_curation_android_caret_menu_4978"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "caret_only_menu"

    aput-object v4, v3, v2

    const-string/jumbo v4, "caret_and_long_press_menu"

    aput-object v4, v3, v1

    .line 38
    invoke-static {v0, v3}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcbe;->b:Z

    .line 40
    iget-boolean v0, p0, Lcbe;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "timeline_curation_android_caret_menu_4978"

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "caret_and_long_press_menu"

    aput-object v4, v3, v2

    .line 41
    invoke-static {v0, v3}, Lcom/twitter/config/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcbe;->c:Z

    .line 43
    return-void

    :cond_2
    move v0, v2

    .line 38
    goto :goto_0
.end method

.method public static a()Lcbe;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 24
    sget-object v0, Lcbe;->a:Lcbe;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcbe;

    invoke-direct {v0}, Lcbe;-><init>()V

    sput-object v0, Lcbe;->a:Lcbe;

    .line 27
    :cond_0
    sget-object v0, Lcbe;->a:Lcbe;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcbe;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcbe;->c:Z

    return v0
.end method
