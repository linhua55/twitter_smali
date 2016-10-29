.class public Lcom/twitter/android/timeline/br;
.super Lcme;
.source "Twttr"

# interfaces
.implements Lcmd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Lcom/twitter/android/timeline/bp;",
        ">;",
        "Lcmd;"
    }
.end annotation


# static fields
.field private static final a:Lcom/twitter/android/timeline/br;


# instance fields
.field private final b:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    new-instance v0, Lcom/twitter/android/timeline/br;

    invoke-direct {v0, v1, v1}, Lcom/twitter/android/timeline/br;-><init>(Landroid/database/Cursor;Lcmv;)V

    sput-object v0, Lcom/twitter/android/timeline/br;->a:Lcom/twitter/android/timeline/br;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Lcmv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcmv",
            "<",
            "Lcom/twitter/android/timeline/bp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcme;-><init>(Landroid/database/Cursor;Lcmv;)V

    .line 47
    iput-object p1, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    .line 48
    return-void
.end method

.method private a(III)I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 180
    :cond_0
    return p3
.end method

.method private a(IIJ)J
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 164
    :cond_0
    return-wide p3
.end method

.method private a(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 173
    :cond_0
    return-object p3
.end method

.method public static b()Lcom/twitter/android/timeline/br;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/twitter/android/timeline/br;->a:Lcom/twitter/android/timeline/br;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    return-object v0
.end method

.method public b(I)J
    .locals 4

    .prologue
    .line 111
    const/16 v0, 0x17

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/twitter/android/timeline/br;->a(IIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)J
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/twitter/android/timeline/br;->a(IIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(I)J
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/twitter/android/timeline/be;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget v0, Lchj;->b:I

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/twitter/android/timeline/br;->a(IIJ)J

    move-result-wide v0

    .line 127
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/br;->b(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public d()Lcom/twitter/android/timeline/cp;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/twitter/android/timeline/be;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 79
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v1, v2

    .line 67
    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/timeline/br;->bb_()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 68
    sget v0, Lchj;->e:I

    invoke-direct {p0, v1, v0, v2}, Lcom/twitter/android/timeline/br;->a(III)I

    move-result v0

    .line 69
    const/16 v4, 0xe

    if-ne v0, v4, :cond_2

    .line 70
    invoke-virtual {p0, v1}, Lcom/twitter/android/timeline/br;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 71
    instance-of v4, v0, Lcom/twitter/android/timeline/cp;

    if-eqz v4, :cond_2

    .line 72
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/cp;

    .line 73
    iget-object v4, v0, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget v4, v4, Lcom/twitter/model/timeline/dd;->c:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 67
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 79
    goto :goto_0
.end method

.method public d_(I)Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/twitter/android/timeline/cp;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/twitter/android/timeline/be;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/timeline/br;->bb_()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 92
    sget v0, Lchj;->e:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/twitter/android/timeline/br;->a(III)I

    move-result v0

    .line 93
    const/16 v3, 0xe

    if-ne v0, v3, :cond_2

    .line 94
    invoke-virtual {p0, v2}, Lcom/twitter/android/timeline/br;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bp;

    .line 95
    instance-of v3, v0, Lcom/twitter/android/timeline/cp;

    if-eqz v3, :cond_2

    .line 96
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/cp;

    .line 97
    iget-object v3, v0, Lcom/twitter/android/timeline/cp;->a:Lcom/twitter/model/timeline/dd;

    iget v3, v3, Lcom/twitter/model/timeline/dd;->c:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 91
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 103
    goto :goto_0
.end method

.method public e(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    const/16 v2, 0x11

    invoke-direct {p0, p1, v2, v1}, Lcom/twitter/android/timeline/br;->a(III)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public f(I)Z
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/twitter/android/timeline/br;->d_(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/br;->b:Landroid/database/Cursor;

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g(I)I
    .locals 2

    .prologue
    .line 144
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/timeline/br;->a(III)I

    move-result v0

    return v0
.end method

.method public h(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 148
    const/16 v1, 0x10

    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/timeline/br;->a(III)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public i(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    sget v0, Lchj;->c:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/timeline/br;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public j(I)I
    .locals 2

    .prologue
    .line 157
    sget v0, Lchj;->g:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/timeline/br;->a(III)I

    move-result v0

    return v0
.end method
