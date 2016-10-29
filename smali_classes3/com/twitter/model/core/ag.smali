.class public Lcom/twitter/model/core/ag;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/ag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/twitter/model/core/ai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/core/ai;-><init>(Lcom/twitter/model/core/ah;)V

    sput-object v0, Lcom/twitter/model/core/ag;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lcom/twitter/model/core/ag;->b:Z

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 32
    instance-of v0, p1, Lcom/twitter/model/core/ag;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/twitter/model/core/ag;

    iget-boolean v0, p1, Lcom/twitter/model/core/ag;->b:Z

    iget-boolean v1, p0, Lcom/twitter/model/core/ag;->b:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/twitter/model/core/ag;->b:Z

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Z)I

    move-result v0

    return v0
.end method
