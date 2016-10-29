.class public Lcom/twitter/model/timeline/aa;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/d",
            "<",
            "Lcom/twitter/model/timeline/aa;",
            "Lcom/twitter/model/timeline/ac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/twitter/model/timeline/al;

.field public final d:Ljava/util/List;
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
    .line 21
    new-instance v0, Lcom/twitter/model/timeline/ad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/timeline/ad;-><init>(Lcom/twitter/model/timeline/ab;)V

    sput-object v0, Lcom/twitter/model/timeline/aa;->a:Lcom/twitter/util/serialization/d;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/timeline/ac;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lcom/twitter/model/timeline/ac;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/aa;->b:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/twitter/model/timeline/ac;->b:Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/model/timeline/aa;->c:Lcom/twitter/model/timeline/al;

    .line 53
    iget-object v0, p1, Lcom/twitter/model/timeline/ac;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/aa;->d:Ljava/util/List;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/ac;Lcom/twitter/model/timeline/ab;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/twitter/model/timeline/aa;-><init>(Lcom/twitter/model/timeline/ac;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/aa;)Z
    .locals 2

    .prologue
    .line 36
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/aa;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/timeline/aa;->b:Ljava/lang/String;

    .line 37
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/aa;->c:Lcom/twitter/model/timeline/al;

    iget-object v1, p1, Lcom/twitter/model/timeline/aa;->c:Lcom/twitter/model/timeline/al;

    .line 38
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/aa;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/twitter/model/timeline/aa;->d:Ljava/util/List;

    .line 39
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 32
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/model/timeline/aa;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/timeline/aa;

    invoke-virtual {p0, p1}, Lcom/twitter/model/timeline/aa;->a(Lcom/twitter/model/timeline/aa;)Z

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
    .line 44
    iget-object v0, p0, Lcom/twitter/model/timeline/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v0

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/timeline/aa;->c:Lcom/twitter/model/timeline/al;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/timeline/aa;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    return v0
.end method
