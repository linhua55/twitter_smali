.class public Larm;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Larm;->a:I

    .line 8
    iput-boolean v0, p0, Larm;->b:Z

    return-void
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lcom/twitter/model/core/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x2

    .line 18
    :goto_0
    return v0

    .line 15
    :cond_0
    invoke-static {p0}, Lcom/twitter/model/core/p;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    const/4 v0, 0x1

    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)I
    .locals 1

    .prologue
    .line 22
    .line 23
    invoke-static {p0}, Larm;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    and-int/lit8 v0, p1, -0x11

    .line 25
    and-int/lit16 p1, v0, -0x801

    .line 33
    :cond_0
    :goto_0
    return p1

    .line 26
    :cond_1
    invoke-static {p0}, Larm;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    and-int/lit16 v0, p1, -0x801

    .line 28
    or-int/lit8 p1, v0, 0x10

    goto :goto_0

    .line 29
    :cond_2
    invoke-static {p0}, Larm;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    or-int/lit16 v0, p1, 0x800

    .line 31
    and-int/lit8 p1, v0, -0x11

    goto :goto_0
.end method

.method private static c(I)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 71
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(I)Z
    .locals 1

    .prologue
    .line 75
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(I)Z
    .locals 1

    .prologue
    .line 79
    invoke-static {p0}, Larm;->d(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Larm;->a:I

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 37
    iput p1, p0, Larm;->a:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Larm;->b:Z

    .line 39
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Larm;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Larm;->a:I

    invoke-static {v0}, Larm;->c(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Larm;->a:I

    invoke-static {v0}, Larm;->e(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Larm;->a:I

    invoke-static {v0}, Larm;->f(I)Z

    move-result v0

    return v0
.end method
