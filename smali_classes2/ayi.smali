.class public Layi;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Layi;->a:I

    .line 94
    iput p2, p0, Layi;->b:I

    .line 95
    iput p3, p0, Layi;->c:I

    .line 97
    iput p4, p0, Layi;->d:I

    .line 98
    iput p5, p0, Layi;->e:I

    .line 99
    iput p6, p0, Layi;->f:I

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 104
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    check-cast p1, Layi;

    .line 106
    iget v1, p0, Layi;->a:I

    iget v2, p1, Layi;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Layi;->b:I

    iget v2, p1, Layi;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Layi;->c:I

    iget v2, p1, Layi;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Layi;->d:I

    iget v2, p1, Layi;->d:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Layi;->e:I

    iget v2, p1, Layi;->e:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Layi;->f:I

    iget v2, p1, Layi;->f:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Layi;->a:I

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Layi;->b:I

    add-int/2addr v0, v1

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Layi;->c:I

    add-int/2addr v0, v1

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Layi;->d:I

    add-int/2addr v0, v1

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Layi;->e:I

    add-int/2addr v0, v1

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Layi;->f:I

    add-int/2addr v0, v1

    .line 122
    return v0
.end method
