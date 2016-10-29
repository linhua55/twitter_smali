.class public Lcom/twitter/model/core/aj;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/aj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/twitter/model/core/al;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/core/al;-><init>(Lcom/twitter/model/core/ak;)V

    sput-object v0, Lcom/twitter/model/core/aj;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/twitter/model/core/aj;->b:J

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 32
    instance-of v0, p1, Lcom/twitter/model/core/aj;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/twitter/model/core/aj;

    iget-wide v0, p1, Lcom/twitter/model/core/aj;->b:J

    iget-wide v2, p0, Lcom/twitter/model/core/aj;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/twitter/model/core/aj;->b:J

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v0

    return v0
.end method
