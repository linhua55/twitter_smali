.class public Lcom/twitter/model/timeline/o;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/d",
            "<",
            "Lcom/twitter/model/timeline/o;",
            "Lcom/twitter/model/timeline/q;",
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
    new-instance v0, Lcom/twitter/model/timeline/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/timeline/r;-><init>(Lcom/twitter/model/timeline/p;)V

    sput-object v0, Lcom/twitter/model/timeline/o;->a:Lcom/twitter/util/serialization/d;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/timeline/q;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget-object v0, p1, Lcom/twitter/model/timeline/q;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/timeline/o;->b:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/twitter/model/timeline/q;->b:Lcom/twitter/model/timeline/al;

    iput-object v0, p0, Lcom/twitter/model/timeline/o;->c:Lcom/twitter/model/timeline/al;

    .line 33
    iget-object v0, p1, Lcom/twitter/model/timeline/q;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/timeline/o;->d:Ljava/util/List;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/timeline/q;Lcom/twitter/model/timeline/p;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/twitter/model/timeline/o;-><init>(Lcom/twitter/model/timeline/q;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/o;)Z
    .locals 2

    .prologue
    .line 42
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/o;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/timeline/o;->b:Ljava/lang/String;

    .line 43
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/o;->c:Lcom/twitter/model/timeline/al;

    iget-object v1, p1, Lcom/twitter/model/timeline/o;->c:Lcom/twitter/model/timeline/al;

    .line 44
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/o;->d:Ljava/util/List;

    iget-object v1, p1, Lcom/twitter/model/timeline/o;->d:Ljava/util/List;

    .line 45
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/model/timeline/o;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/timeline/o;

    invoke-virtual {p0, p1}, Lcom/twitter/model/timeline/o;->a(Lcom/twitter/model/timeline/o;)Z

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
    .line 50
    iget-object v0, p0, Lcom/twitter/model/timeline/o;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v0

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/timeline/o;->c:Lcom/twitter/model/timeline/al;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/timeline/o;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    return v0
.end method
