.class final Lcom/twitter/database/generated/ag;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbbw;


# instance fields
.field private final a:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/af;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/ag;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 182
    iget-object v0, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 197
    iget-object v1, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 219
    iget-object v1, p0, Lcom/twitter/database/generated/ag;->a:Landroid/database/Cursor;

    const/16 v2, 0xd

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
