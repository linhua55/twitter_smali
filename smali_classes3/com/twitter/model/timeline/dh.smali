.class public Lcom/twitter/model/timeline/dh;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/d",
            "<",
            "Lcom/twitter/model/timeline/dh;",
            "Lcom/twitter/model/timeline/di;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/twitter/model/timeline/al;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterSocialProof;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/timeline/al;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/model/timeline/dj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/timeline/dj;-><init>(Lcom/twitter/model/timeline/dg;)V

    sput-object v0, Lcom/twitter/model/timeline/dh;->a:Lcom/twitter/util/serialization/d;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/timeline/di;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget v0, p1, Lcom/twitter/model/timeline/di;->a:I

    iput v0, p0, Lcom/twitter/model/timeline/dh;->b:I

    .line 54
    iget-object v0, p1, Lcom/twitter/model/timeline/di;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/dh;->c:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/twitter/model/timeline/di;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/dh;->d:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/twitter/model/timeline/di;->d:Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/model/timeline/dh;->e:Lcom/twitter/model/timeline/al;

    .line 57
    iget-object v0, p1, Lcom/twitter/model/timeline/di;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/dh;->f:Ljava/util/Map;

    .line 58
    iget-object v0, p1, Lcom/twitter/model/timeline/di;->f:Ljava/util/Map;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/dh;->g:Ljava/util/Map;

    .line 59
    iget-object v0, p1, Lcom/twitter/model/timeline/di;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/dh;->h:Ljava/util/List;

    .line 60
    iget-object v0, p1, Lcom/twitter/model/timeline/di;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/dh;->i:Ljava/util/List;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/di;Lcom/twitter/model/timeline/dg;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/twitter/model/timeline/dh;-><init>(Lcom/twitter/model/timeline/di;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/dh;)Z
    .locals 2

    .prologue
    .line 69
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/twitter/model/timeline/dh;->b:I

    iget v1, p1, Lcom/twitter/model/timeline/dh;->b:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/dh;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/timeline/dh;->c:Ljava/lang/String;

    .line 71
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/dh;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/timeline/dh;->d:Ljava/lang/String;

    .line 72
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/dh;->h:Ljava/util/List;

    iget-object v1, p1, Lcom/twitter/model/timeline/dh;->h:Ljava/util/List;

    .line 73
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/dh;->i:Ljava/util/List;

    iget-object v1, p1, Lcom/twitter/model/timeline/dh;->i:Ljava/util/List;

    .line 74
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/dh;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/twitter/model/timeline/dh;->f:Ljava/util/Map;

    .line 75
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/model/timeline/dh;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/timeline/dh;

    invoke-virtual {p0, p1}, Lcom/twitter/model/timeline/dh;->a(Lcom/twitter/model/timeline/dh;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/twitter/model/timeline/dh;->b:I

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/timeline/dh;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/timeline/dh;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/timeline/dh;->h:Ljava/util/List;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/timeline/dh;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/timeline/dh;->f:Ljava/util/Map;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    return v0
.end method
