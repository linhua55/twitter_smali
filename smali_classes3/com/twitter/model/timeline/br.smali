.class public Lcom/twitter/model/timeline/br;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/timeline/br;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/twitter/model/timeline/NotificationType;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/model/timeline/bt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/timeline/bt;-><init>(Lcom/twitter/model/timeline/bs;)V

    sput-object v0, Lcom/twitter/model/timeline/br;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/timeline/NotificationType;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/twitter/model/timeline/br;->b:Lcom/twitter/model/timeline/NotificationType;

    .line 51
    iput-object p2, p0, Lcom/twitter/model/timeline/br;->c:Ljava/lang/String;

    .line 52
    iput-wide p3, p0, Lcom/twitter/model/timeline/br;->d:J

    .line 53
    iput-wide p5, p0, Lcom/twitter/model/timeline/br;->e:J

    .line 54
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/br;)Z
    .locals 4

    .prologue
    .line 62
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/br;->b:Lcom/twitter/model/timeline/NotificationType;

    iget-object v1, p1, Lcom/twitter/model/timeline/br;->b:Lcom/twitter/model/timeline/NotificationType;

    .line 63
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/br;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/timeline/br;->c:Ljava/lang/String;

    .line 64
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/timeline/br;->d:J

    iget-wide v2, p1, Lcom/twitter/model/timeline/br;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/twitter/model/timeline/br;->e:J

    iget-wide v2, p1, Lcom/twitter/model/timeline/br;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 58
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/model/timeline/br;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/timeline/br;

    invoke-virtual {p0, p1}, Lcom/twitter/model/timeline/br;->a(Lcom/twitter/model/timeline/br;)Z

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
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/model/timeline/br;->b:Lcom/twitter/model/timeline/NotificationType;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v0

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/twitter/model/timeline/br;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/twitter/util/object/ObjectUtils;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/twitter/model/timeline/br;->d:J

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/twitter/model/timeline/br;->e:J

    invoke-static {v2, v3}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    return v0
.end method
