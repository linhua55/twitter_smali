.class public Lcom/twitter/model/core/bb;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/bb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/twitter/model/core/be;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/core/be;-><init>(Lcom/twitter/model/core/bc;)V

    sput-object v0, Lcom/twitter/model/core/bb;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/core/bd;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/twitter/model/core/bd;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/bb;->b:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/twitter/model/core/bd;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/bb;->c:Ljava/lang/String;

    .line 30
    iget-boolean v0, p1, Lcom/twitter/model/core/bd;->c:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/bb;->d:Z

    .line 31
    iget-boolean v0, p1, Lcom/twitter/model/core/bd;->d:Z

    iput-boolean v0, p0, Lcom/twitter/model/core/bb;->e:Z

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/core/bd;Lcom/twitter/model/core/bc;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/twitter/model/core/bb;-><init>(Lcom/twitter/model/core/bd;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    instance-of v2, p1, Lcom/twitter/model/core/bb;

    if-eqz v2, :cond_3

    .line 40
    check-cast p1, Lcom/twitter/model/core/bb;

    .line 41
    iget-object v2, p0, Lcom/twitter/model/core/bb;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/model/core/bb;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/twitter/model/core/bb;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/model/core/bb;->c:Ljava/lang/String;

    .line 42
    invoke-static {v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/twitter/model/core/bb;->d:Z

    iget-boolean v3, p1, Lcom/twitter/model/core/bb;->d:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/twitter/model/core/bb;->e:Z

    iget-boolean v3, p1, Lcom/twitter/model/core/bb;->e:Z

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/model/core/bb;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v0

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/core/bb;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/twitter/model/core/bb;->d:Z

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/twitter/model/core/bb;->e:Z

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    return v0
.end method
