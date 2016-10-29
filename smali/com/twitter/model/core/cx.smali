.class public Lcom/twitter/model/core/cx;
.super Lcom/twitter/model/core/e;
.source "Twttr"


# static fields
.field public static final B:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/cx;",
            ">;"
        }
    .end annotation
.end field

.field public static final C:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/j",
            "<",
            "Lcom/twitter/model/core/cx;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public final F:Ljava/lang/String;

.field public G:I

.field public H:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/model/core/db;

    invoke-direct {v0}, Lcom/twitter/model/core/db;-><init>()V

    sput-object v0, Lcom/twitter/model/core/cx;->B:Lcom/twitter/util/serialization/ah;

    .line 20
    sget-object v0, Lcom/twitter/model/core/cx;->B:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/model/core/j;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/model/core/cx;->C:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method constructor <init>(Lcom/twitter/model/core/cy;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/twitter/model/core/e;-><init>(Lcom/twitter/model/core/f;)V

    .line 33
    iget-object v0, p1, Lcom/twitter/model/core/cy;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/twitter/model/core/cy;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lcom/twitter/model/core/cy;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    .line 36
    iget v0, p1, Lcom/twitter/model/core/cy;->A:I

    iput v0, p0, Lcom/twitter/model/core/cx;->G:I

    .line 37
    iget v0, p1, Lcom/twitter/model/core/cy;->B:I

    iput v0, p0, Lcom/twitter/model/core/cx;->H:I

    .line 38
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/twitter/model/core/e;->a(I)V

    .line 49
    iget v0, p0, Lcom/twitter/model/core/cx;->G:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/twitter/model/core/cx;->H:I

    if-ltz v0, :cond_0

    .line 50
    iget v0, p0, Lcom/twitter/model/core/cx;->G:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/model/core/cx;->G:I

    .line 51
    iget v0, p0, Lcom/twitter/model/core/cx;->H:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/model/core/cx;->H:I

    .line 53
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/cx;)Z
    .locals 2

    .prologue
    .line 62
    if-eq p0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/twitter/model/core/e;->a(Lcom/twitter/model/core/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public synthetic b()Lcom/twitter/model/core/f;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/twitter/model/core/cx;->e()Lcom/twitter/model/core/cy;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/core/cy;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/twitter/model/core/da;

    invoke-direct {v0, p0}, Lcom/twitter/model/core/da;-><init>(Lcom/twitter/model/core/cx;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 57
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/model/core/cx;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/core/cx;

    invoke-virtual {p0, p1}, Lcom/twitter/model/core/cx;->a(Lcom/twitter/model/core/cx;)Z

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
    .line 67
    invoke-super {p0}, Lcom/twitter/model/core/e;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/core/cx;->D:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    return-object v0
.end method
