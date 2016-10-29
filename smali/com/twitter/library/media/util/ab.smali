.class public Lcom/twitter/library/media/util/ab;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static b:Lcom/twitter/library/media/util/ab;


# instance fields
.field a:Ljava/util/Set;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/twitter/library/media/util/ac;

    invoke-direct {v0, p0}, Lcom/twitter/library/media/util/ac;-><init>(Lcom/twitter/library/media/util/ab;)V

    invoke-static {v0}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 52
    return-void
.end method

.method public static a()Lcom/twitter/library/media/util/ab;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/twitter/library/media/util/ab;

    invoke-static {v0}, Lcvp;->a(Ljava/lang/Class;)V

    .line 32
    sget-object v0, Lcom/twitter/library/media/util/ab;->b:Lcom/twitter/library/media/util/ab;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/twitter/library/media/util/ab;

    invoke-direct {v0}, Lcom/twitter/library/media/util/ab;-><init>()V

    sput-object v0, Lcom/twitter/library/media/util/ab;->b:Lcom/twitter/library/media/util/ab;

    .line 36
    :cond_0
    sget-object v0, Lcom/twitter/library/media/util/ab;->b:Lcom/twitter/library/media/util/ab;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/library/media/util/ab;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/twitter/library/media/util/ab;->b()V

    return-void
.end method

.method public static a(Lcom/twitter/model/core/MediaEntity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 102
    if-eqz p0, :cond_0

    const-string/jumbo v0, "ad_formats_snapreel_enabled"

    .line 103
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p0}, Lcug;->a(Lcom/twitter/model/core/MediaEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/twitter/library/media/util/ab;->a()Lcom/twitter/library/media/util/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/util/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/twitter/model/core/Tweet;)Z
    .locals 2

    .prologue
    .line 88
    if-eqz p0, :cond_0

    const-string/jumbo v0, "ad_formats_snapreel_enabled"

    .line 89
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/twitter/model/core/Tweet;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/twitter/library/media/util/ab;->a()Lcom/twitter/library/media/util/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/core/Tweet;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/util/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/media/util/ab;->a:Ljava/util/Set;

    .line 75
    const-string/jumbo v0, "ad_formats_snapreel_sources"

    invoke-static {v0}, Lcom/twitter/config/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lcom/twitter/library/media/util/ab;->a:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 70
    :goto_0
    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/util/ab;->a:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/twitter/library/media/util/ab;->b()V

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 65
    iget-object v0, p0, Lcom/twitter/library/media/util/ab;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 70
    goto :goto_0
.end method
