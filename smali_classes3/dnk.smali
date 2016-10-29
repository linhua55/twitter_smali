.class final Ldnk;
.super Ldnv;
.source "Twttr"


# instance fields
.field private final a:F

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldnx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(FJJJLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FJJJ",
            "Ljava/util/List",
            "<",
            "Ldnx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ldnv;-><init>()V

    .line 22
    iput p1, p0, Ldnk;->a:F

    .line 23
    iput-wide p2, p0, Ldnk;->b:J

    .line 24
    iput-wide p4, p0, Ldnk;->c:J

    .line 25
    iput-wide p6, p0, Ldnk;->d:J

    .line 26
    if-nez p8, :cond_0

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null id3Tags"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iput-object p8, p0, Ldnk;->e:Ljava/util/List;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(FJJJLjava/util/List;Ldnl;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p8}, Ldnk;-><init>(FJJJLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Ldnk;->a:F

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Ldnk;->b:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Ldnk;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Ldnk;->d:J

    return-wide v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldnx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Ldnk;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    instance-of v2, p1, Ldnv;

    if-eqz v2, :cond_3

    .line 74
    check-cast p1, Ldnv;

    .line 75
    iget v2, p0, Ldnk;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Ldnv;->a()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Ldnk;->b:J

    .line 76
    invoke-virtual {p1}, Ldnv;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ldnk;->c:J

    .line 77
    invoke-virtual {p1}, Ldnv;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ldnk;->d:J

    .line 78
    invoke-virtual {p1}, Ldnv;->d()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Ldnk;->e:Ljava/util/List;

    .line 79
    invoke-virtual {p1}, Ldnv;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    const v6, 0xf4243

    .line 86
    .line 88
    iget v0, p0, Ldnk;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    xor-int/2addr v0, v6

    .line 89
    mul-int/2addr v0, v6

    .line 90
    int-to-long v0, v0

    iget-wide v2, p0, Ldnk;->b:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Ldnk;->b:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 91
    mul-int/2addr v0, v6

    .line 92
    int-to-long v0, v0

    iget-wide v2, p0, Ldnk;->c:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Ldnk;->c:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 93
    mul-int/2addr v0, v6

    .line 94
    int-to-long v0, v0

    iget-wide v2, p0, Ldnk;->d:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Ldnk;->d:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 95
    mul-int/2addr v0, v6

    .line 96
    iget-object v1, p0, Ldnk;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 97
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HighlightChunk{score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldnk;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "videoDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ldnk;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "audioDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ldnk;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ntpTimestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ldnk;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "id3Tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldnk;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
